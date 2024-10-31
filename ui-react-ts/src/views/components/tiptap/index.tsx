import React, { useEffect, useRef } from "react";
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
import debounce from "lodash.debounce";

interface props {
    content: string;
    toolbar?: boolean;
    onChange?: (content: string) => void;
    onSelect?: (content: string) => void;
}
const extensions = [StarterKit, Bold, Italic, Underline, HorizontalRule, Color, Paragraph, TextStyle];
const Tiptap: React.FC<props> = ({ content, toolbar, onChange, onSelect }) => {
    const refPanel = useRef<HTMLDivElement>(null);
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
    const observer = new IntersectionObserver(
        (entries) => {
            entries.forEach((entry) => {
                if (!entry.isIntersecting) {
                    if (refPanel.current && !refPanel.current.classList.contains("fixed")) {
                        refPanel.current.classList.add("fixed");
                    }
                }
            });
        },
        {
            root: null,
            rootMargin: "0px",
            threshold: 0,
        }
    );
    if (refPanel.current) observer.observe(refPanel.current);

    const eventHandlerScroll = (e: any) => {
        if (e.target.scrollTop === 0) {
            if (refPanel.current) {
                refPanel.current.classList.remove("fixed");
            }
        }
    };

    useEffect(() => {
        if (editor && content !== editor.getHTML()) {
            editor.commands.setContent(content);
        }
    }, [content, editor]); // 挂载、移除、内容变化
    useEffect(() => {
        if (!editor) return;
        const handleSelectionUpdate = debounce(() => {
            const { from, to } = editor.state.selection;
            const selectedText = editor.state.doc.textBetween(from, to, " ");
            console.log("Selected text:", selectedText);
            onSelect?.(selectedText);
        }, 500);
        // 监听选区更新事件
        editor.on("selectionUpdate", handleSelectionUpdate);
        // 清理事件监听器
        return () => {
            editor.off("selectionUpdate", handleSelectionUpdate);
        };
    }, [editor]); // 挂载与移除

    window.addEventListener("scroll", eventHandlerScroll, true);

    console.log("Tiptap Loaded");

    return (
        <div>
            {toolbar && (
                <Row>
                    <Space ref={refPanel} className="panel" style={{ marginBottom: "10px" }}>
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
            )}
            <Row>
                <EditorContent editor={editor} style={{ width: "100%" }} />
            </Row>
        </div>
    );
};

export default Tiptap;
