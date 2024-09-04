import React, { useEffect } from "react";
import { useEditor, EditorContent } from "@tiptap/react";
import StarterKit from "@tiptap/starter-kit";
import Bold from "@tiptap/extension-bold";
import Italic from "@tiptap/extension-italic";
import Underline from "@tiptap/extension-underline";
import HorizontalRule from "@tiptap/extension-horizontal-rule";
import Paragraph from "@tiptap/extension-paragraph";
import TextStyle from "@tiptap/extension-text-style";
import { Color } from "@tiptap/extension-color";
import { Button, Space, Row } from "antd";
import { BoldOutlined, ItalicOutlined, UnderlineOutlined, DashOutlined, BgColorsOutlined, ClearOutlined } from "@ant-design/icons";
import "./index.scss";

interface props {
    content: string;
    onChange: (content: string) => void;
}
const extensions = [StarterKit, Bold, Italic, Underline, HorizontalRule, Color, Paragraph, TextStyle];
const Tiptap: React.FC<props> = ({ content, onChange }) => {
    const editor = useEditor({
        extensions,
        content,
        onUpdate({ editor }) {
            if (onChange) {
                onChange(editor.getHTML());
            }
        },
    });
    const setColorRed = () => {
        editor?.chain().focus().setColor("#F98181").run();
        editor?.chain().focus().setBold().run();
    };
    const setColorBlue = () => {
        editor?.chain().focus().setColor("#70CFF8").run();
        editor?.chain().focus().setBold().run();
    };
    const clearStyle = () => {
        editor?.chain().focus().unsetColor().run();
        editor?.chain().focus().unsetBold().run();
        editor?.chain().focus().unsetUnderline().run();
        editor?.chain().focus().unsetItalic().run();
    };
    useEffect(() => {
        if (editor && content !== editor.getHTML()) {
            editor.commands.setContent(content);
        }
    }, [content, editor]);
    
    console.log("Tiptap Loaded");

    return (
        <div>
            <Row>
                <Space className="panel" style={{ marginBottom: "10px" }}>
                    {/* prettier-ignore */}
                    <Button onClick={() => { editor?.chain().focus().toggleBold().run() }}><BoldOutlined />Bold</Button>
                    {/* prettier-ignore */}
                    <Button onClick={() => { editor?.chain().focus().toggleItalic().run() }}><ItalicOutlined />Italic</Button>
                    {/* prettier-ignore */}
                    <Button onClick={() => { editor?.chain().focus().toggleUnderline().run() }}><UnderlineOutlined />Underline</Button>
                    {/* prettier-ignore */}
                    <Button onClick={() => { editor?.chain().focus().setHorizontalRule().run() }}><DashOutlined />Horizontal</Button>
                    {/* prettier-ignore */}
                    <Button onClick={setColorRed}><BgColorsOutlined style={{color: "#F98181"}} />Red</Button>
                    {/* prettier-ignore */}
                    <Button onClick={setColorBlue}><BgColorsOutlined style={{color: "#70CFF8"}} />Blue</Button>
                    {/* prettier-ignore */}
                    <Button onClick={clearStyle}><ClearOutlined />Clear</Button>
                </Space>
            </Row>
            <Row>
                <EditorContent editor={editor} style={{ width: "100%" }} />
            </Row>
        </div>
    );
};

export default Tiptap;
