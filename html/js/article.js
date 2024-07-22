$(document).ready(function () {
    var Application = function () {
        var that = this;
        that.domainRoot = window.location.host.includes("github") ? "/english2/html/" : "/";
        that.JSONPrefix = window.location.pathname.split("/").pop().replace(".html", "");
        that.navHomeBtn = document.getElementById("homeBtn");
        that.ulElementCn = document.getElementById("cn");
        that.ulElementEn = document.getElementById("en");
        that.synonymTitle = document.getElementById("meaning");
        that.mainTitleElement = document.getElementById("title");
        that.mainContentElement = document.getElementById("content");
        that.pageCurrent = 1;
        that.pageFrom = 1;
        that.pageEnd = 1;
        that.pageCurrentElement = document.getElementById("pageCurrentElement");
        that.pageEndElement = document.getElementById("pageEndElement");
        that.init();
    };
    Application.prototype = {
        init: function () {
            const that = this;
            const currentUrl = window.location.href;
            const urlObj = new URL(currentUrl);
            const params = new URLSearchParams(urlObj.search);
            that.pageFrom = 1;
            that.pageEnd = 100;
            that.pageCurrent = params.get("page") ? params.get("page") : 1;

            // Init Data
            (function () {
                fetch(that.domainRoot + "json/" + that.JSONPrefix + "-" + that.pageCurrent + ".json")
                    .then((response) => {
                        if (!response.ok) {
                            alert("json file not exist.");
                            window.history.go(-1);
                            throw new Error("Network response was not ok");
                        }
                        return response.json();
                    })
                    .then((data) => {
                       that.drawUI(data);
                        that.bindEvents();
                    })
                    .catch((error) => {
                        console.error("There was a problem with the fetch operation:", error);
                    });
            })();
        },
        drawUI: function (data) {
            const that = this;
            that.mainTitleElement.innerHTML = data.title;
            that.mainContentElement.innerHTML = data.content;
            that.navHomeBtn.href = that.domainRoot;
            that.pageCurrentElement.value = that.pageCurrent;
            that.pageEndElement.textContent = that.pageEnd;
        },
        bindEvents: function () {
            const that = this;
            // Item Click
            (function () {
                var pElems = $("#article p");
                pElems.unbind("click");
                pElems.click(function () {
                    $(this).siblings().removeClass("active");
                    $(this).addClass("active");
                });
            })();
            // Page Panel
            (function () {
                console.log(that.pageCurrent);
                console.log(that.pageEnd);
                // 获取 Pre 和 Next 按钮元素
                var prevBtn = document.getElementById("prevBtn");
                var nextBtn = document.getElementById("nextBtn");
                prevBtn.addEventListener("click", function (e) {
                    e.preventDefault();
                    if (that.pageCurrent > 1) {
                        that.pageCurrent--;
                        window.location.href = window.location.pathname + "?page=" + that.pageCurrent;
                    }
                });
                nextBtn.addEventListener("click", function (e) {
                    e.preventDefault();
                    if (that.pageCurrent < that.pageEnd) {
                        that.pageCurrent++;
                        window.location.href = window.location.pathname + "?page=" + that.pageCurrent;
                    }
                });
                that.pageCurrentElement.addEventListener("keydown", function (event) {
                    if (event.key === "Enter") {
                        var inputPage = parseInt(that.pageCurrentElement.value);
                        console.log(inputPage);
                        if (!isNaN(inputPage) && inputPage >= 1 && inputPage <= that.pageEnd) {
                            that.pageCurrentElement.value = inputPage;
                            window.location.href = window.location.pathname + "?page=" + inputPage;
                        } else {
                            alert("请输入有效的页码" + that.pageFrom + " 至 " + that.pageEnd);
                        }
                    }
                });
            })();
        },
    };
    function getRandomInt(min, max) {
        return Math.floor(Math.random() * (max - min + 1)) + min;
    }
    function shuffleArray(originArray) {
        const array = originArray.slice();
        for (let i = array.length - 1; i > 0; i--) {
            const j = Math.floor(Math.random() * (i + 1));
            [array[i], array[j]] = [array[j], array[i]];
        }
        return array;
    }
    function getRandomRGBColor() {
        var r = Math.floor(Math.random() * 256);
        var g = Math.floor(Math.random() * 256);
        var b = Math.floor(Math.random() * 256);
        console.log("rgb(" + r + "," + g + "," + b + ")");
        return "rgb(" + r + "," + g + "," + b + ")";
    }
    var app = new Application();
});
