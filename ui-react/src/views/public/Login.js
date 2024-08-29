import React, { useState, useCallback } from "react";
import { Row, Col, Card, Button, Form, Input, Space, message } from "antd";
import { useDispatch } from "react-redux";
import { setToken } from "../../stores/reducers/auth.js";
import { OAuthLogin, OAuthCaptcha } from "../../api/requestOAuth.js";
import { useEffect } from "react";
import { useNavigate } from "react-router-dom";
import { LockOutlined, UserOutlined, MobileOutlined } from "@ant-design/icons";
import universe from "../../assets/images/universe.png";
import LoginLogo from "./LoginLogo.js";
import "./Login.scss";

const Login = () => {
    const [captcha, setCaptcha] = useState(null);
    const [UUID, setUUID] = useState(null);
    const [loading, setLoading] = useState(false);
    const dispatch = useDispatch();
    const navigate = useNavigate();
    const [messageApi, contextHolder] = message.useMessage();
    const loadCaptcha = useCallback(async () => {
        try {
            const res = await OAuthCaptcha();
            setCaptcha(`data:image/gif;base64,${res.data.image}`);
            setUUID(res.data.uuid);
        } catch (error) {
            console.log("error", error);
            messageApi.open({
                type: "error",
                content: "Captcha Loading Failed",
            });
        }
    }, []); // eslint-disable-line
    const onSubmit = async (values) => {
        try {
            setLoading(true);
            const res = await OAuthLogin({ username: values.username, password: values.password, code: values.code, uuid: UUID });
            if (res.code) {
                setLoading(false);
                dispatch(setToken(res));
                messageApi.open({
                    type: "success",
                    content: "Success",
                    duration: 1,
                    onClose: () => {
                        navigate("/home");
                    },
                });
            }
        } catch (error) {
            setLoading(false);
            loadCaptcha();
            messageApi.open({
                type: "error",
                duration: 1,
                content: error.message,
            });
            console.log("error", error);
        }
    };
    const onSubmitFailed = (errorInfo) => {
        console.log("Failed:", errorInfo);
        messageApi.open({
            type: "error",
            duration: 1,
            content: "Please enter correct information.",
        });
    };
    useEffect(() => {
        loadCaptcha();
    }, []); // eslint-disable-line

    return (
        <Row style={{ height: "100vh" }}>
            {contextHolder}
            <Col span={18} style={{ backgroundColor: "#001529", backgroundSize: "cover", backgroundRepeat: "no-repeat", backgroundImage: "url(" + universe + ")" }}>
                <LoginLogo />
            </Col>
            <Col span={6}>
                <Card title="Welcome" style={{ width: "400px", margin: "150px auto" }}>
                    <Form onFinish={onSubmit} onFinishFailed={onSubmitFailed} autoComplete="off">
                        <Form.Item name="username" rules={[{ required: true, message: "Please input your username!" }]}>
                            <Input size="large" prefix={<UserOutlined />} placeholder="Please input username" autoComplete="new-password" />
                        </Form.Item>
                        <Form.Item name="password" rules={[{ required: true, message: "Please input your password!" }]}>
                            <Input.Password size="large" prefix={<LockOutlined />} placeholder="Please input password" autoComplete="new-password" />
                        </Form.Item>
                        <Space.Compact direction="horizontal">
                            <Form.Item name="code" rules={[{ required: true, message: "Please input code!" }]}>
                                <Input size="large" prefix={<MobileOutlined />} placeholder="Please input captcha" autoComplete="new-password" />
                            </Form.Item>
                            <img src={captcha} onClick={loadCaptcha} alt="captcha" style={{ height: "40px", width: "130px", cursor: "pointer" }} />
                        </Space.Compact>
                        <Form.Item>
                            <Button type="primary" htmlType="submit" size="large" loading={loading} block>
                                Login
                            </Button>
                        </Form.Item>
                    </Form>
                </Card>
            </Col>
        </Row>
    );
};

export default Login;
