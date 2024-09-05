import { useEffect, useState } from "react";
import { Table, Input, Button, Modal, Form, Space, Row, message, Popconfirm, Select, Col } from "antd";
import type { PaginationProps, GetProps } from "antd";
import { essayList, essayAdd, essayEdit, essayDelete } from "../../api/request";
import { PlusCircleOutlined, QuestionCircleOutlined, DeleteOutlined, SearchOutlined, EyeOutlined } from "@ant-design/icons";
import { RequestEssayParams, RequestEssayData, RequestEssayDataDelete } from "../../types";
import Tiptap from "../components/tiptap";
import Vocabulary from "./Vocabulary";

const { Column } = Table;
const { Search } = Input;
type SearchProps = GetProps<typeof Input.Search>;
const Essay: React.FC = () => {
    const [AddDialogVisible, setAddDialogVisible] = useState(false);
    const [titleDialog, setTitleDialog] = useState("Add Essay");
    const [dataQueryParams, setDataQueryParams] = useState<RequestEssayParams>({ pageNo: 1, pageSize: 10 });
    const [dataTableListTotal, setDataTableListTotal] = useState(0);
    const [dataTableList, setDataTableList] = useState<RequestEssayData[]>([]);
    const [dataTableLoading, setDataTableLoading] = useState(false);
    const [dataTableCurrentRow, setDataTableCurrentRow] = useState<RequestEssayData>();
    const [dataEditorContent, setDataEditorContent] = useState<string>("");
    const [dataVocabularyContent, setDataVocabularyContent] = useState<string>("");
    // const [dataVocabularyContentBack, setDataVocabularyContentBack] = useState<string>("");
    const [messageApi, contextHolder] = message.useMessage();
    const [form] = Form.useForm();

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
        form.setFieldsValue(data);
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
                        },
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
        form.resetFields();
        messageApi.destroy();
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
    const onChangeVocabulary = (content: string) => {
        console.log("onChangeVocabulary: ", content);
        setDataVocabularyContent(content);
    };
    useEffect(() => {
        getTableList(dataQueryParams);
    }, []); // eslint-disable-line

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
                <Column title="Title" dataIndex="title" key="title" align="center" />
                {/* prettier-ignore */}
                <Column title="Action" dataIndex="action" key="action" width={"300px"} align="center" 
                     render={(_: any, record: RequestEssayData) => (
                        <Space>
                            <Button type="primary" onClick={() => onClickEdit(record)} ghost><EyeOutlined /> View</Button>
                            <Popconfirm title="Warning" description="Are you sure to do this?" icon={<QuestionCircleOutlined style={{ color: "red" }} />} onConfirm={() => { if (record.id !== undefined) onConfirmDelete(record.id) }}>
                                <Button type="primary" danger ghost><DeleteOutlined />Delete</Button>
                            </Popconfirm>
                        </Space>  
                    )}
                />
            </Table>
            <Modal title={<div style={{ marginBottom: "20px" }}>{titleDialog}</div>} open={AddDialogVisible} onOk={onOkAddDialog} onCancel={onCancelAddDialog} width={1600} style={{ top: 0 }}>
                <Form form={form} autoComplete="off" style={{ fontSize: "12px" }}>
                    <Row gutter={10}>
                        <Col span={12}>
                            <Form.Item name="content" style={{ marginBottom: "10px" }}>
                                <Tiptap content={dataEditorContent} onChange={onChangeEditor} />
                            </Form.Item>
                            <Form.Item name="title" rules={[{ required: true, message: "Please input title" }]}>
                                <Input size="middle" placeholder="标题" />
                            </Form.Item>
                        </Col>
                        <Col span={12}>
                            <Space direction="vertical" className="panel" style={{ width: "100%", marginBottom: "10px" }}>
                                <Vocabulary content={dataVocabularyContent} onChange={onChangeVocabulary} />
                                <Form.Item name="id" hidden>
                                    <Input />
                                </Form.Item>
                            </Space>
                        </Col>
                    </Row>
                </Form>
            </Modal>
        </div>
    );
};

export default Essay;