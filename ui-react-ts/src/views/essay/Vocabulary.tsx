import React, { useEffect } from "react";
import { useState, useRef } from "react";
import { Table, Button, Input, Space, Popconfirm } from "antd";
import type { GetProps, InputRef } from "antd";
import { itemList, ttsGet } from "../../api/request";
import { SearchOutlined, ClearOutlined, QuestionCircleOutlined, DeleteOutlined } from "@ant-design/icons";
import { RequestItemParams, RequestItemData, VocabularyData } from "../../types";
import "./Vocabulary.scss";

type SearchProps = GetProps<typeof Input.Search>;
interface props {
    content: string;
    onChange: (content: string) => void;
}
const { Column } = Table;
const { Search } = Input;
const Vocabulary: React.FC<props> = ({ content, onChange }) => {
    const [dataTableList, setDataTableList] = useState<VocabularyData[]>(JSON.parse(content));
    const [dataItemList, setDataItemList] = useState<RequestItemData[]>([]);
    const [dataQueryParams, setDataQueryParams] = useState<RequestItemParams>({ pageNo: 1, pageSize: 5 });
    const [dataTableCurrentRow, setDataTableCurrentRow] = useState<VocabularyData>();
    const [searchTableVisible, setSearchTableVisible] = useState<boolean>(false);
    const [keywords, setKeywords] = useState<string>("");
    const refAudio = useRef<HTMLAudioElement>(null);
    const refSearch = useRef<InputRef>(null);
    const [initialContent, setInitialContent] = useState<VocabularyData[]>(JSON.parse(content));
    const getItemList = async (queryParams: RequestItemParams) => {
        try {
            const res = await itemList(queryParams);
            if (res.code) {
                setDataItemList(res.data.list);
                setDataQueryParams(queryParams);
                setSearchTableVisible(queryParams.keyword ? true : false);
            }
        } catch (error) {
            console.log(error);
        }
    };
    const onSearch: SearchProps["onSearch"] = (value) => {
        getItemList({ ...dataQueryParams, keyword: `${value}` });
    };
    const getRowClassName = (record: VocabularyData) => {
        return dataTableCurrentRow !== undefined && record.key === dataTableCurrentRow.key ? "clicked" : "";
    };
    const onClickRow = (row: VocabularyData) => {
        setDataTableCurrentRow(row);
        onPlay(row);
    };
    const onPlay = async (row: VocabularyData) => {
        try {
            const res = await ttsGet({ name: row.key });
            if (res.code) {
                if (refAudio.current) {
                    const audio = refAudio.current;
                    audio.src = "data:audio/wav;base64," + res.data.audio;
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
    const onClickUse = (record: RequestItemData) => {
        const duplicate = dataTableList.find(({ key }) => {
            return key === record.name;
        });
        if (!duplicate) {
            dataTableList.push({ key: record.name, value: record.common ? record.common : "", form: getName(record.name, record) });
            const newData = JSON.stringify(dataTableList);
            setDataTableList(JSON.parse(newData));
            onChange(newData);
        }
    };
    const getName = (name: string, row: RequestItemData) => {
        if (row.verbPastTense && row.name + "d" !== row.verbPastTense && row.name + "ed" !== row.verbPastTense && row.name.slice(0, -1) + "ied" !== row.verbPastTense) {
            name += ` / ${row.verbPastTense}`;
        }
        if (row.verbPastParticiple && row.name + "d" !== row.verbPastParticiple && row.name + "ed" !== row.verbPastParticiple && row.name.slice(0, -1) + "ied" !== row.verbPastParticiple) {
            name += ` / ${row.verbPastParticiple}`;
        }
        if (row.verbPresentParticiple && row.name + "ing" !== row.verbPresentParticiple && row.name.slice(0, -1) + "ing" !== row.verbPresentParticiple) {
            name += ` / ${row.verbPresentParticiple}`;
        }
        if (row.nounPlural && row.name + "s" !== row.nounPlural && row.name + "es" !== row.nounPlural && row.name.slice(0, -1) + "ies" !== row.nounPlural) {
            name += ` / ${row.nounPlural}`;
        }
        return name;
    };
    const onClickClear = () => {
        const newData = JSON.stringify(initialContent);
        setDataTableList(JSON.parse(newData));
        onChange(newData);
        setSearchTableVisible(false);
        setKeywords("");
        setDataTableCurrentRow(undefined);
    };
    const onConfirmDelete = (record: VocabularyData) => {
        console.log(record);
        const filtered = dataTableList.filter((v) => {
            if (v.key !== record.key) {
                return true;
            }
            return false;
        });
        const dataNew = JSON.stringify(filtered);
        setDataTableList(JSON.parse(dataNew));
        onChange(dataNew);
    };
    useEffect(() => {
        if (content && content !== JSON.stringify(dataTableList)) {
            console.log("useEffect - content");
            const data = JSON.parse(content);
            const dataInit = JSON.parse(content);
            setDataTableList(data);
            setInitialContent(dataInit);
            setDataItemList([]);
            setKeywords("");
            setSearchTableVisible(false);
        }
    }, [content]);

    console.log("Vocabulary Loaded");

    return (
        <div>
            <Space direction="vertical" className="panel" style={{ width: "100%", marginBottom: "10px" }}>
                <Space>
                    {/* prettier-ignore */}
                    <Button onClick={onClickClear}><ClearOutlined /></Button>
                    {/* prettier-ignore */}
                    <Search ref={refSearch} placeholder="input search text" allowClear suffix={<SearchOutlined />} value={keywords}  onChange={(e) => setKeywords(e.target.value)} onClear={() => {setSearchTableVisible(false)}} enterButton="Search" onSearch={onSearch} style={{width: 230}} />
                </Space>
                {/* prettier-ignore */}
                <Table bordered dataSource={dataTableList} rowKey={"key"} pagination={false} rowClassName={getRowClassName}
                    onRow={(record) => {
                        return {
                            onClick: (event) => { onClickRow(record); },
                        };
                    }}>
                    <Column title="EN" dataIndex="form" key="form" />
                    <Column title="CN" dataIndex="value" key="value" />
                    <Column title="Action" dataIndex="action" key="action" width={"300px"} align="center" 
                        render={(_: any, record: VocabularyData) => (
                            <Popconfirm title="Warning" description="Are you sure to do this?" icon={<QuestionCircleOutlined style={{ color: "red" }} />} onConfirm={() => { onConfirmDelete(record) } }>
                                <Button type="primary" size="small" danger ghost><DeleteOutlined />Delete</Button>
                            </Popconfirm>
                        )} 
                    />
                </Table>
                {/* prettier-ignore */}
                {searchTableVisible && (
                    <Table bordered dataSource={dataItemList} rowKey={"id"} pagination={false}>
                        <Column title="Name" dataIndex="name" key="name" />
                        <Column title="Common" dataIndex="common" key="common" />
                        {/* prettier-ignore */}
                        <Column title="Action" dataIndex="action" key="action" width={"300px"} align="center" 
                            render={(_: any, record: RequestItemData) => (
                                <Button type="primary" size="small" onClick={() => onClickUse(record)} ghost>Use</Button>
                            )} 
                        />
                    </Table>
                )}
            </Space>
            <div style={{ display: "none" }}>
                <audio ref={refAudio}></audio>
            </div>
        </div>
    );
};

export default Vocabulary;
