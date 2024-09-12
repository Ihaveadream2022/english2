import { useEffect, useState, useRef, useCallback } from "react";
import { Table, Input, Button, Modal, Form, Space, Row, Col, message, Popconfirm, Select } from "antd";
import type { PaginationProps, GetProps, InputRef } from "antd";
import { itemList, itemAdd, itemEdit, itemDelete, ttsGen } from "../../api/request";
import "./index.scss";
import { PlusCircleOutlined, PlayCircleOutlined, QuestionCircleOutlined, EditOutlined, DeleteOutlined, SearchOutlined, LoadingOutlined } from "@ant-design/icons";
import { RequestItemParams, RequestItemData, RequestItemDataDelete, PlayLoopAudio } from "../../types";
const { Column } = Table;
const { Search } = Input;
type SearchProps = GetProps<typeof Input.Search>;
function Item() {
    const [AddDialogVisible, setAddDialogVisible] = useState(false);
    const [titleDialog, setTitleDialog] = useState("Add Item");
    const [dataQueryParams, setDataQueryParams] = useState<RequestItemParams>({ pageNo: 1, pageSize: 10 });
    const [dataTableListTotal, setDataTableListTotal] = useState(0);
    const [dataTableList, setDataTableList] = useState<RequestItemData[]>([]);
    const [dataTableLoading, setDataTableLoading] = useState(false);
    const [dataTableCurrentRow, setDataTableCurrentRow] = useState<RequestItemData>();
    const [audioLoopPlay, setAudioLoopPlay] = useState<boolean>(false);
    const [audioLoopPlayIndex, setAudioLoopPlayIndex] = useState<number>(0);
    const refInputPaste = useRef<InputRef>(null);
    const refAudio = useRef<HTMLAudioElement>(null);
    const refAudioLoop = useRef<HTMLAudioElement>(null);
    const [messageApi, contextHolder] = message.useMessage();
    const [form] = Form.useForm();
    const getTableList = async (queryParams: RequestItemParams) => {
        try {
            setDataTableLoading(true);
            const res = await itemList(queryParams);
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
    // 包括翻页和每页数变化
    const onChangePage: PaginationProps["onChange"] = (current, pageSize) => {
        setStoping();
        getTableList({ pageNo: current, pageSize: pageSize });
    };
    const onSearch: SearchProps["onSearch"] = (value) => {
        getTableList({ ...dataQueryParams, pageNo: 1, pageSize: 10, keyword: `${value}` });
    };
    const onClickAdd = () => {
        setAddDialogVisible(true);
    };
    const onClickEdit = (record: RequestItemData) => {
        setTitleDialog("Edit Item");
        setAddDialogVisible(true);
        const data = JSON.parse(JSON.stringify(record));
        form.setFieldsValue(data);
    };
    const onOkAddDialog = () => {
        form.validateFields()
            .then((fields) => {
                messageApi.open({ type: "loading", content: "Loading..", duration: 0 });
                const data: RequestItemData = { name: `${fields.name}` };
                if (fields.id) data.id = fields.id;
                if (fields.common) data.common = `${fields.common}`;
                if (fields.pronounce) data.pronounce = `${fields.pronounce}`;
                if (fields.noun) data.noun = `${fields.noun}`;
                if (fields.noun_plural) data.noun_plural = `${fields.noun_plural}`;
                if (fields.verb) data.verb = `${fields.verb}`;
                if (fields.verb_past_tense) data.verb_past_tense = `${fields.verb_past_tense}`;
                if (fields.verb_past_participle) data.verb_past_participle = `${fields.verb_past_participle}`;
                if (fields.verb_third_person_singular) data.verb_third_person_singular = `${fields.verb_third_person_singular}`;
                if (fields.verb_present_participle) data.verb_present_participle = `${fields.verb_present_participle}`;
                if (fields.adjective) data.adjective = `${fields.adjective}`;
                if (fields.adverb) data.adverb = `${fields.adverb}`;
                if (fields.conjunction) data.conjunction = `${fields.conjunction}`;
                if (fields.preposition) data.preposition = `${fields.preposition}`;
                if (fields.comment) data.comment = `${fields.comment}`;
                const promise = titleDialog === "Add Item" ? itemAdd(data) : itemEdit(data);
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
                                        setTitleDialog("Add Item");
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
        setAddDialogVisible(false);
        setTitleDialog("Add Item");
        form.resetFields();
        messageApi.destroy();
    };
    const onConfirmDelete = async (id: number) => {
        try {
            messageApi.open({ type: "loading", content: "Loading..", duration: 0 });
            const data: RequestItemDataDelete = { id: id };
            const res = await itemDelete(data);
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
    const onClickRow = (row: RequestItemData) => {
        setDataTableCurrentRow(row);
        onPlay(row);
    };
    const onPlay = async (row: RequestItemData) => {
        try {
            const res = await ttsGen({ name: row.name });
            if (res.code) {
                if (refAudio.current) {
                    const audio = refAudio.current;
                    audio.src = "data:audio/wav;base64," + res.data;
                    audio.load();
                    audio.play();
                }
            }
        } catch (error) {
            if (error instanceof Error) {
                console.log(error);
            }
        }
    };
    const getRowClassName = (record: RequestItemData) => {
        return dataTableCurrentRow !== undefined && record.id === dataTableCurrentRow.id ? "clicked" : "";
    };
    const onChangeOrder = (value: string) => {
        getTableList({ ...dataQueryParams, orderType: `${value}` });
    };
    const onPasteData = () => {
        const copiedText = form.getFieldValue("paste");
        if (copiedText) {
            const regs = [
                { property: "name", reg: /^([a-zA-Z ]+)/ },
                { property: "pronounce", reg: /\/(.*?)\//g },
                { property: "noun", reg: /(n)\.\s*([^\n]+)/ },
                { property: "verb", reg: /\b(v|vi|vt)\.\s*([^\n]+)/ },
                { property: "adjective", reg: /(adj)\.\s*([^\n]+)/ },
                { property: "adverb", reg: /(adv)\.\s*([^\n]+)/ },
                { property: "conjunction", reg: /(conj)\.\s*([^\n]+)/ },
                { property: "pronoun", reg: /(pron)\.\s*([^\n]+)/ },
                { property: "preposition", reg: /(prep)\.\s*([^\n]+)/ },
                { property: "noun_plural", reg: /复数(.*?)(\w+)/ },
                { property: "verb_past_tense", reg: /过去式(.*?)(\w+)/ },
                { property: "verb_past_participle", reg: /过去分词(.*?)(\w+)/ },
                { property: "verb_present_participle", reg: /现在分词(.*?)(\w+)/ },
                { property: "verb_third_person_singular", reg: /第三人称单数(.*?)(\w+)/ },
            ];
            const baseArr = ["name", "pronounce"];
            const classArr = ["noun", "verb", "adjective", "adverb", "conjunction", "pronoun", "preposition"];
            const tagArr = ["noun_plural", "verb_past_tense", "verb_past_participle", "verb_present_participle", "verb_third_person_singular"];
            for (let i = 0; i < regs.length; i++) {
                const matches = copiedText.match(regs[i]["reg"]);
                if (matches) {
                    let result1 = matches[1];
                    let result2 = matches[2];
                    if (baseArr.includes(regs[i]["property"])) {
                        if (result1) {
                            form.setFieldValue(regs[i]["property"], result1);
                        }
                    }
                    if (classArr.includes(regs[i]["property"])) {
                        if (result1 && result2) {
                            if (result1 === "vt") {
                                result1 = "v";
                            }
                            if (result1 === "vi") {
                                result1 = "v";
                            }
                            form.setFieldValue(regs[i]["property"], result1 + "." + result2);
                        }
                    }
                    if (tagArr.includes(regs[i]["property"])) {
                        if (result2) {
                            form.setFieldValue(regs[i]["property"], result2);
                        }
                    }
                }
            }
        }
    };
    const onClickPlay = () => {
        setAudioLoopPlay((valueOld) => {
            const valueNew = !valueOld;
            if (refAudioLoop.current) {
                if (valueOld === false) {
                    refAudioLoop.current.addEventListener("ended", onPlaying, false);
                    onPlaying();
                }
                if (valueOld === true) {
                    refAudioLoop.current.removeEventListener("ended", onPlaying, false);
                    setAudioLoopPlayIndex(0);
                }
            }
            return valueNew;
        });
    };
    const getName = (name: string, row: RequestItemData) => {
        if (row.verb_past_tense && row.name + "d" !== row.verb_past_tense && row.name + "ed" !== row.verb_past_tense && row.name.slice(0, -1) + "ied" !== row.verb_past_tense) {
            name += ` / ${row.verb_past_tense}`;
        }
        if (row.verb_past_participle && row.name + "d" !== row.verb_past_participle && row.name + "ed" !== row.verb_past_participle && row.name.slice(0, -1) + "ied" !== row.verb_past_participle) {
            name += ` / ${row.verb_past_participle}`;
        }
        if (row.verb_present_participle && row.name + "ing" !== row.verb_present_participle && row.name.slice(0, -1) + "ing" !== row.verb_present_participle) {
            name += ` / ${row.verb_present_participle}`;
        }
        if (row.noun_plural && row.name + "s" !== row.noun_plural && row.name + "es" !== row.noun_plural && row.name.slice(0, -1) + "ies" !== row.noun_plural) {
            name += ` / ${row.noun_plural}`;
        }
        return <div>{name}</div>;
    };
    const setStoping = () => {
        setAudioLoopPlay(false);
        setAudioLoopPlayIndex(0);
        refAudioLoop.current?.removeEventListener("ended", onPlaying, false);
    };
    const onPlaying = useCallback(() => {
        setAudioLoopPlayIndex((valueOld) => {
            const valueNew = valueOld + 1;
            setTimeout(() => {
                if (refAudioLoop.current && dataTableList.length > 0) {
                    refAudioLoop.current.src = "data:audio/wav;base64," + dataTableList[valueOld].it_audio;
                    refAudioLoop.current.load();
                    refAudioLoop.current.play();
                    if (valueNew >= dataTableList.length) {
                        setAudioLoopPlayIndex(0);
                    }
                }
            }, 2000);
            return valueNew;
        });
    }, [dataTableList]);

    useEffect(() => {
        getTableList(dataQueryParams);
    }, []); // eslint-disable-line

    useEffect(() => {
        setTimeout(() => refInputPaste.current?.focus(), 1);
    }, [AddDialogVisible]); // eslint-disable-line

    console.log("Loaded");

    return (
        <div>
            {contextHolder}
            {/* prettier-ignore */}
            <Row className="title"><h4>Item Management</h4></Row>
            <Row>
                <Space className="panel" style={{ marginBottom: "10px" }}>
                    {/* prettier-ignore */}
                    <Button onClick={onClickAdd}><PlusCircleOutlined /></Button>
                    {/* prettier-ignore */}
                    <Button onClick={onClickPlay}>{audioLoopPlay? <LoadingOutlined />: <PlayCircleOutlined />}</Button>
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
                <Column title="Name" dataIndex="name" key="name" width={"250px"} align="left" render={(name: any, record: RequestItemData) => getName(name, record)} />
                <Column title="Common" dataIndex="common" key="common" width={"150px"} align="left" />
                <Column title="Verb" dataIndex="verb" key="verb" width={"200px"} align="left" ellipsis />
                <Column title="Noun" dataIndex="noun" key="noun" width={"200px"} align="left" ellipsis />
                <Column title="Adj" dataIndex="adjective" key="adjective" width={"200px"} align="left" ellipsis />
                <Column title="Adv" dataIndex="adverb" key="adverb" width={"200px"} align="left" ellipsis />
                <Column title="Conj" dataIndex="conjunction" key="conjunction" width={"50px"} align="left" ellipsis />
                <Column title="Prep" dataIndex="preposition" key="preposition" width={"50px"} align="left" ellipsis />
                {/* prettier-ignore */}
                <Column title="Action" dataIndex="action" key="action" width={"300px"} align="center" 
                     render={(_: any, record: RequestItemData) => (
                        <Space>
                            <Button type="primary" onClick={() => onClickEdit(record)} ghost><EditOutlined /> Edit</Button>
                            <Popconfirm title="Warning" description="Are you sure to do this?" icon={<QuestionCircleOutlined style={{ color: "red" }} />} onConfirm={() => { if (record.id !== undefined) onConfirmDelete(record.id) } }>
                                <Button type="primary" danger ghost><DeleteOutlined />Delete</Button>
                            </Popconfirm>
                        </Space>  
                    )}
                />
            </Table>
            <Modal title={<div style={{ marginBottom: "20px" }}>{titleDialog}</div>} open={AddDialogVisible} onOk={onOkAddDialog} onCancel={onCancelAddDialog} width={1000} centered>
                <Form form={form} autoComplete="off" style={{ fontSize: "12px" }}>
                    <Row gutter={10}>
                        <Col span={8}>
                            <Form.Item name="id" hidden>
                                <Input />
                            </Form.Item>
                            <Form.Item name="name" rules={[{ required: true, message: "Please input word name" }]}>
                                <Input size="middle" placeholder="单词" />
                            </Form.Item>
                        </Col>
                        <Col span={8}>
                            <Form.Item name="pronounce">
                                <Input size="middle" placeholder="发音" suffix="发音" />
                            </Form.Item>
                        </Col>
                        <Col span={8}>
                            <Form.Item name="common">
                                <Input size="middle" placeholder="常见含义" suffix="常见含义" />
                            </Form.Item>
                        </Col>
                    </Row>
                    <Row gutter={10}>
                        <Col span={8}>
                            <Form.Item name="noun_plural">
                                <Input size="middle" placeholder="复数" suffix="复数" />
                            </Form.Item>
                        </Col>
                        <Col span={8}>
                            <Form.Item name="verb_third_person_singular">
                                <Input size="middle" placeholder="第三人称" suffix="第三人称" />
                            </Form.Item>
                        </Col>
                    </Row>
                    <Row gutter={10}>
                        <Col span={8}>
                            <Form.Item name="verb_past_tense">
                                <Input size="middle" placeholder="过去式" suffix="过去式" />
                            </Form.Item>
                        </Col>
                        <Col span={8}>
                            <Form.Item name="verb_past_participle">
                                <Input size="middle" placeholder="过去分词" suffix="过去分词" />
                            </Form.Item>
                        </Col>
                        <Col span={8}>
                            <Form.Item name="verb_present_participle">
                                <Input size="middle" placeholder="现在分词" suffix="现在分词" />
                            </Form.Item>
                        </Col>
                    </Row>
                    <Row gutter={10}>
                        <Col span={12}>
                            <Form.Item name="noun">
                                <Input.TextArea size="middle" placeholder="名词" autoSize={{ minRows: 4, maxRows: 4 }} />
                            </Form.Item>
                        </Col>
                        <Col span={12}>
                            <Form.Item name="verb">
                                <Input.TextArea size="middle" placeholder="动词" autoSize={{ minRows: 4, maxRows: 4 }} />
                            </Form.Item>
                        </Col>
                    </Row>
                    <Row gutter={10}>
                        <Col span={12}>
                            <Form.Item name="adjective">
                                <Input.TextArea size="middle" placeholder="形容词" autoSize={{ minRows: 4, maxRows: 4 }} />
                            </Form.Item>
                        </Col>
                        <Col span={12}>
                            <Form.Item name="adverb">
                                <Input.TextArea size="middle" placeholder="副词" autoSize={{ minRows: 4, maxRows: 4 }} />
                            </Form.Item>
                        </Col>
                    </Row>
                    <Row gutter={10}>
                        <Col span={12}>
                            <Form.Item name="preposition">
                                <Input.TextArea size="middle" placeholder="介词" autoSize={{ minRows: 4, maxRows: 4 }} />
                            </Form.Item>
                        </Col>
                        <Col span={12}>
                            <Form.Item name="conjunction">
                                <Input.TextArea size="middle" placeholder="连词" autoSize={{ minRows: 4, maxRows: 4 }} />
                            </Form.Item>
                        </Col>
                    </Row>
                    <Row gutter={10}>
                        <Col span={12}>
                            <Form.Item name="comment">
                                <Input.TextArea size="middle" placeholder="Comment" autoSize={{ minRows: 4, maxRows: 4 }} />
                            </Form.Item>
                        </Col>
                        <Col span={12}>
                            <Form.Item name="paste">
                                <Input.TextArea
                                    size="middle"
                                    placeholder="Paste"
                                    autoSize={{ minRows: 4, maxRows: 4 }}
                                    ref={refInputPaste}
                                    onChange={() => {
                                        onPasteData();
                                    }}
                                />
                            </Form.Item>
                        </Col>
                    </Row>
                </Form>
            </Modal>
            <div style={{ display: "none" }}>
                <audio ref={refAudio}></audio>
                <audio ref={refAudioLoop}></audio>
            </div>
        </div>
    );
}

export default Item;
