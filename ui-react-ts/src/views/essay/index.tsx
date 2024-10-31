import { useEffect, useState, useRef, useCallback } from "react";
import { Table, Input, Button, Modal, Form, Space, Row, message, Popconfirm, Select, Col } from "antd";
import type { PaginationProps, GetProps } from "antd";
import { essayList, essayAdd, essayEdit, essayDelete, ttsGen } from "../../api/request";
import { PlusCircleOutlined, QuestionCircleOutlined, DeleteOutlined, SearchOutlined, EyeOutlined, EditOutlined } from "@ant-design/icons";
import { RequestEssayParams, RequestEssayData, RequestEssayDataDelete } from "../../types";
import { ContextVocabulary } from "../components/context";
import Tiptap from "../components/tiptap";
import TiptapWritePad from "../components/tiptap/writepad";
import Vocabulary from "./Vocabulary";

const { Column } = Table;
const { Search } = Input;
type SearchProps = GetProps<typeof Input.Search>;
const Essay: React.FC = () => {
    const [AddDialogVisible, setAddDialogVisible] = useState(false);
    const [WriteDialogVisible, setWriteDialogVisible] = useState(false);
    const [titleDialog, setTitleDialog] = useState("Add Essay");
    const [dataQueryParams, setDataQueryParams] = useState<RequestEssayParams>({ pageNo: 1, pageSize: 10 });
    const [dataTableListTotal, setDataTableListTotal] = useState(0);
    const [dataTableList, setDataTableList] = useState<RequestEssayData[]>([]);
    const [dataTableLoading, setDataTableLoading] = useState(false);
    const [dataTableCurrentRow, setDataTableCurrentRow] = useState<RequestEssayData>();
    const [dataEditorContent, setDataEditorContent] = useState<string>("");
    const [dataEditorContentWriteLastRight, setDataEditorContentWriteLastRight] = useState<string>("");
    const [dataEditorContentWriteLastWrong, setDataEditorContentWriteLastWrong] = useState<string>("");
    const [dataEditorContentWrite, setDataEditorContentWrite] = useState<string>("");
    const [dataEditorContentText, setDataEditorContentText] = useState<string>("");
    const [dataVocabularyContent, setDataVocabularyContent] = useState<string>("[]");
    const [messageApi, contextHolder] = message.useMessage();
    const refAudio = useRef<HTMLAudioElement>(null);
    const [form] = Form.useForm();
    const [random, setRandom] = useState<number>(Date.now());

    const getTableList = async (queryParams: RequestEssayParams) => {
        try {
            setDataTableLoading(true);
            const res = await essayList(queryParams);
            if (res.code) {
                setDataTableLoading(false);
                setDataTableListTotal(res.data.total);
                setDataTableList(res.data.list);
                setDataQueryParams(queryParams);
            }
        } catch (error) {
            if (error instanceof Error) {
                messageApi.destroy();
                messageApi.open({ type: "error", duration: 2, content: error.message });
            }
        }
    };
    const onChangePage: PaginationProps["onChange"] = (current, pageSize) => {
        getTableList({ ...dataQueryParams, pageNo: current, pageSize: pageSize });
    };
    const onSearch: SearchProps["onSearch"] = (value) => {
        getTableList({ ...dataQueryParams, keyword: `${value}` });
    };
    const onClickAdd = () => {
        setAddDialogVisible(true);
    };
    const onClickEdit = (record: RequestEssayData) => {
        const data = JSON.parse(JSON.stringify(record));
        const vocabulary = data.vocabulary ? data.vocabulary : "[]";
        console.log(data);
        setTitleDialog("Edit Essay");
        setAddDialogVisible(true);
        setDataEditorContent(data.content);
        setDataVocabularyContent(vocabulary);
        setRandom(Date.now());
        form.setFieldsValue(data);
    };
    const onClickWrite = (record: RequestEssayData) => {
        const data = JSON.parse(JSON.stringify(record));
        const contentFilter = data.content.replaceAll("</p>", " </p>");
        const div = document.createElement("div");
        div.innerHTML = contentFilter;
        setDataEditorContent(data.content);
        setDataEditorContentText(div.innerText);
        setWriteDialogVisible(true);
    };
    const onOkAddDialog = () => {
        form.validateFields()
            .then((fields) => {
                messageApi.open({ type: "loading", content: "Loading..", duration: 0 });
                const data: RequestEssayData = { title: `${fields.title}`, content: dataEditorContent };
                if (fields.id) data.id = fields.id;
                if (dataVocabularyContent) data.vocabulary = dataVocabularyContent;
                const promise = titleDialog === "Add Essay" ? essayAdd(data) : essayEdit(data);
                promise
                    .then(
                        (res) => {
                            if (res.code) {
                                messageApi.destroy();
                                messageApi.open({
                                    type: "success",
                                    content: "Success.",
                                    duration: 2,
                                    onClose: () => {
                                        setAddDialogVisible(false);
                                        setTitleDialog("Add Essay");
                                        setDataVocabularyContent("[]");
                                        form.resetFields();
                                        getTableList(dataQueryParams);
                                    },
                                });
                            }
                        },
                        (error) => {
                            if (error instanceof Error) {
                                messageApi.destroy();
                                messageApi.open({ type: "error", duration: 2, content: error.message });
                            }
                        }
                    )
                    .catch((error) => {
                        if (error instanceof Error) {
                            messageApi.destroy();
                            messageApi.open({ type: "error", duration: 2, content: error.message });
                        }
                    });
            })
            .catch((error) => {
                console.log(error);
            });
    };
    const onCancelAddDialog = () => {
        setTitleDialog("Add Essay");
        setAddDialogVisible(false);
        setDataEditorContent("");
        setDataVocabularyContent("[]");
        form.resetFields();
        messageApi.destroy();
    };
    const onCancelWriteDialog = () => {
        setDataEditorContent("");
        setDataEditorContentWrite("");
        setDataEditorContentWriteLastWrong("");
        setWriteDialogVisible(false);
    };
    const onConfirmDelete = async (id: number) => {
        try {
            messageApi.open({ type: "loading", content: "Loading..", duration: 0 });
            const data: RequestEssayDataDelete = { id: id };
            const res = await essayDelete(data);
            if (res.code) {
                messageApi.destroy();
                messageApi.open({
                    type: "success",
                    content: "Success.",
                    duration: 2,
                    onClose: () => {
                        getTableList({ ...dataQueryParams });
                    },
                });
            }
        } catch (error) {
            if (error instanceof Error) {
                messageApi.destroy();
                messageApi.open({ type: "error", duration: 2, content: error.message });
            }
        }
    };
    const onClickRow = (row: RequestEssayData) => {
        setDataTableCurrentRow(row);
    };
    const onChangeOrder = (value: string) => {
        getTableList({ ...dataQueryParams, orderType: `${value}` });
    };
    const getRowClassName = (record: RequestEssayData) => {
        return dataTableCurrentRow !== undefined && record.id === dataTableCurrentRow.id ? "clicked" : "";
    };
    const onChangeEditor = (content: string) => {
        setDataEditorContent(content);
    };
    const onChangeWriteEditor = (content: string) => {
        const pureInput = content.replace(/[^a-zA-Z'-]+/g, " ");
        // console.log("pureInput: ", pureInput);
        const pureContent = dataEditorContentText.replace(/[^a-zA-Z'-]+/g, " ");
        // console.log("pureContent: ", pureContent);
        const regex = new RegExp(`^${pureInput}`, "g");
        const res = pureContent.match(regex);
        if (res && res[0]) {
            console.log("Right");
            let con = content.replace(/\n+/g, "<br>");
            con = con.replace(/ /g, "&nbsp;");
            setDataEditorContentWriteLastRight(con);
            setDataEditorContentWrite(con);
        } else {
            console.log("Wrong!");
            setDataEditorContentWriteLastWrong(pureInput.slice(-50));
            setDataEditorContentWrite("");
        }
    };
    const onSelectEditor = async (content: string) => {
        try {
            console.log("content", content);
            if (content) {
                const res = await ttsGen({ content: content, type: 1 });
                if (res.code) {
                    if (refAudio.current) {
                        const audio = refAudio.current;
                        audio.src = "data:audio/wav;base64," + res.data;
                        audio.load();
                        audio.play();
                    }
                }
            }
        } catch (error) {
            if (error instanceof Error) {
                console.log(error);
            }
        }
    };
    const onChangeVocabulary = (content: string) => {
        setDataVocabularyContent(content);
    };
    useEffect(() => {
        getTableList(dataQueryParams);
    }, []); // eslint-disable-line
    useEffect(() => {
        if (!dataEditorContentWrite) setDataEditorContentWrite(dataEditorContentWriteLastRight);
    }, [dataEditorContentWrite]);

    console.log("Loaded");

    return (
        <div>
            {contextHolder}
            {/* prettier-ignore */}
            <Row className="title"><h4>Essay Management</h4></Row>
            <Row>
                <Space className="panel" style={{ marginBottom: "10px" }}>
                    {/* prettier-ignore */}
                    <Button onClick={onClickAdd}><PlusCircleOutlined /></Button>
                    {/* prettier-ignore */}
                    <Select defaultValue="DESC" onChange={onChangeOrder} options={[{ value: "DESC", label: "DESC" },{ value: "ASC", label: "ASC" }]} style={{width: 80}} />
                    {/* prettier-ignore */}
                    <Search placeholder="input search text" allowClear suffix={<SearchOutlined />} enterButton="Search" onSearch={onSearch} style={{width: 230}} />
                </Space>
            </Row>
            {/* prettier-ignore */}
            <Table bordered dataSource={dataTableList} rowKey={"id"} scroll={{ y: 620 }} loading={dataTableLoading} rowClassName={getRowClassName}
                onRow={(record) => {
                    return {
                        onClick: (event) => { onClickRow(record); },
                    };
                }}
                pagination={{ position: ["bottomLeft"], current: dataQueryParams.pageNo, pageSize: dataQueryParams.pageSize, total: dataTableListTotal, onChange: onChangePage }}>
                <Column title="Title" dataIndex="title" key="title" align="left" />
                {/* prettier-ignore */}
                <Column title="Action" dataIndex="action" key="action" width={"300px"} align="center" 
                     render={(_: any, record: RequestEssayData) => (
                        <Space>
                            <Button type="primary" onClick={() => onClickWrite(record)} ghost><EditOutlined /> Write</Button>
                            <Button type="primary" onClick={() => onClickEdit(record)} ghost><EyeOutlined /> View</Button>
                            <Popconfirm title="Warning" description="Are you sure to do this?" icon={<QuestionCircleOutlined style={{ color: "red" }} />} onConfirm={() => { if (record.id !== undefined) onConfirmDelete(record.id) }}>
                                <Button type="primary" danger ghost><DeleteOutlined />Delete</Button>
                            </Popconfirm>
                        </Space>  
                    )}
                />
            </Table>
            <Modal title={<div style={{ marginBottom: "20px" }}>{titleDialog}</div>} open={AddDialogVisible} onOk={onOkAddDialog} onCancel={onCancelAddDialog} destroyOnClose={true} width={1600} style={{ top: 0 }}>
                <Form form={form} autoComplete="off" style={{ fontSize: "12px" }}>
                    <Row gutter={10}>
                        <Col span={12}>
                            <Form.Item name="content" style={{ marginBottom: "10px" }}>
                                <Tiptap content={dataEditorContent} onChange={onChangeEditor} onSelect={onSelectEditor} toolbar />
                            </Form.Item>
                            <Form.Item name="title" rules={[{ required: true, message: "Please input title" }]}>
                                <Input size="middle" placeholder="标题" />
                            </Form.Item>
                        </Col>
                        <Col span={12}>
                            <Space direction="vertical" className="panel" style={{ width: "100%", marginBottom: "10px" }}>
                                <ContextVocabulary.Provider value={random}>
                                    <Vocabulary content={dataVocabularyContent} onChange={onChangeVocabulary} />
                                </ContextVocabulary.Provider>
                                <Form.Item name="id" hidden>
                                    <Input />
                                </Form.Item>
                            </Space>
                        </Col>
                    </Row>
                </Form>
            </Modal>
            <Modal title={<div style={{ marginBottom: "20px" }}>Write Essay</div>} open={WriteDialogVisible} onCancel={onCancelWriteDialog} footer={null} destroyOnClose={true} width={1600} style={{ top: 0 }}>
                <Row gutter={10}>
                    <Col span={12}>
                        <Tiptap content={dataEditorContent} />
                    </Col>
                    <Col span={12}>
                        {dataEditorContentWriteLastWrong}
                        <TiptapWritePad content={dataEditorContentWrite} onChange={onChangeWriteEditor} />
                    </Col>
                </Row>
            </Modal>
            <div style={{ display: "none" }}>
                <audio ref={refAudio}></audio>
            </div>
        </div>
    );
};

export default Essay;
