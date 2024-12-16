import React, { useState, useRef, useCallback } from "react";
import { Layout, List, Input, Space, Button } from "antd";
import "./Video.scss";
import { Scrollbars } from "react-custom-scrollbars-2";
const { TextArea } = Input;
const { Sider, Content } = Layout;
const Video = () => {
    const [currentSubtitle, setCurrentSubtitle] = useState(0);
    const [title, setTitle] = useState("Elon Musk's little son.");
    const [subtitle, setSubtitle] = useState([
        { startTime: "00:00:00", endTime: "00:00:02,500", text: "That kid. Oh." },
        { startTime: "00:02:80", endTime: "00:00:05,500", text: "Hey what are you doing?" },
        { startTime: "00:08:00", endTime: "00:00:10,500", text: "Do you want to just sit on my knee or something?" },
        { startTime: "00:11:00", endTime: "00:00:15,000", text: "OK I guess so. All right. We got mini me here." },
    ]);
    const [subtitleInput, setSubtitleInput] = useState("");
    const refVideo = useRef<HTMLVideoElement>(null);
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
    const handleTest = () => {
        console.log(subtitle);
    };
    const handleTimeUpdate = (e: any) => {
        console.log("currentSubtitle: ", currentSubtitle);
        console.log("currentTime:", e.target.currentTime);
        if (currentSubtitle < subtitle.length) {
            const endTimeArr = subtitle[currentSubtitle].endTime.split(":");
            const endTime = parseFloat(endTimeArr[2].replace(/,/g, "."));
            if (e.target.currentTime >= endTime) {
                refVideo.current?.pause();
                console.log("refVideo paused");
            }
        }
    };
    const handleEnded = () => {};
    const handlePause = () => {};
    const handleInputSubtitle = (e: any) => {
        if (subtitle[currentSubtitle].text === e.target.value) {
            setSubtitleInput("");
            setCurrentSubtitle(currentSubtitle + 1);
            refVideo.current?.play();
        } else {
            setSubtitleInput(e.target.value);
        }
    };
    return (
        <Layout style={{ minWidth: "1200px", height: "100%" }}>
            <Sider width="600" style={{ flex: "0 0 50%", maxWidth: "none", minWidth: "600px", width: "50%", backgroundColor: "#fff" }}>
                <Scrollbars style={{ width: "600px", height: "100%" }}>
                    <List
                        header={<div style={{ fontWeight: "bold", fontSize: "20px", wordWrap: "break-word", overflowWrap: "break-word" }}>{title}</div>}
                        dataSource={subtitle}
                        renderItem={(item, index) => (
                            <List.Item style={{ alignItems: "flex-start" }} className={index === currentSubtitle ? "current-item" : ""}>
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
            <Content style={{ background: "#ccc" }}>
                <Space size="small" direction="vertical" style={{ width: "100%", height: "100%", alignItems: "stretch", justifyContent: "space-between" }}>
                    <video style={{ maxWidth: "600px", maxHeight: "400px", textAlign: "center" }} id="video" controls onPause={handlePause} onEnded={handleEnded} onTimeUpdate={handleTimeUpdate} ref={refVideo}>
                        <source src="/src/assets/Elon.mp4" type="video/mp4" /> Your browser does not support video tag.
                    </video>
                    <TextArea style={{ borderRadius: "0" }} value={subtitleInput} onChange={(e) => handleInputSubtitle(e)} />
                </Space>
            </Content>
        </Layout>
    );
};

export default Video;
