$(document).ready(function () {
    var Application = function () {
        var that = this;
        that.domainRoot = window.location.host.includes("github") ? "/english/html/" : "/";
        that.JSONPrefix = window.location.pathname.split("/").pop().replace(".html", "");
        that.navHomeBtn = document.getElementById("homeBtn");
        that.ulElementCn = document.getElementById("cn");
        that.ulElementEn = document.getElementById("en");
        that.synonymTitle = document.getElementById("meaning");
        that.pageCurrent = 1;
        that.pageFrom = 1;
        that.pageEnd = 1;
        that.pageCurrentElement = document.getElementById("pageCurrentElement");
        that.pageEndElement = document.getElementById("pageEndElement");
        that.loadingElement = document.getElementById("loading");
        that.exampleElement = document.getElementById("example");
        that.audioElements = document.querySelectorAll("audio");
        that.audioListElement = document.getElementById("audioList");
        that.audioLoadedCount = 0;
        that.audioPlayListBtn = document.getElementById("audioPlayListBtn");
        that.audioPlayListOn = false;
        that.audioPlayListCallbackHandlers = [];
        that.audioPlayInteractiveBtn = document.getElementById("audioPlayInteractiveBtn");
        that.audioPlayInteractiveOn = false;
        that.audioPlayInteractiveCallbackHandlers = [];
        that.audioPlayInteractiveCurrent = "";
        that.canvas = null;
        that.canvasElem = document.getElementById("canvas");
        that.canvasElem.width = document.body.clientWidth;
        that.canvasElem.height = document.body.clientHeight * 0.92;
        that.recognizeResult = document.getElementById("recognize-result");
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
            that.pageCurrent = params.get("page");
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
                        that.initCanvas();
                    })
                    .catch((error) => {
                        console.error("There was a problem with the fetch operation:", error);
                    });
            })();
        },
        drawUI: function (data) {
            const that = this;
            const enArr = shuffleArray(data.itemHtmlList);
            const cnArr = shuffleArray(data.itemHtmlList);
            that.synonymTitle.innerHTML = data.meaning;
            enArr.forEach((word, key, origin) => {
                const en = word.en.replace(/\s+/g, "_");
                const enNext = key + 1 == origin.length ? origin[0].en.replace(/\s+/g, "_") : origin[key + 1].en.replace(/\s+/g, "_");
                const liElement = document.createElement("li");
                liElement.setAttribute("data-en", en);
                liElement.setAttribute("data-next", enNext);
                liElement.innerHTML = word.en.length > 20 ? '<span style="font-size:10px;">' + word.en + "</span>" : word.en;
                if (word.examples && word.examples.length) {
                    const spanElement = document.createElement("span");
                    const eventHandler = that.drawUIExample(word);
                    spanElement.setAttribute("class", "example-num");
                    spanElement.textContent = "[" + word.examples.length + "]";
                    spanElement.addEventListener("click", eventHandler);
                    liElement.appendChild(spanElement);
                }
                that.ulElementEn.appendChild(liElement);

                const sourceElement = document.createElement("source");
                sourceElement.type = "audio/wav";
                sourceElement.src = "data:audio/wav;base64," + word.tts;

                const audioElement = document.createElement("audio");
                audioElement.id = `audio-${en}`;
                audioElement.preload = "auto";
                audioElement.controls = 1;
                audioElement.style.display = "none"; // 设置样式为不显示
                audioElement.textContent = "Your browser does not support the audio element.";
                audioElement.setAttribute("data-next", "audio-" + enNext);
                audioElement.addEventListener(
                    "loadedmetadata",
                    function () {
                        that.audioLoadedCount++;
                        if (that.audioLoadedCount >= enArr.length) {
                            that.loadingElement.style.display = "none";
                        }
                    },
                    false,
                );
                audioElement.appendChild(sourceElement);
                that.audioListElement.appendChild(audioElement);
            });
            cnArr.forEach((word) => {
                const en = word.en.replace(/\s+/g, "_");
                const liElement = document.createElement("li");
                liElement.setAttribute("data-en", en);
                liElement.innerHTML = word.cn.length > 10 ? '<span style="font-size:10px;">' + word.cn + "</span>" : word.cn;
                that.ulElementCn.appendChild(liElement);
            });
            that.navHomeBtn.href = that.domainRoot;
            that.pageCurrentElement.value = that.pageCurrent;
            that.pageEndElement.textContent = that.pageEnd;
        },
        bindEvents: function () {
            const that = this;
            // Item Click
            (function () {
                var listItems = $("#synonym li");
                listItems.unbind("click");
                listItems.click(function () {
                    $(this).siblings().removeClass("active");
                    $(this).addClass("active");
                    const itemValue = $(this).data("en");
                    const isLeftColumn = $(this).parent().attr("id") == "en";
                    const isRightColumn = $(this).parent().attr("id") == "cn";
                    const enActive = $("#en").find("li.active").eq(0);
                    const cnAvtive = $("#cn").find("li.active").eq(0);
                    const enWithCn = $('[data-en="' + itemValue + '"]');
                    const randomColor = getRandomRGBColor();
                    const audio = $("#audio-" + itemValue)[0];
                    if (enActive.data("en") === cnAvtive.data("en")) {
                        enActive.css({ background: randomColor, "font-weight": "900", color: "#fff" });
                        cnAvtive.css({ background: randomColor, "font-weight": "900", color: "#fff" });
                    }
                    // Left For Audio
                    if (isLeftColumn) {
                        that.audioPlayListPause();
                        that.audioPlayInteractivePause();
                        if (audio.readyState != 0) {
                            if (audio.currentTime > 0) {
                                audio.currentTime = 0;
                                setTimeout(function () {
                                    audio.play();
                                }, 20);
                            } else {
                                audio.play();
                            }
                        }
                    }
                    // Right For Audio
                    if (isRightColumn) {
                        if (that.audioPlayInteractiveOn) {
                            if ("audio-" + itemValue == that.audioPlayInteractiveCurrent.id) {
                                enWithCn.css({ background: randomColor, "border-color": randomColor, "font-weight": "900", color: "#fff" });
                                audio.pause();
                                audio.currentTime = 0;
                                that.audioPlayInteractiveCurrent = that.audioGetNext(itemValue);
                                if (that.audioPlayInteractiveCurrent.currentTime > 0) {
                                    that.audioPlayInteractiveCurrent.currentTime = 0;
                                    setTimeout(function () {
                                        that.audioPlayInteractiveCurrent.play();
                                    }, 20);
                                } else {
                                    that.audioPlayInteractiveCurrent.play();
                                }
                            }
                        }
                    }
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
            // Audio Play
            $("#audioPlayListBtn").click(function () {
                that.audioPlayList();
            });
            $("#audioPlayInteractiveBtn").click(function () {
                that.audioPlayInteractive();
            });
            $("#clearStyle").click(function () {
                that.clearListStyle();
            });
        },
        bindEventsExample: function () {
            const that = this;
            const opionSpans = $(".option-span");
            opionSpans.unbind("click");
            opionSpans.click(function () {
                var thisValue = $(this).data("text");
                var sentenceItemActive = $(".sentence-item.active");
                var sentenceItemActiveValue = sentenceItemActive.data("text");
                $(".option-span").removeClass("active");
                $(this).addClass("active");
                if (sentenceItemActiveValue !== undefined) {
                    if (sentenceItemActiveValue == thisValue) {
                        console.log("BINGO");
                        if ($(this).hasClass("matched")) {
                            var backgroundColor = $(this).css("background-color");
                            sentenceItemActive.css({ background: backgroundColor, "font-weight": "900", color: "#fff" });
                            sentenceItemActive.addClass("matched");
                        } else {
                            const randomColor = getRandomRGBColor();
                            $(this).css({ background: randomColor, "font-weight": "900", color: "#fff" });
                            $(this).addClass("matched");
                            sentenceItemActive.css({ background: randomColor, "font-weight": "900", color: "#fff" });
                            sentenceItemActive.addClass("matched");
                        }
                    }
                }
            });
            const sentenceItem = $(".sentence-item");
            sentenceItem.unbind("click");
            sentenceItem.click(function () {
                if (!$(this).hasClass("matched")) {
                    $(".sentence-item").removeClass("active");
                    $(this).addClass("active");
                    var optionSpanActive = $(".option-span.active");
                    var optionSpanActiveValue = optionSpanActive.data("text");
                    if (optionSpanActiveValue !== undefined) {
                        var thisValue = $(this).data("text");
                        if (optionSpanActiveValue == thisValue) {
                            console.log("BINGO");
                            if (optionSpanActive.hasClass("matched")) {
                                var backgroundColor = optionSpanActive.css("background-color");
                                $(this).css({ background: backgroundColor, "font-weight": "900", color: "#fff" });
                                $(this).addClass("matched");
                            } else {
                                const randomColor = getRandomRGBColor();
                                $(this).css({ background: randomColor, "font-weight": "900", color: "#fff" });
                                $(this).addClass("matched");
                                optionSpanActive.css({ background: randomColor, "font-weight": "900", color: "#fff" });
                                optionSpanActive.addClass("matched");
                            }
                        }
                    }
                }
            });

            $("#exampleClearBtn").click(function () {
                if (!that.exampleElement.innerHTM) {
                    var opionSpans = $(".option-span");
                    var sentenceItem = $(".sentence-item");
                    opionSpans.unbind("click");
                    sentenceItem.unbind("click");
                    that.exampleElement.innerHTML = "";
                    that.exampleElement.style.display = "none";
                }
            });
        },
        audioPlayList: function () {
            const that = this;
            that.audioPlayInteractivePause();
            if (!that.audioPlayListOn) {
                that.audioElements = document.querySelectorAll("audio");
                if (that.audioElements.length > 0) {
                    that.audioElements.forEach((audio, key, origin) => {
                        const audioNext = key + 1 == origin.length ? origin[0] : origin[key + 1];
                        const callBack = that.audioPlayListCallback(audioNext);
                        audio.addEventListener("ended", callBack);
                        that.audioPlayListOn = true;
                        that.audioPlayListBtn.innerHTML = "&#9209;";
                        that.audioPlayListCallbackHandlers[audio.id] = callBack;
                    });
                    that.audioPlayListCallback(that.audioElements[0])();
                }
            } else {
                that.audioPlayListPause();
            }
        },
        audioPlayListCallback: function (audio) {
            return function () {
                if (audio.currentTime > 0) {
                    audio.currentTime = 0;
                    setTimeout(function () {
                        audio.play();
                    }, 20);
                } else {
                    audio.play();
                }
            };
        },
        audioPlayListPause: function () {
            const that = this;
            if (that.audioPlayListOn) {
                that.audioPlayListOn = false;
                that.audioPlayListBtn.innerHTML = "&#9654;";
                that.audioElements.forEach((audio, key) => {
                    audio.removeEventListener("ended", that.audioPlayListCallbackHandlers[audio.id]);
                });
            }
        },
        audioPlayInteractive: function () {
            const that = this;
            that.audioPlayListPause();
            if (!that.audioPlayInteractiveOn) {
                that.audioElements = document.querySelectorAll("audio");
                if (that.audioElements.length > 0) {
                    that.audioElements.forEach((audio) => {
                        const callBack = that.audioPlayInteractiveCallback();
                        audio.addEventListener("ended", callBack);
                        that.audioPlayInteractiveOn = true;
                        that.audioPlayInteractiveBtn.innerHTML = "&#9209;";
                        that.audioPlayInteractiveCallbackHandlers[audio.id] = callBack;
                    });
                    that.audioPlayInteractiveCurrent = that.audioElements[0];
                    that.audioPlayInteractiveCallback()();
                }
            } else {
                that.audioPlayInteractivePause();
            }
        },
        audioPlayInteractiveCallback: function () {
            const that = this;
            return function () {
                if (that.audioPlayInteractiveCurrent.currentTime > 0) {
                    that.audioPlayInteractiveCurrent.currentTime = 0;
                    setTimeout(function () {
                        that.audioPlayInteractiveCurrent.play();
                    }, 20);
                } else {
                    that.audioPlayInteractiveCurrent.play();
                }
            };
        },
        audioPlayInteractivePause: function () {
            const that = this;
            if (that.audioPlayInteractiveOn) {
                that.audioPlayInteractiveOn = false;
                that.audioPlayInteractiveBtn.innerHTML = "&#9654;";
                that.audioElements.forEach((audio, key) => {
                    audio.removeEventListener("ended", that.audioPlayInteractiveCallbackHandlers[audio.id]);
                });
            }
        },
        audioGetNext: function (id) {
            const audioNextID = $("#en").find(`[data-en=${id}]`).data("next");
            const audioNext = $(`#audio-${audioNextID}`);
            return audioNext[0];
        },
        recognize: function (wordString) {
            const that = this;
            const words = wordString.split(", ");
            words.forEach((word) => {
                const wordEn = word.replace(/\s+/g, "_");
                const audio = $("#audio-" + wordEn)[0];
                const audioNext = that.audioGetNext(wordEn);
                const randomColor = getRandomRGBColor();
                if (audio !== undefined) {
                    $('[data-en="' + wordEn + '"]').css({ background: randomColor, "border-color": randomColor, "font-weight": "900", color: "#fff" });
                    if (that.audioPlayInteractiveOn) {
                        audio.pause();
                        audio.currentTime = 0;
                        that.audioPlayInteractiveCurrent = audioNext;
                        if (that.audioPlayInteractiveCurrent.currentTime > 0) {
                            that.audioPlayInteractiveCurrent.currentTime = 0;
                            setTimeout(function () {
                                that.audioPlayInteractiveCurrent.play();
                            }, 20);
                        } else {
                            that.audioPlayInteractiveCurrent.play();
                        }
                    } else {
                        if (audio.currentTime > 0) {
                            audio.currentTime = 0;
                            setTimeout(function () {
                                audio.play();
                            }, 20);
                        } else {
                            audio.play();
                        }
                    }
                }
                that.canvas.erase();
            });
        },
        initCanvas: function () {
            const that = this;
            that.canvas = new handwriting.Canvas(that.canvasElem, 3);
            that.canvas.setLineWidth(5);
            that.canvas.setOptions({
                language: "en",
                numOfReturn: 1,
            });
            that.canvas.setCallBack(function (data, err) {
                if (err) {
                    alert(err);
                    throw err;
                } else {
                    that.recognizeResult.innerHTML = data[0];
                    that.recognize(data[0]);
                }
            });
            var paintMode = false;
            var x = 918,
                y = 549;
            document.onmousemove = function (e) {
                x = e.clientX;
                y = e.clientY;
            };
            document.addEventListener("keydown", (event) => {
                if (event.code === "KeyP") {
                    if (!paintMode) {
                        paintMode = true;
                        document.getElementById("paintMode").innerHTML = "ON";
                        sendMouseEvent();
                    }
                }
            });
            document.addEventListener("keyup", (event) => {
                if (event.code === "KeyP") {
                    if (paintMode) {
                        paintMode = false;
                        document.getElementById("paintMode").innerHTML = "OFF";
                        sendMouseEvent();
                    }
                }
            });
            $("#canvasShow").click(function () {
                if (that.canvasElem.style.display === "none" || that.canvasElem.style.display === "") {
                    that.canvasElem.style.display = "block";
                    that.recognizeResult.style.display = "block";
                } else {
                    that.canvasElem.style.display = "none";
                    that.recognizeResult.style.display = "none";
                }
            });
            $("#canvasErase").click(function () {
                that.canvas.erase();
            });
            $("#canvasRecognize").click(function () {
                that.canvas.recognize();
            });
        },
        fetchData: function () {
            const that = this;
            fetch(that.domainRoot + "json/" + that.JSONPrefix + "-" + that.pageCurrent + ".json")
                .then((response) => {
                    if (!response.ok) {
                        throw new Error("Network response was not ok");
                    }
                    return response.json();
                })
                .then((data) => {
                    that.drawUI(data);
                    that.bindEvents();
                    that.initCanvas();
                })
                .catch((error) => {
                    console.error("There was a problem with the fetch operation:", error);
                });
        },
        clearListStyle: function () {
            const that = this;
            that.ulElementCn.querySelectorAll("li").forEach((li) => {
                li.removeAttribute("style");
                li.classList.remove("active");
            });
            that.ulElementEn.querySelectorAll("li").forEach((li) => {
                li.removeAttribute("style");
                li.classList.remove("active");
            });
        },
    };
    function sendMouseEvent() {
        var eventName = paintMode ? "mousedown" : "mouseup";
        var element = document.getElementById("canvas");
        var clickEvent = document.createEvent("MouseEvents");
        clickEvent.initMouseEvent(eventName, true, true, window, 0, 0, 0, x, y, false, false, false, false, 0, null);
        element.dispatchEvent(clickEvent);
    }
    function audioCallback(audioID) {
        return function () {
            const audioNext = document.getElementById(audioID);
            if (audioNext.currentTime > 0) {
                audioNext.load();
            }
            audioNext.play();
        };
    }
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
