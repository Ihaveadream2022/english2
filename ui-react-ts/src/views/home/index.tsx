import { Row, Col } from "antd";
import "./home.scss";
import imgNight from "../../assets/images/night.png";

function Home() {
    const lis = Object.keys(process.env).map((v) => {
        return (
            <li key={v}>
                {v}: {process.env[v]}
            </li>
        );
    });
    return (
        <div>
            <Row>
                <Col span={12} className="Home-l">
                    <div>
                        <img src={imgNight} alt="imgNight" />
                    </div>
                </Col>
                <Col span={12} className="Home-r">
                    <Row>
                        <Col span={24} className="Home-r-t">
                            <div>
                                <ul>{lis}</ul>
                            </div>
                        </Col>
                    </Row>
                    <Row>
                        <Col span={24} className="Home-r-b">
                            <div></div>
                        </Col>
                    </Row>
                </Col>
            </Row>
        </div>
    );
}

export default Home;
