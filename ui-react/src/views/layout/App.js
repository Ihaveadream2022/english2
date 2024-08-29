import React from "react";
import { Layout } from "antd";
import AppHeader from "./AppHeader.js";
import AppSidemenu from "./AppSidemenu.js";
import AppContent from "./AppContent.js";
import "../../styles/common.scss";
import "../../styles/ant.scss";
import Guard from "../hoc/Guard.js";

const App = () => {
    return (
        <Guard>
            <Layout>
                <AppHeader />
                <Layout>
                    <AppSidemenu />
                    <AppContent />
                </Layout>
            </Layout>
        </Guard>
    );
};

export default App;
