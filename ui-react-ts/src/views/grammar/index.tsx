import { useEffect, useState } from "react";
import { Table, Input, Button, Modal, Form, Space, Row, message, Popconfirm, Col } from "antd";
import type { PaginationProps, GetProps } from "antd";
import { grammarList, grammarAdd, grammarEdit, grammarDelete } from "../../api/request";
import { PlusCircleOutlined, QuestionCircleOutlined, DeleteOutlined, SearchOutlined, EyeOutlined } from "@ant-design/icons";
import { RequestGrammarParams, RequestGrammarData, RequestGrammarDataDelete } from "../../types";
import Tiptap from "../components/tiptap";

type SearchProps = GetProps<typeof Input.Search>;
const { Column } = Table;
const { Search } = Input;
const Grammar: React.FC = () => {
    const [AddDialogVisible, setAddDialogVisible] = useState(false);
    const [titleDialog, setTitleDialog] = useState("Add Grammar");
    const [dataQueryParams, setDataQueryParams] = useState<RequestGrammarParams>({ pageNo: 1, pageSize: 10 });
    const [dataTableListTotal, setDataTableListTotal] = useState(0);
    const [dataTableList, setDataTableList] = useState<RequestGrammarData[]>([]);
    const [dataTableLoading, setDataTableLoading] = useState(false);
    const [dataTableCurrentRow, setDataTableCurrentRow] = useState<RequestGrammarData>();
    const [dataEditorContent, setDataEditorContent] = useState<string>("");
    const [messageApi, contextHolder] = message.useMessage();
    const [form] = Form.useForm();
    const getTableList = async (queryParams: RequestGrammarParams) => {
        try {
            setDataTableLoading(true);
            const res = await grammarList(queryParams);
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
    const onClickEdit = (record: RequestGrammarData) => {
        const data = JSON.parse(JSON.stringify(record));
        console.log(data);
        setTitleDialog("Edit Grammar");
        setAddDialogVisible(true);
        setDataEditorContent(data.content);
        form.setFieldsValue(data);
    };
    const onOkAddDialog = () => {
        form.validateFields()
            .then((fields) => {
                messageApi.open({ type: "loading", content: "Loading..", duration: 0 });
                const data: RequestGrammarData = { name: `${fields.name}`, content: `${fields.content}` };
                if (fields.id) data.id = fields.id;
                if (fields.sort) data.sort = fields.sort;
                const promise = titleDialog === "Add Grammar" ? grammarAdd(data) : grammarEdit(data);
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
                                        setTitleDialog("Add Grammar");
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
        setTitleDialog("Add Grammar");
        setAddDialogVisible(false);
        setDataEditorContent("");
        form.resetFields();
        messageApi.destroy();
    };
    const onConfirmDelete = async (id: number) => {
        try {
            messageApi.open({ type: "loading", content: "Loading..", duration: 0 });
            const data: RequestGrammarDataDelete = { id: id };
            const res = await grammarDelete(data);
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
    const onClickRow = (row: RequestGrammarData) => {
        setDataTableCurrentRow(row);
    };
    const getRowClassName = (record: RequestGrammarData) => {
        return dataTableCurrentRow !== undefined && record.id === dataTableCurrentRow.id ? "clicked" : "";
    };
    const onChangeEditor = (content: string) => {
        setDataEditorContent(content);
    };
    useEffect(() => {
        getTableList(dataQueryParams);
    }, []); // eslint-disable-line

    console.log("Loaded");

    return (
        <div>
            {contextHolder}
            {/* prettier-ignore */}
            <Row className="title"><h4>Grammar Management</h4></Row>
            <Row>
                <Space className="panel" style={{ marginBottom: "10px" }}>
                    {/* prettier-ignore */}
                    <Button onClick={onClickAdd}><PlusCircleOutlined /></Button>
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
                <Column title="Name" dataIndex="name" key="name" align="center" />
                {/* prettier-ignore */}
                <Column title="Action" dataIndex="action" key="action" width={"300px"} align="center" 
                     render={(_: any, record: RequestGrammarData) => (
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
                    <Row>
                        <Col span={24}>
                            <Form.Item name="content" style={{ marginBottom: "10px" }}>
                                <Tiptap content={dataEditorContent} onChange={onChangeEditor} />
                            </Form.Item>
                            <Form.Item name="name" rules={[{ required: true, message: "Please input name" }]}>
                                <Input size="middle" placeholder="标题" />
                            </Form.Item>
                            <Form.Item name="id" hidden>
                                <Input />
                            </Form.Item>
                        </Col>
                    </Row>
                </Form>
            </Modal>
        </div>
    );
};

export default Grammar;
