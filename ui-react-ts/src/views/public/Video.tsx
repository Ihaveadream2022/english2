import React, { useState, useCallback } from "react";
import { Row, Col, List, Typography, Card, Button, Form, Input, Space, message } from "antd";
import video from "../../assets/video/Elon.mp4";

const Video: React.FC = () => {
    const data = [
        { start: 0, end: 2.5, text: "That kid. Oh." },
        { start: 2.8, end: 5.5, text: "Hey what are you doing?" },
        { start: 8.0, end: 10.5, text: "Do you want to just sit on my knee or something?" },
        { start: 11.0, end: 15.0, text: "OK I guess so. All right. We got mini me here." },
    ];
    const [subtitle, setSubtitle] = useState(data);
    return (
        <Row style={{ height: "100vh" }}>
            <Col span={18} style={{ backgroundColor: "#001529" }}>
                <video id="video" style={{ width: "100%" }} controls>
                    <source src={video} type="video/mp4" />
                    Your browser does not support the video tag.
                </video>
            </Col>
            <Col span={6}>
                <List
                    header={<div>Header</div>}
                    footer={<div>Footer</div>}
                    bordered
                    dataSource={subtitle}
                    renderItem={(item) => (
                        <List.Item>
                            <Typography.Text mark>[ITEM]</Typography.Text> {item}
                        </List.Item>
                    )}
                />
            </Col>
        </Row>
    );
};

export default Video;
