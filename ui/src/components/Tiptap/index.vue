<template>
    <div>
        <div class="button" ref="buttonPanel">
            <button @click="editor.chain().focus().toggleBold().run()">Bold</button>
            <button @click="editor.chain().focus().toggleItalic().run()">Italic</button>
            <button @click="editor.chain().focus().toggleUnderline().run()">Underline</button>
            <button @click="styleColorRed">Red</button>
            <button @click="styleColorBlue">Blue</button>
            <button @click="editor.chain().focus().setHorizontalRule().run()">Horizontal</button>
            <button @click="styleClearStyle">Clear</button>
        </div>
        <editor-content :editor="editor" />
    </div>
</template>
<script>
    import { Editor, EditorContent } from "@tiptap/vue-2";
    import StarterKit from "@tiptap/starter-kit";
    import Paragraph from "@tiptap/extension-paragraph";
    import TextStyle from "@tiptap/extension-text-style";
    import { Color } from "@tiptap/extension-color";
    import Bold from "@tiptap/extension-bold";
    import Italic from "@tiptap/extension-italic";
    import Underline from "@tiptap/extension-underline";
    import HorizontalRule from "@tiptap/extension-horizontal-rule";
    export default {
        props: {
            content: {
                type: String,
                default: "",
            },
        },
        components: {
            EditorContent,
        },
        data() {
            return {
                editor: null,
            };
        },
        mounted() {
            this.editor = new Editor({
                content: this.content,
                extensions: [StarterKit, Paragraph, Italic, Underline, TextStyle, Bold, Color, HorizontalRule],
            });
            this.eventCreateObserver();
            this.eventCreateScrollListener();
        },
        methods: {
            getHTML() {
                return this.editor.getHTML();
            },
            styleClearStyle() {
                this.editor.chain().focus().unsetColor().run();
                this.editor.chain().focus().unsetBold().run();
                this.editor.chain().focus().unsetUnderline().run();
                this.editor.chain().focus().unsetItalic().run();
            },
            styleColorRed() {
                this.editor.chain().focus().setColor("#F98181").run();
                this.editor.chain().focus().toggleBold().run();
            },
            styleColorBlue() {
                this.editor.chain().focus().setColor("#70CFF8").run();
                this.editor.chain().focus().toggleBold().run();
            },
            eventCreateObserver() {
                const observer = new IntersectionObserver(this.eventHandlerIntersect, {
                    root: null,
                    rootMargin: "0px",
                    threshold: 0,
                });
                observer.observe(this.$refs.buttonPanel);
            },
            eventCreateScrollListener() {
                window.addEventListener("scroll", this.eventHandlerScroll, true);
            },
            eventHandlerIntersect(entries) {
                entries.forEach((entry) => {
                    if (!entry.isIntersecting) {
                        if (typeof this.$refs.buttonPanel !== "undefined" && !this.$refs.buttonPanel.classList.contains("fixed")) {
                            this.$refs.buttonPanel.classList.add("fixed");
                        }
                    }
                });
            },
            eventHandlerScroll(e) {
                if (e.target.scrollTop === 0) {
                    if (typeof this.$refs.buttonPanel !== "undefined") {
                        this.$refs.buttonPanel.classList.remove("fixed");
                    }
                }
            },
        },
        beforeDestroy() {
            this.editor.destroy();
        },
    };
</script>
<style lang="scss">
    .button {
        button {
            padding: 4px 10px;
        }
        button + button {
            margin-left: 10px;
        }
        &.fixed {
            position: fixed;
            top: 10px;
            z-index: 999;
        }
    }
</style>
