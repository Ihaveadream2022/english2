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
import "./index.scss";
import debounce from "lodash.debounce";

interface props {
    content: string;
    onChange: (content: string) => void;
}
const extensions = [StarterKit, Bold, Italic, Underline, HorizontalRule, Color, Paragraph, TextStyle];
const Tiptap: React.FC<props> = ({ content, onChange }) => {
    const refEditor = useRef<HTMLDivElement>(null);
    const editor = useEditor({
        extensions,
        content,
        onUpdate({ editor }) {},
    });
    // const observer = new IntersectionObserver(
    //     (entries) => {
    //         entries.forEach((entry) => {
    //             if (!entry.isIntersecting) {
    //                 console.log(refEditor.current?.offsetWidth);
    //                 if (refEditor.current && !refEditor.current.classList.contains("fixed")) {
    //                     const width = refEditor.current.offsetWidth;
    //                     refEditor.current.classList.add("fixed");
    //                     refEditor.current.style.width = `${width}px`;
    //                 }
    //             }
    //         });
    //     },
    //     {
    //         root: null,
    //         rootMargin: "0px",
    //         threshold: 0,
    //     }
    // );
    // const eventHandlerScroll = (e: any) => {
    //     if (e.target.scrollTop === 0) {
    //         if (refEditor.current) {
    //             refEditor.current.classList.remove("fixed");
    //         }
    //     }
    // };
    // if (refEditor.current) observer.observe(refEditor.current);
    useEffect(() => {
        if (editor && content !== editor.getHTML()) {
            editor.commands.setContent(content);
            editor.commands.focus(); 
        }
    }, [content, editor]); // 挂载、移除、内容变化
    useEffect(() => {
        if (!editor) return;
        const handleSelectionUpdate = debounce(() => {
            onChange(editor.getText());
        }, 1000);
        // 监听选区更新事件
        editor.on("update", handleSelectionUpdate);
        // 清理事件监听器
        return () => {
            editor.off("update", handleSelectionUpdate);
        };
    }, [editor]); // 挂载与移除

    // window.addEventListener("scroll", eventHandlerScroll, true);

    console.log("Tiptap Loaded");

    return (
        <div style={{ width: "100%" }}>
            <EditorContent ref={refEditor} editor={editor} style={{ width: "100%" }} />
        </div>
    );
};

export default Tiptap;
