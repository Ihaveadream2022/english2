<template>
    <div>
        <ckeditor v-model="editorData" :config="editorConfig"></ckeditor>
    </div>
</template>
<script>
    import CKEditor from "ckeditor4-vue";
    export default {
        name: "CKEditor",
        components: {
            ckeditor: CKEditor.component,
        },
        data() {
            return {
                editorData: "<p>Content of the editor.</p>",
                editorConfig: {
                    // The configuration of the editor.
                },
            };
        },
    };
</script>
