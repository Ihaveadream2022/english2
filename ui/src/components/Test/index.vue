<template>
    <button @click="submit">confirm</button>
</template>
<script>
    export default {
        props: {
            content: { type: String, default: ""},
        },
        methods: {
            submit(event) {
                this.$emit("submit", event.target);
            },
        },
    };
</script>
