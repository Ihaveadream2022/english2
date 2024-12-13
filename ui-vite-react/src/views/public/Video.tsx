import React, { useState, useCallback } from "react";
import { Layout, Row, Col, List, Typography } from "antd";
import "./Video.scss";
const { Sider, Content } = Layout;
const Video = () => {
    const data = {
        title: "Elon Musk's little son.",
        subtitle: [
            { start: 0, end: 2.5, text: "That kid. Oh." },
            { start: 2.8, end: 5.5, text: "Hey what are you doing?" },
            { start: 8.0, end: 10.5, text: "Do you want to just sit on my knee or something?" },
            { start: 11.0, end: 15.0, text: "OK I guess so. All right. We got mini me here." },
        ],
    };
    const [videoTitle, setVideoTitle] = useState(data["title"]);
    const [videoSubtitle, setVideoSubtitle] = useState(data["subtitle"]);
    return (
        <Layout>
            <Content className="main">2</Content>
            <Sider className="sider">
                <List header={<div>{videoTitle}</div>} footer={<div>Footer</div>} bordered dataSource={videoSubtitle} renderItem={(item) => <List.Item>{item.text}</List.Item>} />
            </Sider>
        </Layout>
    );
};

export default Video;
