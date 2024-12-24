import React, { useState, useRef, useCallback } from "react";
import { Layout, List, Input, Space, Button } from "antd";
import "./Video.scss";
import { Scrollbars } from "react-custom-scrollbars-2";
interface Subtitle {
    startTime: string;
    endTime: string;
    text: string;
}
console.log(123);
const { TextArea } = Input;
const { Sider, Content } = Layout;
const Video = () => {
    const [subIndex, setSubIndex] = useState(0);
    const [title, setTitle] = useState("Elon Musk's little son.");
    const [subtitle, setSubtitle] = useState<Subtitle[]>([
        { startTime: "00:00:00,000", endTime: "00:00:02,500", text: "That kid. Oh." },
        { startTime: "00:00:03,100", endTime: "00:00:05,500", text: "Hey what are you doing?" },
        { startTime: "00:00:09,400", endTime: "00:00:10,500", text: "Do you want to just sit on my knee or something?" },
        { startTime: "00:00:11,200", endTime: "00:00:15,000", text: "OK I guess so. All right. We got mini me here." },
    ]);
    const refLis = useRef<(HTMLDivElement | null)[]>([]);
    const refScrollbar = useRef<Scrollbars>(null);
    const [subtitleInput, setSubtitleInput] = useState("");
    const refVideo = useRef<HTMLVideoElement>(null);
    const fnConvertSrtTimeToSeconds = (timeString: string) => {
        const regex = /^(\d{2}):(\d{2}):(\d{2}),(\d{3})$/;
        const match = timeString.match(regex);
        if (!match) {
            throw new Error(`Invalid time format: ${timeString}`);
        }
        const [, hours, minutes, seconds, milliseconds] = match;
        return parseInt(hours, 10) * 3600 + parseInt(minutes, 10) * 60 + parseInt(seconds, 10) + parseInt(milliseconds, 10) / 1000;
    };
    const exportSRT = () => {
        const subtitleStr = subtitle
            .map((subtitle: Subtitle, index: number) => {
                return `${index + 1}\n${subtitle.startTime} --> ${subtitle.endTime}\n${subtitle.text}\n`;
            })
            .join("\n");
        const blob = new Blob([subtitleStr], { type: "text/srt" });
        const a = document.createElement("a");
        a.href = window.URL.createObjectURL(blob);
        a.download = "a.srt";
        window.document.body.appendChild(a);
        a.click();
        window.URL.revokeObjectURL(a.href);
        window.document.body.removeChild(a);
    };
    const importSRT = () => {

    }
    const handleChangeStartTime = (event: any, index: number) => {
        const newSubtitle = subtitle.map((v, k, a) => {
            if (k === index) {
                return {
                    startTime: event.target.value,
                    endTime: v.endTime,
                    text: v.text,
                };
            } else {
                return v;
            }
        });
        setSubtitle(newSubtitle);
    };
    const handleChangeEndTime = (event: any, index: number) => {
        const newSubtitle = subtitle.map((v, k, a) => {
            if (k === index) {
                return {
                    startTime: v.startTime,
                    endTime: event.target.value,
                    text: v.text,
                };
            } else {
                return v;
            }
        });
        setSubtitle(newSubtitle);
    };
    const handleChangeText = (event: any, index: number) => {
        const newSubtitle = subtitle.map((v, k, a) => {
            if (k === index) {
                return {
                    startTime: v.startTime,
                    endTime: v.endTime,
                    text: event.target.value,
                };
            } else {
                return v;
            }
        });
        setSubtitle(newSubtitle);
    };
    const handleTimeUpdate = (e: any) => {
        console.log("subIndex: ", subIndex);
        console.log("video current time:", e.target.currentTime);
        if (subtitle[subIndex] !== undefined) {
            const endTime = fnConvertSrtTimeToSeconds(subtitle[subIndex].endTime);
            if (e.target.currentTime >= endTime) {
                refVideo.current?.pause();
                if (subtitle[subIndex + 1] !== undefined) {
                    const nextStartTime = fnConvertSrtTimeToSeconds(subtitle[subIndex + 1].startTime);
                    if (e.target.currentTime >= nextStartTime) {
                        e.target.currentTime = fnConvertSrtTimeToSeconds(subtitle[subIndex].startTime);
                    }
                }
            }
        }
    };
    const handleEnded = () => {};
    const handlePause = () => {};
    const handleInputSubtitle = (e: any) => {
        console.log("subIndex", subIndex);
        console.log("refli", refLis.current);
        console.log(refLis.current[subIndex]);
        setSubtitleInput(e.target.value);
        if (subtitle[subIndex].text === e.target.value) {
            setSubtitleInput("");
            if (subIndex + 1 === subtitle.length) {
                setSubIndex(0);
                refVideo.current?.play();
                if (refScrollbar.current) {
                    refScrollbar.current.scrollTop(0);
                }
            } else {
                setSubIndex(subIndex + 1);
                refVideo.current?.play();
                if (subIndex >= 1) {
                    if (refScrollbar.current && refLis.current[subIndex]) {
                        const currentScrollTop = refScrollbar.current.getScrollTop();
                        const { width, height } = refLis.current[subIndex].getBoundingClientRect();
                        refScrollbar.current.scrollTop(currentScrollTop + height);
                    }
                }
            }
        }
    };
    return (
        <Layout style={{ minWidth: "1200px", height: "100%" }}>
            <Sider width={600} style={{ flex: "0 0 600px", position: "fixed", width: "600px", height: "100%", backgroundColor: "#fff" }}>
                <Scrollbars ref={refScrollbar} style={{ width: "600px", height: "100%" }}>
                    <List
                        header={
                            <div style={{ height: "26px", overflow: "hidden", lineHeight: "26px", fontWeight: "bold", fontSize: "16px" }}>
                                {title}|
                                <Button color="default" variant="solid" onClick={exportSRT}>
                                    Download
                                </Button>
                                <Button color="default" variant="solid" onClick={importSRT}>
                                    Import
                                </Button>
                            </div>
                        }
                        footer={<TextArea style={{ borderRadius: "0" }} value={subtitleInput} onChange={(e) => handleInputSubtitle(e)} rows={2} />}
                        dataSource={subtitle}
                        renderItem={(item, index) => (
                            <List.Item ref={(el) => (refLis.current[index] = el)} style={{ alignItems: "flex-start" }} className={index === subIndex ? "current" : ""}>
                                <Space size="small" style={{ flex: "0 0 94px" }} direction="vertical">
                                    <Input defaultValue={item.startTime} size="small" style={{ borderRadius: "0" }} onChange={(e) => handleChangeStartTime(e, index)} />
                                    <Input defaultValue={item.endTime} size="small" style={{ borderRadius: "0" }} onChange={(e) => handleChangeEndTime(e, index)} />
                                </Space>
                                <TextArea style={{ flex: 1, minHeight: "55px", marginLeft: "8px", borderRadius: "0" }} defaultValue={item.text} onChange={(e) => handleChangeText(e, index)} autoSize />
                            </List.Item>
                        )}
                    />
                </Scrollbars>
            </Sider>
            <Content style={{ background: "#ccc", marginLeft: "600px" }}>
                <Space size="small" direction="vertical" style={{ width: "100%", height: "100%", alignItems: "stretch", justifyContent: "space-between" }}>
                    <video style={{ maxWidth: "600px", maxHeight: "400px", textAlign: "center" }} id="video" controls onPause={handlePause} onEnded={handleEnded} onTimeUpdate={handleTimeUpdate} ref={refVideo}>
                        <source src="/src/assets/Elon.mp4" type="video/mp4" /> Your browser does not support video tag.
                    </video>
                </Space>
            </Content>
        </Layout>
    );
};

export default Video;
