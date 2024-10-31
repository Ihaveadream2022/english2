import React, { useEffect, useContext, useCallback } from "react";
import { useState, useRef } from "react";
import { Table, Button, Input, Space, Popconfirm, Select } from "antd";
import type { GetProps, InputRef } from "antd";
import { itemList, ttsGen } from "../../api/request";
import { SearchOutlined, ClearOutlined, QuestionCircleOutlined, DeleteOutlined, LoadingOutlined, PlayCircleOutlined, EditOutlined, CustomerServiceOutlined } from "@ant-design/icons";
import { RequestItemParams, RequestItemData, VocabularyData } from "../../types";
import { ContextVocabulary } from "../components/context";
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
    const [textWord, setTextWord] = useState<string>("");
    const [audioLoopPlay, setAudioLoopPlay] = useState<boolean>(false);
    const [audioLoopPlayIndex, setAudioLoopPlayIndex] = useState<number>(0);
    const [audioLoopPlayType, setAudioLoopPlayType] = useState<number>(1);
    const [audioDynamicPlay, setAudioDynamicPlay] = useState<boolean>(false);
    const [audioDynamicPlayType, setAudioDynamicPlayType] = useState<number>(1);
    const refAudio = useRef<HTMLAudioElement>(null);
    const refAudioLoop = useRef<HTMLAudioElement>(null);
    const refAudioDynamic = useRef<HTMLAudioElement>(null);
    const refSearch = useRef<InputRef>(null);
    const refText = useRef<InputRef>(null);
    const random = useContext(ContextVocabulary);
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
    const onText: SearchProps["onSearch"] = async (value) => {
        const color = getRandomRGBColor();
        const input = value.split("+");
        const audio = refAudioDynamic.current;
        if (audioDynamicPlayType === 2) {
            if (audio?.getAttribute("data-en") === input[0]) {
                const elem = document.querySelector(`[data-row-key="${input[0]}"]`) as HTMLElement;
                elem.style.background = color;
                elem.style.color = "#fff";
                setTextWord("");
                const index = dataTableList.findIndex((v) => {
                    return v.key === input[0];
                });
                const next = dataTableList[index + 1];
                if (next) {
                    dynamicPlay(next, audioDynamicPlayType);
                } else {
                    dynamicStop();
                }
            }
        }
        if (audioDynamicPlayType === 1) {
            const input = value.split("+");
            const audio = refAudioDynamic.current;
            console.log(audio?.getAttribute("data-en"));
            console.log(input[0]);
            if (audio?.getAttribute("data-en") === input[0]) {
                const res = await itemList({ byCommon: 1, keyword: `${input[1]}` });
                for (let item of res.data.list) {
                    if (item.common === audio?.getAttribute("data-cn")) {
                        const search = document.querySelector(`[data-row-key="${input[0]}"]`) as HTMLElement;
                        const htmlElem = search as HTMLElement;
                        htmlElem.style.background = color;
                        htmlElem.style.color = "#fff";
                        setTextWord("");
                        const index = dataTableList.findIndex((v) => {
                            return v.value === item.common;
                        });
                        console.log(index);
                        const next = dataTableList[index + 1];
                        if (next) {
                            dynamicPlay(next, audioDynamicPlayType);
                        } else {
                            dynamicStop();
                        }
                        break;
                    }
                }
            }
        }
    };
    const onChangeSearch = (target: HTMLInputElement) => {
        setKeywords(target.value);
        getItemList({ ...dataQueryParams, keyword: `${target.value}` });
    };
    const onChangeText = (target: HTMLInputElement) => {
        setTextWord(target.value);
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
            const res = await ttsGen({ id: row.id, content: row.form.replace(/ \//g, ","), type: 1 });
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
    const onClickUse = (record: RequestItemData) => {
        const duplicate = dataTableList.find(({ key }) => {
            return key === record.name;
        });
        if (!duplicate) {
            dataTableList.push({ id: record.id, key: record.name, value: record.common ? record.common : "", form: getName(record.name, record) });
            const newData = JSON.stringify(dataTableList);
            setDataTableList(JSON.parse(newData));
            onChange(newData);
        }
    };
    const getName = (name: string, row: RequestItemData) => {
        const participlePast = [`${row.name}d`, `${row.name}ed`, `${row.name.slice(0, -1)}ied`];
        const participlePresent = [`${row.name}ing`, `${row.name.slice(0, -1)}ing`];
        const plural = [`${row.name}s`, `${row.name}es`, `${row.name.slice(0, -1)}ies`];
        if (row.verb_past_tense && !participlePast.includes(row.verb_past_tense)) name += ` / ${row.verb_past_tense}`;
        if (row.verb_past_participle && !participlePast.includes(row.verb_past_participle)) name += ` / ${row.verb_past_participle}`;
        if (row.verb_present_participle && !participlePresent.includes(row.verb_present_participle)) name += ` / ${row.verb_present_participle}`;
        if (row.noun_plural && !plural.includes(row.noun_plural)) name += ` / ${row.noun_plural}`;
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
    const onChangePlayType = (value: number) => {
        console.log(value);
        setAudioLoopPlayType(value);
    };
    const onChangeDynamicPlayType = (value: number) => {
        setAudioDynamicPlayType(value);
    };
    const onClickDynamicPlay = async () => {
        clearTableTdStyle();
        setAudioDynamicPlay((valueOld) => {
            const valueNew = !valueOld;
            if (refAudioDynamic.current) {
                if (valueOld === false) {
                    dynamicPlay(dataTableList[0], audioDynamicPlayType);
                }
                if (valueOld === true) {
                    refAudioDynamic.current.pause();
                }
            }
            return valueNew;
        });
    };
    const dynamicPlay = async (item: any, type: number) => {
        try {
            const res = await ttsGen({ id: item.id, content: type === 1 ? item.key : item.value, type: type });
            if (res.code) {
                if (refAudioDynamic.current) {
                    const audio = refAudioDynamic.current;
                    audio.src = "data:audio/wav;base64," + res.data;
                    audio.setAttribute("data-en", item.key);
                    audio.setAttribute("data-cn", item.value);
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
    const dynamicStop = () => {
        if (refAudioDynamic.current) {
            refAudioDynamic.current.pause();
            setAudioDynamicPlay(false);
        }
    };
    const clearTableTdStyle = () => {
        const rows = document.querySelectorAll(`.ant-table-row`);
        rows.forEach((element) => {
            (element as HTMLElement).style.cssText = "";
        });
    };
    const getRandomRGBColor = () => {
        var r = Math.floor(Math.random() * 256);
        var g = Math.floor(Math.random() * 256);
        var b = Math.floor(Math.random() * 256);
        return "rgb(" + r + "," + g + "," + b + ")";
    };
    const onPlaying = useCallback(async () => {
        setAudioLoopPlayIndex((valueOld) => {
            const valueNew = valueOld + 1;
            const data = dataTableList;
            const content = audioLoopPlayType === 1 ? data[valueOld].form.replace(/ \//g, "") : data[valueOld].value;
            ttsGen({ id: data[valueOld].id, content: content, type: audioLoopPlayType }).then(
                (res) => {
                    setTimeout(() => {
                        if (refAudioLoop.current && data.length > 0) {
                            refAudioLoop.current.src = "data:audio/wav;base64," + res.data;
                            refAudioLoop.current.load();
                            refAudioLoop.current.play();
                            if (valueNew >= data.length) {
                                setAudioLoopPlayIndex(0);
                            }
                        }
                    }, 2000);
                },
                (err) => {}
            );
            return valueNew;
        });
    }, [dataTableList, audioLoopPlayType]);

    // Everytime Opened, Reset All. 开启 Modal's destroyOnClose 后，该处已无用。
    useEffect(() => {
        console.log("Reset All");
        const data = JSON.parse(content);
        const dataInit = JSON.parse(content);
        setDataTableList(data);
        setInitialContent(dataInit);
        setDataItemList([]);
        setKeywords("");
        setSearchTableVisible(false);
        setDataTableCurrentRow(undefined);
    }, [random]);

    console.log("Vocabulary Loaded");

    return (
        <div>
            <Space direction="vertical" className="panel" style={{ width: "100%", marginBottom: "10px" }}>
                <Space>
                    {/* prettier-ignore */}
                    <Button onClick={onClickClear}><ClearOutlined /></Button>
                    {/* prettier-ignore */}
                    <Select defaultValue={1} onChange={onChangePlayType} options={[{ value: 1, label: "EN" },{ value: 2, label: "CN" }]} style={{width: 60}} />
                    {/* prettier-ignore */}
                    <Button onClick={onClickPlay}>{audioLoopPlay? <LoadingOutlined />: <PlayCircleOutlined />}</Button>
                    {/* prettier-ignore */}
                    <Search ref={refSearch} placeholder="input search text" allowClear value={keywords}  onChange={(e) => onChangeSearch(e.target)} onClear={() => {setSearchTableVisible(false)}} enterButton="Search" onSearch={onSearch} style={{width: 200}} />
                    {/* prettier-ignore */}
                    <Search ref={refText} placeholder="" allowClear enterButton="Write" onSearch={onText} style={{width: 240}} value={textWord} onChange={(e) => onChangeText(e.target)} />
                    {/* prettier-ignore */}
                    <Select defaultValue={1} onChange={onChangeDynamicPlayType} options={[{ value: 1, label: "EN" },{ value: 2, label: "CN" }]} style={{width: 60}} />
                    {/* prettier-ignore */}
                    <Button onClick={onClickDynamicPlay}>{audioDynamicPlay ? <LoadingOutlined /> : <CustomerServiceOutlined />}</Button>
                </Space>
                {/* prettier-ignore */}
                <Table bordered dataSource={dataTableList} rowKey={"key"} scroll={{ y: 55 * 10 }} pagination={false} rowClassName={getRowClassName}
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
                <audio ref={refAudioLoop}></audio>
                <audio ref={refAudioDynamic} loop></audio>
            </div>
        </div>
    );
};

export default Vocabulary;
