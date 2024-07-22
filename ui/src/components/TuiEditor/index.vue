<template>
    <editor ref="toastuiEditor" :initialValue="content" :options="editorOptions" height="500px" initialEditType="wysiwyg" previewStyle="vertical"></editor>
</template>
<script>
    import "@toast-ui/editor/dist/toastui-editor.css";
    import { Editor } from "@toast-ui/vue-editor";
    export default {
        name: "TuiEditor",
        props: {
            content: {
                type: String,
                default: "",
            },
        },
        components: {
            editor: Editor,
        },
        data() {
            return {
                editorOptions: {
                    minHeight: "200px",
                    language: "en-US",
                    useCommandShortcut: true,
                    previewStyle: "vertical",
                    useDefaultHTMLSanitizer: true,
                    usageStatistics: true,
                    hideModeSwitch: true,
                    toolbarItems: [["heading", "bold", "italic", "strike"], ["hr", "quote"], ["ul", "ol", "task", "indent", "outdent"], ["table", "image", "link"], ["code", "codeblock"], ["scrollSync"]],
                },
            };
        },
        methods: {
            getHTML() {
                return this.$refs.toastuiEditor.invoke("getHTML");
            },
            setHTML(a) {
                return this.$refs.toastuiEditor.invoke("setHTML", a);
            },
        },
    };
</script>
