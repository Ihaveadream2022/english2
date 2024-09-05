/*
 Navicat Premium Data Transfer

 Source Server         : VirtualBox-192.168.10.103
 Source Server Type    : MySQL
 Source Server Version : 80037
 Source Host           : 192.168.10.103:3306
 Source Schema         : english

 Target Server Type    : MySQL
 Target Server Version : 80037
 File Encoding         : 65001

 Date: 05/09/2024 12:38:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for essay
-- ----------------------------
DROP TABLE IF EXISTS `essay`;
CREATE TABLE `essay`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'title',
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT 'content',
  `vocabulary` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT 'vocabulary',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 357 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'essay' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of essay
-- ----------------------------
INSERT INTO `essay` VALUES (177, '詹姆斯决定一', '<p><em>Thank you very much. <u>Everybody</u></em><strong><em><u><span style=\"color: rgb(249, 129, 129)\"> is on pins and needles</span></u></em></strong><em><u><span style=\"color: rgb(249, 129, 129)\"> </span>across the country</u>, particularly those teams who are in the running for LeBron James.</em></p><p>&nbsp;</p><p><strong><em><u>Are you ready to go LeBron? Where is the <span style=\"color: rgb(249, 129, 129)\">powder</span>?</u></em></strong></p><p><u>Left it at home.</u></p><p>&nbsp;</p><p><strong><em><u>What\'s new? What\'s been going on with you this summer?</u></em></strong></p><p><u>Man, this whole free agent experience. I\'m</u><strong><u> </u><em><u><span style=\"color: rgb(249, 129, 129)\">looking forward to</span></u></em><u> </u></strong><u>it.</u></p><p>&nbsp;</p><p><strong><em>What have you thought about this process?</em></strong></p><p>This process has been everything I\'ve thought and more. And that\'s what I did a few years ago; I put myself in a position to have this process where I can hear teams\' <strong><span style=\"color: rgb(249, 129, 129)\">pitches </span></strong>and figure out what was the best possible chance for me to <strong><em><span style=\"color: rgb(249, 129, 129)\">ultimately</span></em></strong><span style=\"color: rgb(249, 129, 129)\"> </span>win and to ultimately be happy.</p><p>&nbsp;</p><p><strong><em><u>You weren\'t able to be recruited because you went straight to the NBA from high school. Have you enjoyed this <span style=\"color: rgb(249, 129, 129)\">recruiting</span><span style=\"color: rgb(33, 33, 33)\"> </span>process now?</u></em></strong></p><p>I have enjoyed it. And I want to thank all six teams that I had an opportunity to sit down with and hear what they had to say. And my team, they hear what we had to say also.</p><p>It\'s been an unbelievable experience, a real humbling experience to be even to be in this position.</p><p>&nbsp;</p><p><strong><em><u>What did you <span style=\"color: rgb(249, 129, 129)\">expect</span>? Because we\'ve seen 30-<span style=\"color: rgb(249, 129, 129)\">foot</span> <span style=\"color: rgb(249, 129, 129)\">billboards</span>. We\'ve seen teams clear out all kinds of cap space. We\'ve seen <span style=\"color: rgb(249, 129, 129)\">cartoons </span>made about you and for you in part of their <span style=\"color: #F98181\">pitch</span>. President Obama, for crying out loud, seven times has commented that he\'d like to see you go to Chicago. What did you expect from this process?</u></em></strong></p><p>Well, certain things like that is one thing you can\'t control. But I expected to be able to go through this process and be able to sit down with my team and <strong><span style=\"color: #70CFF8\">sit across from</span></strong> other teams and hear how they feel with me being a part of their team, could help them win and could <strong><span style=\"color: #F98181\">ultimately</span></strong> help others win.</p><p>And the process was everything I expected and more. And like I said before, I just thank all those teams that have come to Cleveland and us have those interviews and have that process. It was everything that I\'ve ever expected and more.</p><p></p><p><strong><em><u>How many people know your <span style=\"color: rgb(249, 129, 129)\">decision</span> right now?</u></em></strong></p><p>Not many. It\'s a very, very small number. And I probably could count them on my fingers.</p><p>&nbsp;</p><p><strong><em>One hand or two hands?</em></strong></p><p>Let\'s say one.</p><p>&nbsp;</p><p><strong><em><u>When did you decide?</u></em></strong></p><p>I think I decided this morning. I mean, I decided this morning I went day to day. I wake up one morning, it\'s this team. I wake up another morning, it\'s this team. And it\'s a process that I felt it was I may feel like this is the best opportunity for me or not the best opportunity for me.</p><p>But this morning I woke up, had a great conversation with my mom. Once I had that conversation with her, I think I was set.</p><p>&nbsp;</p><p><strong><em>So the last time you changed your mind was yesterday?</em></strong></p><p>The last time I changed my mind was probably in my dreams. And when I woke up this morning I knew it was the right decision.</p><p>&nbsp;</p><p><strong><em><u>So does the team that you\'re going to, that you\'ll announce in a few minutes, do they know your decision?</u></em></strong></p><p>They just found out.</p><p>&nbsp;</p><p><strong><em>They just found out?</em></strong></p><p>Yeah.</p><p>&nbsp;</p><p><strong><em>So the other five, on pins and needles, they don\'t know, they\'ll be listening to this?</em></strong></p><p>Right.</p><p>&nbsp;</p><p><strong><em><u>Who in this process, LeBron, have you <span style=\"color: #70CFF8\">taken advice from</span> and who has had the biggest influence?</u></em></strong></p><p>I\'ve taken a lot of advice from my friends and family. My agent, Leon Rose, has been great. A lot of people that I look towards in a time of need or for advice, and ultimately they looked at me and said you ultimately have to live with your decision that you\'re going to make, and you have to do what\'s best for you, for your family and for you to ultimately be happy.</p><p>&nbsp;</p><p><strong><em>What was the major factor, the major reason in your decision?</em></strong></p><p>I think the major factor and the major reason in my decision was the best opportunity for me to win and to win now and to win into the future also.</p><p>And winning is a huge thing for me. Jim, you know ever since I was a rookie or even in high school, we always talked, that was the number one thing for me: Help my teammates get better and just wanting to win. And I\'ve done some great things in my seven years, and I want to continue to do that.</p><p>&nbsp;</p><p><strong><em>How deep of an evaluation do you have to do to go through that to figure out tomorrow, next year and beyond, that equation, that winning?</em></strong></p><p>One thing that you can\'t control is you never know. You never know. You want to put yourself in the position where you feel that it\'s the best opportunity. But saying I can win a championship next year or saying I can win it a year after, those are things that you don\'t know until you go out there and actually play the game. But you have to put yourself in the right position to be able to compete and also accomplish the goals that you set out for.</p><p>&nbsp;</p><p><strong><em>Do you have any doubts about your decision?</em></strong></p><p>No. I don\'t have any doubts at all.</p><p>&nbsp;</p><p><strong><em>Would you like to sleep on it a little longer, or are you ready to make this decision?</em></strong></p><p>I\'ve slept enough. Or the lack of sleep.</p><p>&nbsp;</p><p><strong><em>Are you still a nail biter?</em></strong></p><p>I have a little bit. Not of late.</p><p>&nbsp;</p><p><strong><em>You\'ve had everybody else biting their nails. So I guess it\'s time for them to stop chewing. The answer to the question everybody wants to know: LeBron, what\'s your decision?</em></strong></p><p>In this fall, this is very tough, in this fall I\'m going to take my talents to South Beach and join the Miami Heat.</p><p>&nbsp;</p><p><strong><em>The Miami Heat? That was the conclusion you woke up with this morning?</em></strong></p><p>That was the conclusion I woke up with this morning.</p><p>&nbsp;</p><p><strong><em>Why?</em></strong></p><p>Like I said before, I feel like it\'s going to give me the best opportunity to win and to win for multiple years, and not only just to win in the regular season or just to win five games in a row or three games in a row, I want to be able to win championships. And I feel like I can compete down there.</p><p>&nbsp;</p><p><strong><em>Was it always in your plan to go and play with Dwyane Wade and Chris Bosh?</em></strong></p><p>Well, I mean, I\'m looking forward to it. To say it was always in my plans, I can\'t say it was always in my plans because I never thought it was possible.</p><p>But the things that the Miami Heat franchise have done to be able to free up cap space and to be able to put themselves in a position this summer to have all three of us, it was hard to turn down. Those are two great players, two of the greatest players we have in this game today.</p><p>And, you know, you add me, we\'re going to be a really good team.</p><p>&nbsp;</p><p><strong><em>The three of you will share now the spotlight and the limelight. And in many ways you\'re going to Dwyane Wade\'s team. He\'s been in Miami. He\'s won a championship. How do you think you\'ll be able to fit in and possibly not be the headliner all the time?</em></strong></p><p>For me it\'s not about sharing. You know, it\'s about everybody having their own spotlight and then just doing what\'s best for the team.</p><p>You know, at this point D Wade, he\'s the unselfish guy here. To be able to have Chris Bosh and then LeBron James, to welcome us to his team, it\'s not about an individual here. Because if that was the case, D Wade wouldn\'t have asked us to join him, or we wouldn\'t have asked him if it was okay to come down there. It\'s not about individuals. It\'s about a team, and that\'s what this game is about.</p><p>&nbsp;</p><p><strong><em>How do you explain this to the people in Cleveland?</em></strong></p><p>I mean, it\'s heartfelt for me. You know, it\'s hard to explain, but at the same time my heart, in the seven years I gave to that franchise, to that city, it was everything. I mean, those 20,000 plus fans that came out every night we played, and they seen me grow from an 18 year old kid to a 25 year old man. And I never wanted to leave Cleveland. And my heart will always be around that area. But I also felt like this is the greatest challenge for me is to move on.</p><p>&nbsp;</p><p><strong><em>What was the major reason for leaving the Cavaliers?</em></strong></p><p>I don\'t even see it it\'s not like leaving Cleveland is the whole logistic of it; it\'s about joining forces with the other two guys that I feel like I respect their game the most. And I feel like we have a great chance of winning and winning for multiple years.</p><p>Like I said before, this is a very emotional time for me. I know it\'s emotional for the fans and also for the area. And if it was a perfect world, I would have loved to stay, because I\'ve done so many great things for that team, they\'ve done so many great things for me. But I feel like it\'s time to change.</p><p>&nbsp;</p><p><strong><em>What do you think will be the fans\' reaction back there, and will you still live in Akron?</em></strong></p><p>I\'m not sure. You know, they can have mixed emotions, of course, but it\'s going to be a lot of emotions not understanding why. And then you\'re going to have the real friends who love me for who I am. For me being from Akron, Ohio, and loving Akron, Ohio, it\'s always home for me. I\'m still going to live there, always be home. And Akron, Ohio is always home for me and that area.</p><p>&nbsp;</p><p><strong><em>Erik Spoelstra is the coach. Dwyane Wade, Chris Bosh said he will be the coach. Have you been told he will be your coach, or has Pat Riley, in your meetings, indicated he might come back to the bench?</em></strong></p><p>No. Erik Spoelstra will be the coach. And Pat said that. And Erik is a great young coach. He has a great mentor in Pat.</p><p>If you need something to bounce off of, he has a great person to go through, because Pat has been through everything, been through the highest level to the lowest level. He knows everything about it. But I respect Erik and I respect the coaching staff. I respect Coach Spoelstra and everything he\'s going to do to try to put us in the right position to win it all.</p><p>&nbsp;</p><p><strong><em>Ever want to go through this again?</em></strong></p><p>This is tough. This is very tough, because you feel like you\'ve let a lot of people down. You\'ve raised a lot of people\'s expectations also. But it was a tough decision, because I know how loyal I am.</p><p>And one thing my mother told me when I was going through this process and what ultimately helped me make my decision is you have to do what\'s best for you and what\'s going to make you happy at the end of the day, because no one can live with the consequences or anything that comes with your decision besides you.</p><p>And once I heard that from my mother, the person that I always look to for guidance, it was easy.</p><p>&nbsp;</p><p><strong><em>You told me she had a major influence when you called her this morning. You didn\'t believe the reaction she had would be the one that you got. Could you share with us what she said to you this morning?</em></strong></p><p>Absolutely. Like I said, when I called my mother I thought I would hear a different reaction. When she her reaction was it was a great move, because she felt it was going to ultimately make me happy. It wasn\'t about being in Miami. It wasn\'t about playing alongside Chris, playing alongside Dwyane, who she believes are two great basketball players, because she loves the game. But she felt it was going to make me happy.</p><p>When I heard that from my mother, it was like it was the relief that I was looking for throughout this whole process.</p><p>&nbsp;</p><hr><p>有什么进展？这个夏天你过得怎么样？</p><p></p><p>这个过程中，你有哪些考虑？</p><p></p><p>你没能被招募，因为你从高中直接进入NBA。现在你享受这个招募过程吗？</p><p></p><p>你有什么期待？</p><p></p><p>现在多少人知道你的决定？</p><p></p><p>你什么时候下决定的？</p><p></p><p><u>那么，你即将要去，你马上要宣布的那只球队，他们知道你的决定吗？</u></p><p></p><p><u>在这个过程中，你向谁征求了意见。谁有着较大的影响？</u></p><p></p><p>关于你的决定，什么是主要因素或原因？</p><p></p><p>你对你的有什么疑虑吗？</p><p></p><p>你愿意多睡一会吗？或者说，你准备好下决定了吗？</p><p></p><p>你还是个咬手指的人吗？</p><hr><p><strong><em>1-process 通篇的process指以自由球员身份到被招募的过程</em></strong></p><p>&nbsp;</p><p><strong><em>2-This process has been everything I\'ve thought and more. And that\'s what I did a few years ago;</em></strong></p><p><strong><em>这个过程就是我想要的，或超出我想要的</em></strong></p><p>&nbsp;</p><p><strong><em>3-figure out what was the best possible chance for me to ultimately win and to ultimately be happy.</em></strong></p><p><strong><em>这句话是病句，正确的说法：</em></strong><br><strong><em>Figure out what the best possible chance was for me to ultimately win and to ultimately be happy.</em></strong></p><p>&nbsp;</p><p><strong><em>4-What\'s been going on with you this summer?</em></strong></p><p><strong><em><span style=\"color: rgb(249, 129, 129)\">what has been going on with you 强调以过去视角：（那段时间）怎么回事</span></em></strong></p><p><strong><em><span style=\"color: rgb(249, 129, 129)\">what is going on with you &nbsp;强调以现在视角：（现在）怎么样了</span></em></strong></p><p>&nbsp;</p><p>5-Man, this whole free agent experience. I\'m <strong><em><span style=\"color: rgb(249, 129, 129)\">looking forward to</span></em></strong> it. 我期待</p><p>&nbsp;</p><p>6-where I can hear teams\' <strong><em><span style=\"color: rgb(249, 129, 129)\">pitches&nbsp;</span></em></strong><span style=\"color: rgb(249, 129, 129)\"> </span>本意音高. 这里引申为\"宣传论点\", \"思想基调\", 即各支球队的主张和声音</p><p>&nbsp;</p><p>&nbsp;</p><p>You weren\'t able to be recruited because you went straight to the NBA from high school. Have you enjoyed this recruiting process now?</p><ul><li><p>主持的意思是: 詹姆斯直接从高中进入NBA，没参加过选秀，是否享受这个过程。因为选秀是有招募流程的，例如球队主动招募洽谈，给出自己的方案，试训等等。</p></li></ul><p>It\'s been an unbelievable experience, a real humbling experience to be even to be in this position.</p><ul><li><p>甚至这样的经历使人谦虚</p></li></ul><p>certain things that is one thing you can\'t control.</p><ul><li><p>|有些事|你无法控制</p></li></ul><p>I expected to be able to go through this process and be able to sit down with my team and sit across from other teams and hear how they feel with me being a part of their team, could help them win and could ultimately help others win.</p><ul><li><p>最后一句与前面句子的关系: I expected (to be able ...) and (could help ...)</p></li></ul>', '[{\"key\":\"billboard\",\"value\":\"n.广告牌\",\"form\":\"billboard\"},{\"key\":\"pitch\",\"value\":\"n.推销\",\"form\":\"pitch\"},{\"key\":\"powder\",\"value\":\"n.粉末\",\"form\":\"powder\"},{\"key\":\"leave\",\"value\":\"v.忘带\",\"form\":\"leave / left / left / leaving\"},{\"key\":\"look forward to\",\"value\":\"v.期待\",\"form\":\"look forward to\"},{\"key\":\"recruit\",\"value\":\"v.招募\",\"form\":\"recruit\"},{\"key\":\"expect\",\"value\":\"v.期望\",\"form\":\"expect\"},{\"key\":\"foot\",\"value\":\"n.英尺\",\"form\":\"foot / feet\"},{\"key\":\"across\",\"value\":\"adv.横跨\",\"form\":\"across\"},{\"key\":\"ultimately\",\"value\":\"adv.最终\",\"form\":\"ultimately\"},{\"key\":\"decision\",\"value\":\"n.决定\",\"form\":\"decision\"},{\"key\":\"decide\",\"value\":\"v.决定\",\"form\":\"decide\"}]');
INSERT INTO `essay` VALUES (180, 'Youtube视频标题、内容、评论', '<p><strong><span style=\"color: rgb(249, 129, 129)\">saturated </span></strong>fat</p><hr><p>饱和脂肪（一种不健康的脂肪：动物油，奶油，椰子油，棕榈油）</p>', '[{\"key\":\"saturate\",\"value\":\"饱和化合物;饱和的\",\"form\":\"saturate\"}]');
INSERT INTO `essay` VALUES (181, 'The Shawshank Redemption', '<p>The Shawshank <strong><span style=\"color: #F98181\">Redemption</span></strong></p><p>肖申克的<strong><span style=\"color: #F98181\">救赎</span></strong></p>', NULL);
INSERT INTO `essay` VALUES (182, 'Youtube视频标题、内容、评论', '<p><strong><span style=\"color: #F98181\">instant ramen</span></strong></p><hr><p>方便面</p>', NULL);
INSERT INTO `essay` VALUES (183, 'Youtube视频标题、内容、评论', '<p>chinese <strong><span style=\"color: rgb(249, 129, 129)\">cabbage</span></strong></p><p>red <strong><span style=\"color: #F98181\">cabbage</span></strong></p><hr><p>大白菜</p><p>紫甘蓝</p>', NULL);
INSERT INTO `essay` VALUES (185, 'Youtube视频标题、内容、评论', '<p>every highlight from USA <strong><span style=\"color: #F98181\">exhibition </span></strong>games(5-0) </p><hr><p>美国<strong><span style=\"color: #F98181\">表演</span></strong>赛的所有精彩瞬间(5-0)</p>', NULL);
INSERT INTO `essay` VALUES (186, 'Youtube视频标题、内容、评论', '<p>Hello! I\'m Korean.</p><p>I\'m feeling <strong><span style=\"color: rgb(249, 129, 129)\">healed </span></strong>while watching this video.</p><p>Please post a lot of good videos.</p><p>I\'m always <strong><span style=\"color: rgb(249, 129, 129)\">rooting </span></strong>for you.</p><hr><p>你好！我是韩国人。</p><p>看这个视频，我感到<strong><span style=\"color: rgb(249, 129, 129)\">被治愈</span></strong>。</p><p>请多发好视频。</p><p>我一直<strong><span style=\"color: rgb(249, 129, 129)\">支持</span></strong>你。</p>', NULL);
INSERT INTO `essay` VALUES (188, 'Youtube视频标题、内容、评论', '<p>Stephen Curry <strong><span style=\"color: #F98181\">tours </span></strong>London</p><hr><p>库里游览伦敦</p>', NULL);
INSERT INTO `essay` VALUES (189, 'Youtube视频标题、内容、评论', '<p><strong><span style=\"color: rgb(249, 129, 129)\">colossal squid</span></strong></p><p>A <strong><span style=\"color: #F98181\">colossal</span></strong> failure</p><hr><p><strong><span style=\"color: rgb(249, 129, 129)\">巨型章鱼</span></strong></p><p>一个<strong><span style=\"color: #F98181\">巨大的</span></strong>失败</p>', NULL);
INSERT INTO `essay` VALUES (191, '川普遭枪击', '<p>Shooting was an <strong><span style=\"color: rgb(249, 129, 129)\">assassination </span></strong>attempt against Trump.</p><p></p><p>特朗普演讲：6.30 P.M. Trump <strong><span style=\"color: rgb(249, 129, 129)\">takes </span></strong>the stage.</p><p></p><p>马斯克关于中情局安全工作失误的评论：</p><p><strong><u><span style=\"color: rgb(112, 207, 248)\">Extreme</span></u></strong><u> incompetence or it was </u><strong><u><span style=\"color: rgb(249, 129, 129)\">deliberate</span></u></strong><u>.</u></p><p><u>Either way, the <span style=\"color: rgb(51, 51, 51)\">Secret Service</span> leadership must </u><strong><u><span style=\"color: rgb(249, 129, 129)\">resign</span></u></strong><u>.</u></p><p></p><p>It\'s no <strong><span style=\"color: rgb(112, 207, 248)\">more than</span></strong> 150 <strong><span style=\"color: rgb(112, 207, 248)\">yards </span></strong>from the stage.</p><p></p><p><em>川普遭枪击后，中央情报局局长在国会遭盘问</em></p><p><u>Parliamentary: I can speak to you </u><strong><u><span style=\"color: rgb(249, 129, 129)\">in </span><span style=\"color: rgb(112, 207, 248)\">generalities.</span></u></strong></p><p><u>CIA Director: I want </u><strong><u><span style=\"color: rgb(112, 207, 248)\">specifications</span></u></strong><u>.</u></p><p></p><p><em>川普遭枪击后，中央情报局局长在国会遭盘问</em></p><p><u>Parliamentary: in the days before the </u><strong><u><span style=\"color: rgb(112, 207, 248)\">rally</span></u></strong><u>, the <span style=\"color: rgb(51, 51, 51)\">Secret Service</span> had identified the building as a </u><strong><u><span style=\"color: rgb(112, 207, 248)\">vulnerability</span><span style=\"color: rgb(249, 129, 129)\"> </span></u></strong><u>that required special attention.</u></p><p><u>CIA Director: I am still </u><strong><u><span style=\"color: rgb(112, 207, 248)\">looking into</span></u></strong><u> an active investigation.</u></p><p></p><p>Republican National <strong><span style=\"color: rgb(112, 207, 248)\">Convention</span></strong></p><p></p><p>特朗普遇袭生还后在共和党大会的演讲中回忆道：<u> I\'m not </u><strong><u><span style=\"color: rgb(112, 207, 248)\">supposed</span></u></strong><u> to be here tonight.</u></p><p></p><p>path to <strong><span style=\"color: rgb(112, 207, 248)\">ruin</span></strong></p><hr><p></p><p>枪击是针对特朗普的一次<strong><span style=\"color: rgb(112, 207, 248)\">暗杀企图</span></strong>。</p><p></p><p>特朗普演讲：<u>下午 6 点 30 分，特朗普</u><strong><u><span style=\"color: rgb(249, 129, 129)\">登台</span></u></strong>。</p><p></p><p>马斯克关于特勤局工作失误的评论：</p><p><u>极其无能，要么是故意的。</u></p><p><u>无论如何，特勤局领导层必须辞职。</u></p><p></p><p>特朗普被枪击，据报道，枪手所趴的房子<u>距离讲台不大于150码</u></p><p></p><p><em>川普遭枪击后，特勤局局长在国会遭盘问</em></p><p><u>局长：我可以大概地跟你讲。</u></p><p><u>议员：我要具体情况。</u></p><p></p><p><em>川普遭枪击后，特勤局局长在国会遭盘问</em></p><p><u>议员：在</u><strong><u><span style=\"color: rgb(249, 129, 129)\">集会</span></u></strong><u>前几天，特勤局已认定那座建筑是一个</u><strong><u><span style=\"color: rgb(249, 129, 129)\">薄弱</span></u></strong><u>环节，需要特别关注的。</u></p><p><u>局长： 我仍在进行积极的调查。</u></p><p></p><p>共和党全国代表大会</p><p></p><p>特朗普遇袭生还后在共和党大会的演讲中回忆道：<u>我不应该在这里</u>，<u>今晚。</u></p><p></p><p>毁灭之路</p>', '[{\"key\":\"assassination\",\"value\":\"暗杀\",\"form\":\"assassination\"},{\"key\":\"deliberate\",\"value\":\"故意的\",\"form\":\"deliberate\"},{\"key\":\"resign\",\"value\":\"辞职\",\"form\":\"resign\"},{\"key\":\"incompetence\",\"value\":\"不称职;不胜任\",\"form\":\"incompetence\"},{\"key\":\"yard\",\"value\":\"长度单位码\",\"form\":\"yard\"},{\"key\":\"specification\",\"value\":\"说明书;细节\",\"form\":\"specification\"},{\"key\":\"specific\",\"value\":\"具体的\",\"form\":\"specific\"},{\"key\":\"generality\",\"value\":\"大概;笼统\",\"form\":\"generality\"},{\"key\":\"rally\",\"value\":\"集会\",\"form\":\"rally\"},{\"key\":\"vulnerability\",\"value\":\"漏洞;弱点\",\"form\":\"vulnerability\"},{\"key\":\"look into\",\"value\":\"调查\",\"form\":\"look into\"},{\"key\":\"convention\",\"value\":\"政党大会\",\"form\":\"convention\"},{\"key\":\"ruin\",\"value\":\"毁灭\",\"form\":\"ruin\"},{\"key\":\"supposed\",\"value\":\"理应的\",\"form\":\"supposed\"},{\"key\":\"in\",\"value\":\"以某种方式;在场所里面\",\"form\":\"in\"},{\"key\":\"extreme\",\"value\":\"极度的\",\"form\":\"extreme\"},{\"key\":\"Secret Service\",\"value\":\"美国特勤局\",\"form\":\"Secret Service\"}]');
INSERT INTO `essay` VALUES (193, '红警指令台词', '<p>unit <strong><span style=\"color: rgb(249, 129, 129)\">promoted</span></strong></p><p>ore miner under attack</p><hr><p>作战单位<strong><span style=\"color: rgb(249, 129, 129)\">升级</span></strong>了</p><p><strong><span style=\"color: #F98181\">采矿车</span></strong>正在遭受攻击</p>', NULL);
INSERT INTO `essay` VALUES (195, 'Michael Jordan remembers his \'little brother\' Kobe Bryant.', '<p>I <strong><span style=\"color: rgb(249, 129, 129)\">would </span></strong>say good morning, but it\'s afternoon. I\'<strong><span style=\"color: rgb(112, 207, 248)\">m grateful to</span></strong> Vanessa and the Bryant family for the opportunity to speak today. I\'<strong><span style=\"color: rgb(112, 207, 248)\">m grateful to</span></strong> be here to honor Gigi and <strong><span style=\"color: rgb(249, 129, 129)\">celebrate </span></strong>the gifts that Kobe gave us all –&nbsp; what he accomplished as a basketball player, as a businessman, and a storyteller and as a father.&nbsp; In the game of basketball, in life, as a parent – Kobe left nothing in the <strong><span style=\"color: rgb(249, 129, 129)\">tank</span></strong>. He left it all on the <strong><span style=\"color: rgb(249, 129, 129)\">floor</span></strong>.</p><p>&nbsp;</p><p>Maybe it surprised people that Kobe and I were very close friends. But we were very close friends.&nbsp; Kobe was my dear friend. He was like a little brother.&nbsp; Everyone always wanted to talk about the <strong><span style=\"color: rgb(249, 129, 129)\">comparisons </span></strong>between he and I.&nbsp; I just wanted to talk about Kobe.</p><p>&nbsp;</p><p>You know all of us have brothers and sisters, little brothers, little sisters,&nbsp; who for whatever reason always <strong><span style=\"color: rgb(112, 207, 248)\">tend to</span></strong> get in your <strong><span style=\"color: rgb(249, 129, 129)\">stuff</span></strong>, your closet, your shoes, everything.&nbsp; It was a <strong><span style=\"color: rgb(249, 129, 129)\">nuisance</span></strong>– if I can say that word – but that nuisance <strong><span style=\"color: rgb(112, 207, 248)\">turned into</span></strong> love over <strong><span style=\"color: rgb(112, 207, 248)\">a period of time</span></strong>.&nbsp; Just because the <strong><span style=\"color: rgb(249, 129, 129)\">admiration </span></strong>that they have for you as big brothers or big sisters,&nbsp; the questions they\'re wanting to know every little detail about life that they were about to<strong><span style=\"color: rgb(112, 207, 248)\"> embark on</span></strong>.</p><p>&nbsp;</p><p>He <strong><span style=\"color: rgb(112, 207, 248)\">used to</span></strong> call me, <strong><span style=\"color: rgb(249, 129, 129)\">text </span></strong>me, 11:30, 2:30, 3 o\'clock <strong><span style=\"color: rgb(112, 207, 248)\">in the morning</span></strong>, talking about post-up moves, footwork, and sometimes, the triangle.&nbsp; At first, it was an <strong><span style=\"color: rgb(249, 129, 129)\">aggravation</span></strong>. But then it turned into a <strong><span style=\"color: rgb(249, 129, 129)\">certain </span></strong>passion. This kid had passion like you would never know.&nbsp; It\'s an amazing thing about passion. If you love something, if you have a strong passion for something,&nbsp; you would go to the extreme to try to understand or try to get it. <strong><span style=\"color: rgb(249, 129, 129)\">Either </span></strong>ice cream, cokes, hamburgers, whatever you have a love for.&nbsp; If you have to walk, you would go get it. If you have to beg someone, you would go get it.</p><p>&nbsp;</p><p>What Kobe Bryant was to me was the <strong><span style=\"color: rgb(249, 129, 129)\">inspiration</span></strong> that someone truly cared about the way<span style=\"color: rgb(250, 250, 250)\"> </span><strong><span style=\"color: rgb(249, 129, 129)\">either </span></strong>I played the game or the way that he wanted to play the game.&nbsp; He wanted to be the best basketball player that he could be. And as I got to know him, I wanted to be the best big brother that I could be.</p><p>&nbsp;</p><p>To do that, you have to<strong><span style=\"color: rgb(112, 207, 248)\"> put up with</span></strong> the <strong><span style=\"color: rgb(249, 129, 129)\">aggravation</span></strong>, the late-night calls, or the <strong><span style=\"color: rgb(249, 129, 129)\">dumb </span></strong>questions.&nbsp; I <strong><span style=\"color: rgb(112, 207, 248)\">took great pride</span></strong> as I got to know Kobe Bryant that he was just trying to be a better person – a better basketball player.&nbsp; We talked about business, we talked about family, we talked about everything. And he was just trying to be a better person.</p><p>&nbsp;</p><p>Now, he\'s got me and I\'ll have to look at another crying <strong><span style=\"color: rgb(249, 129, 129)\">meme </span></strong>for the next ...&nbsp;</p><p>&nbsp;</p><p>I told my wife I wasn\'t gonna do this cause I didn\'t want to see that for the next three or four years.&nbsp; That is what Kobe Bryant does to me. I\'m pretty sure Vanessa and his friends all can say the same thing –&nbsp; he knows how to get to you in a way that affects you personally, even though he\'s being <strong><span style=\"color: rgb(112, 207, 248)\">a pain in the ass</span></strong>.&nbsp; But you have a sense of love for him and the way that he can <strong><span style=\"color: rgb(112, 207, 248)\">bring out</span></strong> the best in you. And he did that for me.&nbsp;</p><p>&nbsp;</p><p>I remember maybe <strong><span style=\"color: rgb(112, 207, 248)\">a couple months ago</span></strong> he sends me a text and he said, \"I\'m trying to teach my <strong><span style=\"color: rgb(249, 129, 129)\">daughter </span></strong>some moves.&nbsp; And I don\'t know what I was thinking or what I was working on, but what were you thinking about when you were growing up trying to <strong><span style=\"color: rgb(249, 129, 129)\">work on</span></strong> your moves?\"&nbsp;</p><p>I said \"What age?\"</p><p>He says \"12\".</p><p>I said \"12, I was trying to play baseball.\"</p><p>He sends me a text back saying \"Laughing my ass off.\"&nbsp; And this is at 2 o\'clock <strong><span style=\"color: rgb(112, 207, 248)\">in the morning</span></strong>.</p><p>&nbsp;</p><p>But the thing about him was we could talk about anything that related to basketball but we could talk about anything that related to life.&nbsp; And we, as we grew up in life, rarely have friends that we can have conversations like that.&nbsp; Well, it\'s even rarer when you can grow up against <strong><span style=\"color: rgb(249, 129, 129)\">adversaries </span></strong>and have conversations like that.&nbsp;</p><p>&nbsp;</p><p>I went and saw Phil Jackson in 1999, maybe 2000, I don\'t know, when Phil was here in L.A. And I walk in and Kobe\'s sitting there.</p><p>And the first thing,</p><p>Kobe said, \"Did you bring your shoes?\"</p><p>\"No, I wasn\'t thinking about playing.\"</p><p>&nbsp;</p><p>But his attitude to competeand play against someone he felt like he could enhance and <strong><span style=\"color: rgb(249, 129, 129)\">improve </span></strong>his game, that\'s what I loved about the kid.&nbsp; I absolutely loved the kid. No matter where he saw me, it was a challenge.&nbsp; And I <strong><span style=\"color: rgb(249, 129, 129)\">admired </span></strong>him because his passion, you <strong><span style=\"color: rgb(249, 129, 129)\">rarely </span></strong>see someone who is looking and trying to improve each and every day, not just in sports,&nbsp; but as a parent, as a <strong><span style=\"color: rgb(249, 129, 129)\">husband</span></strong>. I am <strong><span style=\"color: rgb(249, 129, 129)\">inspired </span></strong>by what he\'s done, and what he\'s shared with Vanessa, and what he\'s shared with his kids.</p><p>&nbsp;</p><p>I have a daughter who\'s 30 and I became a grandparent. And I have two twins.&nbsp; I have twins at 6. I can\'t wait to get home to become a GirlDad and to hug them and to see the love and smiles that they bring to us as parents.&nbsp; He taught me that just by looking at this tonight, looking at how he responded and reacted with the people he actually loved.&nbsp; These are the things that we will continue to learn from Kobe Bryant.</p><p>&nbsp;</p><p>To Vanessa, Natalia, Bianka, Capri, my wife and I will keep you close in our hearts and our <strong><span style=\"color: rgb(249, 129, 129)\">prayers</span></strong>. We will always be here for you.&nbsp; Always. I also want to offer our <strong><span style=\"color: rgb(249, 129, 129)\">condolences </span></strong>and support to all the families affected by this <strong><span style=\"color: rgb(249, 129, 129)\">enormous tragedy</span></strong>.</p><p>&nbsp;</p><p>Kobe gave every last <strong><span style=\"color: rgb(249, 129, 129)\">ounce </span></strong>of himself to whatever he was doing, After basketball, he showed a creative side to himself that I didn\'t think any of us knew he had.&nbsp; In <strong><span style=\"color: rgb(249, 129, 129)\">retirement</span></strong>, he seemed so happy. He found new passions. And he continued to give back, as a coach, in his community.&nbsp; More importantly, he was an amazing dad, amazing husband, who <strong><span style=\"color: rgb(112, 207, 248)\">dedicated himself to</span></strong> his family and who loved his daughters with all his heart.&nbsp; Kobe never left anything on the court. And I think that\'s what he would want for us to do.</p><p>&nbsp;</p><p>No one knows how much time we have. That\'s why we must live in the momen,&nbsp; we must <strong><span style=\"color: rgb(112, 207, 248)\">enjoy the moment</span></strong>, we must reach and see and spend as much time as we can with our families and friends and the people that we absolutely love.&nbsp;<strong><span style=\"color: rgb(112, 207, 248)\"> </span><em><span style=\"color: rgb(112, 207, 248)\">To live in the moment</span></em><span style=\"color: rgb(112, 207, 248)\"> </span></strong>means to enjoy each and every one that we come in contact with.&nbsp;</p><p>&nbsp;</p><p>When Kobe Bryant died, a piece of me <strong><span style=\"color: rgb(249, 129, 129)\">died</span></strong>. And as I look in this <strong><span style=\"color: rgb(249, 129, 129)\">arena </span></strong>and across the <strong><span style=\"color: rgb(249, 129, 129)\">globe</span></strong>, a piece of you died, or else you wouldn\'t be here.&nbsp; Those are the memories that we have to live with and we learn from.&nbsp;</p><p>&nbsp;</p><p>I promise you from this day forward, I will live with the memories of knowing that I had a little brother and I tried to help in every way I could.</p><p>Please, rest in peace little brother.</p><p></p><hr><p>&nbsp;</p>', '[{\"key\":\"tragedy\",\"value\":\"悲剧;不幸\",\"form\":\"tragedy\"},{\"key\":\"enormous\",\"value\":\"巨大的\",\"form\":\"enormous\"}]');
INSERT INTO `essay` VALUES (196, 'Youtube视频标题、内容、评论', '<p>Speak <strong><span style=\"color: #F98181\">in </span></strong>English</p><hr><p>讲英语</p>', NULL);
INSERT INTO `essay` VALUES (199, 'CNN', '<p><strong><span style=\"color: #F98181\">manual labor</span></strong></p><hr><p>体力劳动</p>', NULL);
INSERT INTO `essay` VALUES (201, 'Youtube视频标题、内容、评论', '<p>casualties: </p><p>North Korea: 406,000 </p><p>South Korea: 217,000</p><p>America: 26,568</p><p>China: 600,000</p><hr><p>（朝鲜战争）伤亡情况</p>', NULL);
INSERT INTO `essay` VALUES (202, 'Titanic', '<p>网友评论：<u>Titanic will always be one of the legendary movie </u><strong><u><span style=\"color: #F98181\">ever</span></u></strong><u>.</u></p><p></p><p>罗丝想从船尾跳船，结果与杰克救她，二人双双倒在地上，卡尔等人来了之后，罗丝解释： <u>I was </u><strong><u><span style=\"color: rgb(249, 129, 129)\">leaning over</span></u></strong><u> and I </u><strong><u><span style=\"color: rgb(249, 129, 129)\">slipped</span></u></strong><u>.</u></p><p></p><p>泰坦尼克号在船头飞翔的经典桥段： <u>Keep your eyes closed. Don\'t peek.</u></p><p></p><p>泰坦尼克号马上要沉没时，只允许女性上救生艇，男性也往前挤，船警警告人群：Now stand back, <strong><span style=\"color: rgb(249, 129, 129)\">damn </span></strong>you!</p><p></p><p>卡尔想给罗丝惊喜，说道：The Heart Of The Ocean. 56 <strong><span style=\"color: rgb(249, 129, 129)\">carats </span></strong>to be exact.</p><hr><p></p><p>网友评论：<u>《泰坦尼克号》</u><strong><u><span style=\"color: #F98181\">永远</span></u></strong><u>是一部传奇电影之一。</u></p><p></p><p>罗丝想从船尾跳船，结果与杰克救她，二人双双倒在地上，卡尔等人来了之后，罗丝解释： <u>我</u><strong><u><span style=\"color: rgb(249, 129, 129)\">俯身</span></u></strong><u>，</u><strong><u><span style=\"color: rgb(249, 129, 129)\">滑倒</span></u></strong><u>了。</u></p><p></p><p>泰坦尼克号在船头飞翔的经典桥段： 闭上眼。别偷看。</p><p></p><p>泰坦尼克号马上要沉没时，只允许女性上救生艇，男性也往前挤，船警警告人群：<u>立马往后站，</u><strong><u><span style=\"color: rgb(249, 129, 129)\">警告</span></u></strong><u>你们！</u></p><p></p><p>卡尔想给罗丝惊喜，说道：海洋之心。确切地说是 56 <strong><span style=\"color: rgb(249, 129, 129)\">克拉</span></strong>。</p>', NULL);
INSERT INTO `essay` VALUES (204, 'Youtube视频标题、内容、评论', '<p>A parent can sign forms on <strong><span style=\"color: #F98181\">behalf </span></strong>of children when they are young.</p><hr><p>父母可以在孩子年幼时<strong><span style=\"color: #F98181\">代其</span></strong>签署表格</p>', NULL);
INSERT INTO `essay` VALUES (206, 'Youtube视频标题、内容、评论', '<p>God bless you.</p><hr><p>上帝会保佑你</p>', NULL);
INSERT INTO `essay` VALUES (207, 'Youtube视频标题、内容、评论', '<p>A man who knows how to cook that is a <strong><span style=\"color: #F98181\">blessing</span></strong></p><hr><p>一个会做饭的男人真是一种<strong><span style=\"color: #F98181\">福气</span></strong></p>', NULL);
INSERT INTO `essay` VALUES (208, 'Youtube视频标题、内容、评论', '<p>No other movie can <strong><span style=\"color: #F98181\">surpass </span></strong>this Titanic movie. </p><p>After so many years had passed it\'s still the favorite film movie of our time.</p><hr><p>没有其他电影可以<strong><span style=\"color: #F98181\">超越</span></strong>泰坦尼克号这部电影。</p><p>这么多年过去了，它仍然是我们这个时代最喜爱的电影。</p>', NULL);
INSERT INTO `essay` VALUES (210, 'Youtube视频标题、内容、评论', '<p>24年总统大选前，CNN对特朗普的采访问道：如果你当选，你会继续向乌克兰提供武器和资金吗？</p><p>特朗普： I will have that war <strong><span style=\"color: #F98181\">settled </span></strong>in one day. </p><hr><p>24年总统大选前，CNN对特朗普的采访问道：如果你当选，你会继续向乌克兰提供武器和资金吗？</p><p>特朗普：我会在一天之内让战争<strong><span style=\"color: #F98181\">结束</span></strong>。</p>', NULL);
INSERT INTO `essay` VALUES (212, 'Youtube视频标题、内容、评论', '<p><strong><span style=\"color: #F98181\">tickling </span></strong>my girlfriend</p><hr><p><strong><span style=\"color: #F98181\">咯吱</span></strong>我女朋友</p>', NULL);
INSERT INTO `essay` VALUES (214, 'Youtube视频标题、内容、评论', '<p>The wild knows no <strong><span style=\"color: #F98181\">mercy</span></strong>. </p><hr><p>动物没有<strong><span style=\"color: #F98181\">怜悯</span></strong>之心</p>', NULL);
INSERT INTO `essay` VALUES (218, 'Youtube视频标题、内容、评论', '<p><strong><span style=\"color: #F98181\">prime rib</span></strong></p><hr><p><strong><span style=\"color: #F98181\">优质牛排</span></strong></p>', NULL);
INSERT INTO `essay` VALUES (219, 'Youtube视频标题、内容、评论', '<p>一男子摘下一串成熟变黄的香蕉吃了起来，他是这样形容的： </p><p>A little <strong><span style=\"color: #F98181\">gummy</span></strong>, super <strong><span style=\"color: #F98181\">creamy </span></strong>and <strong><span style=\"color: #F98181\">moist</span></strong>.</p><hr><p>有点<strong><span style=\"color: #F98181\">粘</span></strong>，非常<strong><span style=\"color: #F98181\">滑腻</span></strong>而且<strong><span style=\"color: #F98181\">多汁</span></strong>。</p>', NULL);
INSERT INTO `essay` VALUES (220, 'Youtube视频标题、内容、评论', '<p><strong><span style=\"color: #F98181\">moist </span></strong>cream</p><hr><p><strong><span style=\"color: #F98181\">保湿</span></strong>霜</p>', NULL);
INSERT INTO `essay` VALUES (222, 'Youtube视频标题、内容、评论', '<p>delicious bone <strong><span style=\"color: #F98181\">marrow</span></strong></p><hr><p>美味的<strong><span style=\"color: #F98181\">骨髓</span></strong></p>', NULL);
INSERT INTO `essay` VALUES (225, 'Youtube视频标题、内容、评论', '<p>Youtube视频，博主放了一个背包，里面装满香蕉和面包，假装走开了。来了许多猴子开始翻包。</p><p>网友： First monkey was an experienced <strong><span style=\"color: #F98181\">thief</span></strong>. </p><hr><p>网友：第一只猴子是一个经验丰富的<strong><span style=\"color: #F98181\">小偷.</span></strong></p>', NULL);
INSERT INTO `essay` VALUES (227, 'Youtube视频标题、内容、评论', '<p>Youtube 知名pitbull博主。 </p><p>网友评论： The dog doesn\'t care about the <strong><span style=\"color: #F98181\">presentation</span></strong>, he just wants to eat. </p><hr><p>网友评论： 这只狗不关心<strong><span style=\"color: #F98181\">给</span></strong>它什么，它只是想吃。</p>', NULL);
INSERT INTO `essay` VALUES (228, 'Youtube视频标题、内容、评论', '<p>描述了AI在处理其他视频的过程：...，<u>sport videos </u><strong><u><span style=\"color: rgb(249, 129, 129)\">present </span></u></strong><u>additional challenges caused by camera movement and fast-moving objects and players.</u></p><hr><p>描述了AI在处理其他视频的过程：...，<u>体育视频</u><strong><u><span style=\"color: rgb(249, 129, 129)\">出现</span></u></strong><u>了额外的挑战，这些挑战由摄像机移动和快速移动的物体和球员产生的。</u></p>', NULL);
INSERT INTO `essay` VALUES (229, 'test', 'drill it\n将球打进', NULL);
INSERT INTO `essay` VALUES (230, 'test', 'cheating with a teammate\'s wife\n与队友的妻子出轨', NULL);
INSERT INTO `essay` VALUES (231, 'test', 'Youtuber Maori Blue的狗狗吃饭很乖，网友评论：\nThis dog has more manners than most of my friends.\n这只狗比我的大多数朋友都更有礼貌.', NULL);
INSERT INTO `essay` VALUES (232, 'test', 'Steve Kerr Reacts to Klay Thompson Leaving Golden State for Dallas Mavs & USA Basketball Camp.\n史蒂夫·科尔对克莱·汤普森离开金州勇士队前往达拉斯小牛队和美国篮球训练营的回应', NULL);
INSERT INTO `essay` VALUES (233, 'test', 'Three-Point Contest\nNBA 三分球大赛', NULL);
INSERT INTO `essay` VALUES (234, 'test', 'global maths contest\n全球数学竞赛', NULL);
INSERT INTO `essay` VALUES (235, 'test', 'Li, 27, is part of a growing base of Chinese workers swapping high-pressure office jobs for flexible blue-collar work.\n27 岁的李先生是中国越来越多放弃高压办公室工作、选择灵活蓝领工作的工人之一。', NULL);
INSERT INTO `essay` VALUES (236, 'test', 'Wife Swap\n换妻', NULL);
INSERT INTO `essay` VALUES (237, 'test', 'I always thought Java uses pass-by-reference. However, I read a blog post which claims that Java uses pass-by-value.\n我一直以为 Java 使用按引用传递。然而，我读到一篇博客文章声称 Java 使用按值传递。', NULL);
INSERT INTO `essay` VALUES (238, 'test', '红色警戒中的无畏级驱逐舰在移动时，会发出口令：\nmain engines engaged\n主发动机运转', NULL);
INSERT INTO `essay` VALUES (239, 'test', 'an engaged couple\n订婚夫妇', NULL);
INSERT INTO `essay` VALUES (240, 'test', '<p>Putin and Kim Jong Un <strong><span style=\"color: #F98181\">Ride </span></strong>Through North Korea <strong><span style=\"color: #F98181\">Military Parade.</span></strong></p><hr><p>普京与金正恩乘<strong><span style=\"color: #F98181\">坐车</span></strong>检阅朝鲜<strong><span style=\"color: #F98181\">阅兵式</span></strong></p>', NULL);
INSERT INTO `essay` VALUES (241, 'test', 'Supreme Leader of North Korea Kim Jong\n朝鲜最高领导人金正恩', NULL);
INSERT INTO `essay` VALUES (242, '金正恩画像', '<p>Kim Jong Un <span style=\"color: #70CFF8\"><strong><em>Portrait</em></strong></span>-2.jpg</p><p>金正恩画像-2.jpg</p>', '[{\"key\":\"portrait\",\"value\":\"画像\",\"form\":\"portrait\"}]');
INSERT INTO `essay` VALUES (243, '你住哪', '<p>Where do you <span style=\"color: #70CFF8\"><strong><em>live</em></strong></span>? 你住在哪?</p><p>I <span style=\"color: #70CFF8\"><strong><em>live in</em></strong></span> Fengtai District. 我住丰台区.</p>', '[{\"key\":\"live\",\"value\":\"生活;居住;现场直播的\",\"form\":\"live\"}]');
INSERT INTO `essay` VALUES (244, 'test', 'I will live with the memories of knowing that I had a little brother and I tried to help in every way I could.\n我会永远记住我有一个小弟弟，曾经我尽我所能帮过他。', NULL);
INSERT INTO `essay` VALUES (245, 'test', 'As we grew up in life, we rarely have friends that we can have conversations like that.\n随着我们逐渐长大，我们很少有可以这样交谈的朋友。', NULL);
INSERT INTO `essay` VALUES (246, 'test', 'To Vanessa, Natalia, Bianka, Capri, my wife and I will keep you close in our hearts and our prayers.\n致 Vanessa、Natalia、Bianka、Capri，我和我的妻子将把你们放在我们的心中，为你们祈祷', NULL);
INSERT INTO `essay` VALUES (247, 'test', 'I also want to offer our condolences and support to all the families affected by this enormous tragedy.\n我还想向所有受这场巨大悲剧影响的家庭表示哀悼和支持。', NULL);
INSERT INTO `essay` VALUES (248, 'test', 'He used to call me, text me, 11:30, 2:30, 3 o\'clock in the morning, talking about post-up moves, footwork, and sometimes, the triangle. \n他常常在上午 11 点半、2 点半、3 点给我打电话、发短信，讨论背身单打动作、脚步动作，有时还有三角进攻。', NULL);
INSERT INTO `essay` VALUES (249, 'test', 'they\'re wanting to know every little detail about life that they were about to embark on.\n他们想要了解即将开始的生活的每一个细节。', NULL);
INSERT INTO `essay` VALUES (250, 'test', 'they\'re wanting to know every little detail about life that they were about to embark on.\n他们想知道即将开始的生活的每一个细节。', NULL);
INSERT INTO `essay` VALUES (251, 'test', 'get over here\n到这边来', NULL);
INSERT INTO `essay` VALUES (252, 'test', 'You know all of us have brothers and sisters, little brothers, little sisters,  who for whatever reason always tend to get in your stuff, your closet, your shoes, everything. \n你知道我们每个人都有兄弟姐妹、弟弟或妹妹，他们无论出于什么原因总是会乱动你的东西，你的衣柜、你的鞋子，所有的东西。', NULL);
INSERT INTO `essay` VALUES (253, 'test', 'You know all of us have brothers and sisters, little brothers, little sisters,  who for whatever reason always tend to get in your stuff, your closet, your shoes, everything. \n你知道我们每个人都有兄弟姐妹、弟弟或妹妹，他们无论出于什么原因总是会乱动你的东西，你的衣柜、你的鞋子，所有的东西。', NULL);
INSERT INTO `essay` VALUES (254, 'test', 'Everyone always wanted to talk about the comparisons between he and I.  I just wanted to talk about Kobe.\n总有人想拿我和他作比较，我只想谈谈科比。', NULL);
INSERT INTO `essay` VALUES (255, 'test', 'In the game of basketball, in life, as a parent – Kobe left nothing in the tank. He left it all on the floor.\n在篮球比赛中，在生活中，作为父母，科比已经竭尽全力了。他把一切都奉献给了球场。', NULL);
INSERT INTO `essay` VALUES (256, 'test', 'I\'m grateful to be here to honor Gigi and celebrate the gifts that Kobe gave us all.\n我很感激能在这里纪念吉吉，歌颂科比给我们所有人的礼物', NULL);
INSERT INTO `essay` VALUES (257, 'test', 'Warning: Please ensure that you address any authorization issues related to the dataset on your own.\n警告：请确保您自行解决与数据集相关的任何授权问题。', NULL);
INSERT INTO `essay` VALUES (258, 'test', 'Youtube 男子举牌站在女友床边，等她醒来求婚。结果女优醒了就放了个响屁，男子撕碎表白牌子，撅了吉他，转身离开。\n网友评论：\nThe dude just walked away like he never farted in his life.\n那家伙就走开了，就像他这辈子从来没有放过屁一样。', NULL);
INSERT INTO `essay` VALUES (259, 'test', 'Youtuber视频，一家人在动物园水池旁喂河马南瓜。\n\n网友评论1：\nthis is simultaneously adorable and absolutely terrifying.\n这既可爱又令人恐惧。\n\n网友评论2：\nImage he can crush the skull like nothing!\n想象一下他可以轻而易举地粉碎头骨！', NULL);
INSERT INTO `essay` VALUES (260, 'test', 'I\'m grateful to be here to honor Gigi and celebrate the gifts that Kobe gave us all .\n我很感激能在这里纪念吉吉，庆祝科比给我们所有人的礼物.', NULL);
INSERT INTO `essay` VALUES (261, 'test', 'I\'m grateful to Vanessa and the Bryant family for the opportunity to speak today.\n我很感谢瓦妮莎和科比家族给我今天发言的机会', NULL);
INSERT INTO `essay` VALUES (262, 'test', 'If you have to beg someone, you would go get it.\n如果你想求人办事，你就得研究怎么去做。', NULL);
INSERT INTO `essay` VALUES (263, 'test', 'And I admired him because his passion, you rarely see someone who is looking and trying to improve each and every day, not just in sports,  but as a parent, as a husband.\n我钦佩他，因为他的热情，你很少看到有人每天都在寻求并努力进步，不仅在运动方面，而且作为父母，作为丈夫。', NULL);
INSERT INTO `essay` VALUES (264, 'test', 'Russ taunts mavericks crowd after flagrant foul.\n威斯布鲁克在恶意犯规后嘲讽小牛队球迷.', NULL);
INSERT INTO `essay` VALUES (265, 'test', 'fishing pole\n钓鱼竿', NULL);
INSERT INTO `essay` VALUES (266, 'test', 'sugar cane\n甘蔗', NULL);
INSERT INTO `essay` VALUES (267, 'test', '2024.7.5日 CNN 举办的 特朗普与拜登的辩论会：\nWhat does Trump say to voters who believe he violated his [oath of office] on January 6 and worry he will do it again?\n对于那些认为特朗普违背了 1 月 6 日的[就职誓言]并担心他会再次这么做的选民，特朗普会说些什么呢？', NULL);
INSERT INTO `essay` VALUES (268, 'test', '2024.7.5日 CNN 举办的 特朗普与拜登的辩论会：\nWhat does Trump say to voters who believe he [violated] his oath of office on January 6 and worry he will do it again?\n对于那些认为特朗普违背了 1 月 6 日的就职誓言并担心他会再次这么做的选民，特朗普会说些什么呢？', NULL);
INSERT INTO `essay` VALUES (269, 'test', 'Youtube视频, 乌鸦在鹰的窝里攻击小鹰, 老鹰突然回来, 最终逮到了乌鸦并将其在空中撕碎.\n网友评论:\nThis is the fate of anyone who messes with Hawks.\n这是任何与招惹鹰的人的下场', NULL);
INSERT INTO `essay` VALUES (270, 'test', 'Youbute视频, 普京出席某国际峰会, 落座时向马克龙握手, 却忽视英国国王查尔斯.\n网友评论:\nBro is real gangsta.\n兄弟是真正的黑帮', NULL);
INSERT INTO `essay` VALUES (271, 'test', 'Youtube一段视频介绍了普京的保镖专业性:\n网友:\nDon\'t sneeze when this guy is around, you\'ll regret it.\n当这个家伙在你身边时不要打喷嚏，你会后悔的', NULL);
INSERT INTO `essay` VALUES (272, 'test', 'World Cup Qualifying\n世界杯资格赛', NULL);
INSERT INTO `essay` VALUES (273, 'test', 'Youtube一段视频介绍了普京的保镖专业性:\n网友:\nAs Putin used to be KGB chief, you can imagine how qualified he is to choose a bodyguard.\n普京曾担任过克格勃头子，他非常有资格, 在选保镖方面.', NULL);
INSERT INTO `essay` VALUES (274, 'test', 'It also assessed frequency and intensity of unwanted scratching behaviors, which was then evaluated using a combined scratching index and the cats divided into groups based on these behaviors.\n它还评估了不必要的抓挠行为的频率和强度，然后作为组合抓挠指数进行评估，并根据这些行为将猫分成几组。', NULL);
INSERT INTO `essay` VALUES (275, 'test', 'Producer Price Index (PPI)\n工业品出厂价格指数', NULL);
INSERT INTO `essay` VALUES (276, 'test', 'It also assessed frequency and intensity of unwanted scratching behaviors, which was then evaluated using a combined scratching index and the cats divided into groups based on these behaviors.\n它还评估了不必要的抓挠行为的频率和强度，然后作为组合抓挠指数进行评估，并根据这些行为将猫分成几组。', NULL);
INSERT INTO `essay` VALUES (277, 'test', 'Now, a new study delves deep into the domestic lives of cat families to find out just why furniture is being scratched up and how to actually prevent it.\n现在，一项新的研究深入探讨了猫家庭的家庭生活，以找出家具被刮坏的原因以及如何真正防止这种情况。', NULL);
INSERT INTO `essay` VALUES (278, 'test', 'While we may love feline company, there\'s a lot we don\'t understand about their needs.\n虽然我们可能喜欢猫科动物的陪伴，但我们对它们的需求还有很多不了解。', NULL);
INSERT INTO `essay` VALUES (279, 'test', 'Why your cat shreds the sofa – and how to get them to stop for good.\n为什么你的猫会撕碎沙发——以及如何让它们永远停止这种行为', NULL);
INSERT INTO `essay` VALUES (280, 'test', 'Biden [wages] desperate bid to save his campaign.\n拜登拼命挽救竞选活动.', NULL);
INSERT INTO `essay` VALUES (281, 'test', 'Biden [wages] desperate bid to save his campaign.\n拜登拼命挽救竞选活动.', NULL);
INSERT INTO `essay` VALUES (282, 'test', 'Youtube 四川一个博主拿出一块黑乎乎的腊肉，煮了切了吃了一块。\n外国网友评论：\nBro just ate petrified wood.\n兄弟刚刚吃了木化石.', NULL);
INSERT INTO `essay` VALUES (283, 'test', 'Violence broke out when protesters clashed with police as Humphrey accepted the nomination.\n当汉弗莱接受提名时，抗议者与警察发生了冲突，引发了暴力事件。', NULL);
INSERT INTO `essay` VALUES (284, 'test', 'Even after President Lyndon Johnson [bowed out of] the presidential race that year, recognizing his fading popularity and opposition to the war in Vietnam, Humphrey represented a continuation of Johnson’s Vietnam policy.\n即使在林登·约翰逊总统退出当年的总统竞选后，他意识到自己人气下降，并反对越南战争，汉弗莱仍然代表着约翰逊越南政策的延续.', NULL);
INSERT INTO `essay` VALUES (285, '淹没在巨物之下', '<p>Tips for feeling <strong><span style=\"color: rgb(112, 207, 248)\">overwhelmed </span></strong>and <strong><span style=\"color: #70CFF8\">stressed</span></strong>.</p><hr><p>应对感到<strong><span style=\"color: rgb(112, 207, 248)\">不知所措</span></strong>和压力的技巧.</p>', '[{\"key\":\"overwhelming\",\"value\":\"势不可挡的;压倒性的\",\"form\":\"overwhelming\"},{\"key\":\"overwhelmed\",\"value\":\"压力山大的;不知所措的\",\"form\":\"overwhelmed\"},{\"key\":\"overwhelm\",\"value\":\"压倒,淹没在巨物之下\",\"form\":\"overwhelm\"},{\"key\":\"stress\",\"value\":\"强调;使有压力\",\"form\":\"stress\"}]');
INSERT INTO `essay` VALUES (286, '拜登劣迹斑斑的辩论表现', '<p><u>Joe Biden’s </u><strong><u><span style=\"color: rgb(112, 207, 248)\">spotty</span></u></strong><u> debate performance</u> immediately triggered new questions from worried Democrats about whether he would leave the presidential race.</p><p></p><hr><p></p><p><u>拜登</u><strong><u><span style=\"color: rgb(112, 207, 248)\">劣迹斑斑的</span></u></strong><u>辩论表现</u>，直接引发了民主党人的担忧，他们质疑他是否会退出总统竞选。</p>', '[{\"key\":\"spotty\",\"value\":\"劣迹斑斑的\",\"form\":\"spotty\"},{\"key\":\"spot\",\"value\":\"污点\",\"form\":\"spot\"}]');
INSERT INTO `essay` VALUES (287, '成龙作为武术家被低估了', '<p>Jackie Chan is underappreciated as a martial artist. All his acting <strong><span style=\"color: #70CFF8\">aside</span></strong>, that dude is a dynamo. </p><hr><p>成龙作为武术家被低估了。<strong><span style=\"color: #70CFF8\">除了</span></strong>演技之<strong><span style=\"color: #70CFF8\">外</span></strong>，他是个精力充沛的人。aside</p>', '[{\"key\":\"aside\",\"value\":\"抛开...不说\",\"form\":\"aside\"}]');
INSERT INTO `essay` VALUES (290, '街头篮球斗牛一人差点给另一个晃倒', '<p>Youtube视频，美国街头篮球斗牛，一人差点给另一个晃倒。</p><p>网友评论: <u>Bro almost got down </u><strong><u><span style=\"color: rgb(249, 129, 129)\">on his knees</span></u></strong><u> and</u><strong><u><span style=\"color: rgb(112, 207, 248)\"> proposed</span></u></strong><u> to someone in the </u><strong><u><span style=\"color: rgb(112, 207, 248)\">crowd</span></u></strong><u>.</u></p><hr><p>Youtube视频，美国街头篮球斗牛，一人差点给另一个晃倒。</p><p>网友评论: <u>兄弟差点跪下并向人群中的某人求婚的。</u></p>', '[{\"key\":\"propose\",\"value\":\"求婚\",\"form\":\"propose\"},{\"key\":\"on\",\"value\":\"在…上;由…支撑着\",\"form\":\"on\"},{\"key\":\"crowd\",\"value\":\"人群;民众\",\"form\":\"crowd\"}]');
INSERT INTO `essay` VALUES (292, '卡塞尔向杰伦布朗传授技巧', '<p>一段Youtube篮球训练视频中，前森林狼球星，现凯尔特主教，人称三头怪的卡塞尔，正在向杰伦布朗传授技巧: </p><p>网友评论道: <u>This is why you should not </u><strong><u><span style=\"color: #F98181\">underestimate</span></u></strong><u> </u><strong><u><span style=\"color: #70CFF8\">old school</span></u></strong><u>. Lots of current players learn from them. </u></p><p></p><hr><p></p><p>一段Youtube篮球训练视频中，前森林狼球星，现凯尔特主教，人称三头怪的卡塞尔，正在向杰伦布朗传授技巧: </p><p>网友评论道: <u>这就是为什么你不应该低估老派球员。 许多现役球员都向他们学习。</u></p>', '[{\"key\":\"underestimate\",\"value\":\"低估\",\"form\":\"underestimate\"},{\"key\":\"school\",\"value\":\"学校;学派\",\"form\":\"school\"}]');
INSERT INTO `essay` VALUES (296, '中国镇压香港', '<p>How China <strong><span style=\"color: #70CFF8\">crushed </span></strong>Hong Kong </p><hr><p>中国是如何<strong><span style=\"color: #70CFF8\">镇压</span></strong>香港的</p>', '[{\"key\":\"crush\",\"value\":\"暴力挤压;武力镇压\",\"form\":\"crush\"}]');
INSERT INTO `essay` VALUES (297, 'stackoverflow 提问', '<p>stackoverflow上的一个提问: Video.js - loadeddata event never fires - loadeddata 事件在IOS浏览器上失效. </p><p>回答者: <u>I </u><strong><u><span style=\"color: #70CFF8\">suspect </span></u></strong><u>you </u><strong><u><span style=\"color: #70CFF8\">ran into</span></u></strong><u> the same issue I did.</u></p><hr><p>stackoverflow上的一个提问: Video.js - loadeddata event never fires - loadeddata 事件在IOS浏览器上失效. </p><p>回答者: 我<strong><span style=\"color: #70CFF8\">怀疑</span></strong>你<strong><span style=\"color: #70CFF8\">遇到</span></strong>了和我一样的问题.</p>', '[{\"key\":\"suspect\",\"value\":\"怀疑;嫌疑人\",\"form\":\"suspect\"}]');
INSERT INTO `essay` VALUES (298, '朝俄战略互助条约', '<p>2024年6月普京再次当选总统，受邀访问朝鲜并与金正恩签署《战略互助条约》</p><p>网友评论道: <u>No one should </u><strong><u><span style=\"color: rgb(112, 207, 248)\">give in</span></u></strong><u> to America\'s pride anymore.</u></p><p></p><p>普京时隔20年再次访问朝鲜，飞机抵达平壤后，普京出仓时有风度地与舱门旁的空乘人员握手。</p><p>网友： Even <strong><span style=\"color: rgb(112, 207, 248)\">shook </span></strong>the flight <strong><span style=\"color: rgb(112, 207, 248)\">attendant</span></strong>\'s hand.</p><p></p><hr><p>2024年6月普京再次当选总统，受邀访问朝鲜并与金正恩签署《战略互助条约》</p><p>网友评论道: <u>没有人应该再屈服于美国的傲慢</u></p><p></p><p>普京时隔20年再次访问朝鲜，飞机抵达平壤后，普京出仓时有风度地与舱门旁的空乘人员握手。</p><p>网友： 甚至和空姐握手。</p>', '[{\"key\":\"give\",\"value\":\"给;让\",\"form\":\"give / gave / given /  giving\"},{\"key\":\"attendant\",\"value\":\"服务人员\",\"form\":\"attendant\"},{\"key\":\"shake\",\"value\":\"摇动;握手\",\"form\":\"shake / shook / shaken /  shaking\"}]');
INSERT INTO `essay` VALUES (301, '金正恩视察军事装备展览会', '<p>金正恩视察军事装备展览会 网友评论: Look at his <strong><span style=\"color: rgb(112, 207, 248)\">scared generals</span></strong></p><p></p><p><strong><span style=\"color: #70CFF8\">in </span></strong>general</p><p></p><p>general public</p><p></p><hr><p></p><p>金正恩视察军事装备展览会 网友评论: 看看他那些害怕的将军们</p><p></p><p>一般情况下, 多数情况下</p><p></p><p>公众</p>', '[{\"key\":\"general\",\"value\":\"多数的;普遍的;将军\",\"form\":\"general\"},{\"key\":\"scare\",\"value\":\"使害怕;害怕\",\"form\":\"scare\"},{\"key\":\"in\",\"value\":\"以某种方式;在场所里面\",\"form\":\"in\"}]');
INSERT INTO `essay` VALUES (302, 'Youtube 啊 啊 披萨女孩', '<p>Youtube 达美乐披萨美女派送员给司机送披萨，一段有意思的对话。</p><p>网友：<u>I am addicted to this girl. So funny, happy, sexy, beautiful.</u></p><hr><p>Youtube 达美乐披萨美女派送员给司机送披萨，一段有意思的对话。</p><p>网友：<u>我迷上了这个女孩。如此有趣、快乐、性感、美丽</u></p>', '[{\"key\":\"addict\",\"value\":\"瘾;上瘾\",\"form\":\"addict\"}]');
INSERT INTO `essay` VALUES (303, '梅威瑟看湖人比赛巧遇赛帕奎奥', '<p>Youtube视频: 梅威瑟场边观看湖人队比赛，老对手帕奎奥从其后走过，二位肢体寒暄一二。</p><p>网友评论道： <u>These men are kings of their </u><strong><u><span style=\"color: rgb(112, 207, 248)\">crafts</span></u></strong><u>. RESPECT.</u></p><hr><p>Youtube视频: 梅威瑟场边观看湖人队比赛，老对手帕奎奥从其后走过，二位肢体寒暄一二。</p><p>网友评论道： <u>这些人是各自领域的佼佼者。尊重.</u></p>', '[{\"key\":\"craft\",\"value\":\"技术;技能\",\"form\":\"craft\"}]');
INSERT INTO `essay` VALUES (304, '总参谋长', '<p>chief of <strong><span style=\"color: #70CFF8\">staff </span></strong></p><hr><p>总参谋长</p>', '[{\"key\":\"staff\",\"value\":\"工作人员;参谋人员\",\"form\":\"staff / staff\"}]');
INSERT INTO `essay` VALUES (305, '劈叉练习', '<p>Do a <strong><span style=\"color: #70CFF8\">Split </span></strong>Exercise. </p><hr><p>做下劈叉练习</p>', '[{\"key\":\"split\",\"value\":\"分开;分离\",\"form\":\"split / split / split /  splitting\"}]');
INSERT INTO `essay` VALUES (306, '载人战斗机', '<p>next-generation <strong><span style=\"color: #70CFF8\">crewed </span></strong>fighter.</p><hr><p>下一代载人战斗机.</p>', '[{\"key\":\"crew\",\"value\":\"机组人员;船员\",\"form\":\"crew\"}]');
INSERT INTO `essay` VALUES (307, 'Youtube搞笑视频 四脚朝天中国金毛', '<p>Youtube搞笑视频，中国两条金毛，一条总是四脚朝天躺在沙发上睡觉。 </p><p>网友： Dog in the background <strong><span style=\"color: #70CFF8\">cracks me up</span></strong> every time.</p><p></p><p>I <strong><span style=\"color: rgb(112, 207, 248)\">pity </span></strong>these two dogs for having to <strong><span style=\"color: rgb(249, 129, 129)\">put up with</span></strong> their owner.</p><p></p><p>That\'s a <strong><span style=\"color: rgb(112, 207, 248)\">pity</span></strong>.</p><p></p><hr><p></p><p>Youtube搞笑视频，中国两条金毛，一条总是四脚朝天躺在沙发上睡觉。 </p><p>网友： 背景里的狗每次都让我乐开花</p><p></p><p>我同情这两只狗，它们不得不忍受它们的主人。</p><p></p><p>很可惜，很遗憾</p>', '[{\"key\":\"pity\",\"value\":\"同情;可惜\",\"form\":\"pity\"},{\"key\":\"put up with\",\"value\":\"忍受\",\"form\":\"put up with\"},{\"key\":\"crack\",\"value\":\"破解;大笑\",\"form\":\"crack\"}]');
INSERT INTO `essay` VALUES (310, '智库与坦克', '<p>think <strong><span style=\"color: rgb(112, 207, 248)\">tank</span></strong></p><p></p><p>The Leopard 2 is a third generation German main battle <strong><span style=\"color: rgb(112, 207, 248)\">tank</span></strong>.</p><p></p><p>In the game of basketball, in life, as a parent – Kobe <strong><span style=\"color: rgb(112, 207, 248)\">left </span></strong>nothing in the <strong><span style=\"color: rgb(112, 207, 248)\">tank</span></strong>. He <strong><span style=\"color: rgb(112, 207, 248)\">left </span></strong>it all on the floor.</p><p></p><hr><p></p><p>智囊, 智库] 最早出现在20世纪40年代的美国，指代政策研究和战略分析机构</p><p></p><p>豹 2 是第三代德国主战坦克。</p><p></p><p>在篮球比赛中，在生活中，作为父母，科比竭尽全力，他把一切都奉献给了篮球。</p>', '[{\"key\":\"leopard\",\"value\":\"豹\",\"form\":\"leopard\"},{\"key\":\"tank\",\"value\":\"坦克;油罐\",\"form\":\"tank\"},{\"key\":\"leave\",\"value\":\"离开;忘带\",\"form\":\"leave / left / left /  leaving\"}]');
INSERT INTO `essay` VALUES (315, '电动自行车市场分析', '<p>The global ebike market is <strong><span style=\"color: rgb(112, 207, 248)\">estimated </span></strong>to grow in value to almost $120 billion by 2030.</p><p></p><p><strong><span style=\"color: rgb(112, 207, 248)\">While </span></strong>most ebikes on the road today will come with a <strong><span style=\"color: rgb(112, 207, 248)\">battery </span></strong>pack, some are <strong><span style=\"color: rgb(112, 207, 248)\">riding </span><span style=\"color: #F98181\">down </span></strong>the <strong><span style=\"color: rgb(112, 207, 248)\">hydrogen fuel-cell</span></strong> cycle path.</p><p></p><hr><p></p><p>到2030年，全球电动自行车市场的价值<strong><span style=\"color: rgb(112, 207, 248)\">估计</span></strong>增长到近1200亿美元。</p><p></p><p>尽管路上大多数电动自行车会携带一个电池包，但有些自行车走了氢燃料电池技术路线。</p>', '[{\"key\":\"estimate\",\"value\":\"估摸;估计\",\"form\":\"estimate\"},{\"key\":\"hydrogen\",\"value\":\"氢气\",\"form\":\"hydrogen\"},{\"key\":\"fuel-cell\",\"value\":\"燃料电池\",\"form\":\"fuel-cell\"},{\"key\":\"battery\",\"value\":\"电池\",\"form\":\"battery\"},{\"key\":\"ride\",\"value\":\"骑马;骑车\",\"form\":\"ride / rode / ridden /  riding\"},{\"key\":\"down\",\"value\":\"向下;沿着;朝着\",\"form\":\"down\"}]');
INSERT INTO `essay` VALUES (316, '招了 承认了', '<p>Youtube 2024 美国民主党大会： I made a mistake that is hard to <strong><span style=\"color: rgb(112, 207, 248)\">admit</span></strong>.</p><p></p><p>host club：While he insists he has never forced a customer into sex work, he <strong><span style=\"color: rgb(112, 207, 248)\">admits </span></strong>to previously <strong><span style=\"color: rgb(112, 207, 248)\">persuading </span></strong>women to spend far beyond their means.</p><p></p><hr><p></p><p>我犯了一个难以<strong><span style=\"color: rgb(112, 207, 248)\">承认</span></strong>的错误.</p><p></p><p>日本主播俱乐部忽悠女性：尽管他坚称自己没有强迫过顾客从事性工作，但他<strong><span style=\"color: rgb(112, 207, 248)\">承认</span></strong>了<strong><span style=\"color: rgb(112, 207, 248)\">说服</span></strong>女性远超能力范围地去消费</p>', '[{\"key\":\"admit\",\"value\":\"认罪;认错;招供\",\"form\":\"admit / admitted / admitted /  admitting\"},{\"key\":\"persuade\",\"value\":\"劝说\",\"form\":\"persuade\"}]');
INSERT INTO `essay` VALUES (317, '老手难度的游戏', '<p>People born at North Korea is like starting a game <strong><span style=\"color: #F98181\">with </span><span style=\"color: rgb(112, 207, 248)\">veteran </span></strong>difficulty.</p><hr><p>生在朝鲜的人就像开始一场<strong><span style=\"color: #F98181\">有着</span><span style=\"color: rgb(112, 207, 248)\">老手难度</span></strong>的游戏.</p>', '[{\"key\":\"veteran\",\"value\":\"老兵;老手的;退伍军人\",\"form\":\"veteran\"},{\"key\":\"with\",\"value\":\"有着\",\"form\":\"with\"}]');
INSERT INTO `essay` VALUES (319, '你这个混蛋', '<p>You <strong><span style=\"color: rgb(112, 207, 248)\">prick</span></strong>!</p><p></p><p><strong><span style=\"color: rgb(112, 207, 248)\">Pricking </span></strong>a balloon with a <strong><span style=\"color: rgb(112, 207, 248)\">pin</span></strong>.</p><p></p><hr><p></p><p>你这个<strong><span style=\"color: rgb(112, 207, 248)\">混蛋</span></strong>！</p><p></p><p>用针<strong><span style=\"color: rgb(112, 207, 248)\">扎</span></strong>气球。</p>', '[{\"key\":\"prick\",\"value\":\"扎;混蛋;鸡巴\",\"form\":\"prick\"},{\"key\":\"pin\",\"value\":\"针;固定住\",\"form\":\"pin / pinned / pinned /  pinning\"},{\"key\":\"balloon\",\"value\":\"气球;激增\",\"form\":\"balloon\"}]');
INSERT INTO `essay` VALUES (320, 'CNN 印度贫富差距扩大', '<p>Though the sun has long <strong><span style=\"color: rgb(112, 207, 248)\">risen</span></strong>, some <strong><span style=\"color: rgb(112, 207, 248)\">alleys</span></strong> remain <strong><span style=\"color: rgb(112, 207, 248)\">pitch dark</span></strong> as she <strong><span style=\"color: rgb(112, 207, 248)\">weaves </span></strong>through the <strong><span style=\"color: rgb(112, 207, 248)\">slum </span></strong>where she<strong><span style=\"color: rgb(112, 207, 248)\"> lives</span></strong> in Mumbai’s Goregaon West <strong><span style=\"color: rgb(112, 207, 248)\">neighborhood</span></strong>.</p><p></p><p>He tried to <strong><span style=\"color: rgb(112, 207, 248)\">weave </span></strong>a story that would <strong><span style=\"color: rgb(112, 207, 248)\">engage </span></strong>his audience.</p><p></p><p>The <strong><span style=\"color: #70CFF8\">strip</span></strong>s of <strong><span style=\"color: rgb(112, 207, 248)\">willow </span></strong>are <strong><span style=\"color: rgb(112, 207, 248)\">woven </span></strong>into baskets.</p><hr><p></p><p>尽管太阳<strong><span style=\"color: rgb(249, 129, 129)\">早已</span><span style=\"color: rgb(112, 207, 248)\">升起</span></strong>， 但当她<strong><span style=\"color: rgb(112, 207, 248)\">穿过</span></strong>那个贫民窟时，一些<strong><span style=\"color: rgb(112, 207, 248)\">胡同</span></strong>仍然漆黑一片，她住在那里的西西街道.</p><p></p><p>他试图<strong><span style=\"color: rgb(112, 207, 248)\">编织</span></strong>一个能够<strong><span style=\"color: rgb(112, 207, 248)\">吸引</span></strong>观众的故事。</p><p></p><p><strong><span style=\"color: rgb(112, 207, 248)\">柳</span></strong>条<strong><span style=\"color: rgb(112, 207, 248)\">编</span></strong>成了篮子</p>', '[{\"key\":\"rise\",\"value\":\"升起;上升\",\"form\":\"rise / rose / risen /  rising\"},{\"key\":\"alley\",\"value\":\"胡同\",\"form\":\"alley\"},{\"key\":\"pitch\",\"value\":\"推销;沥青\",\"form\":\"pitch\"},{\"key\":\"weave\",\"value\":\"编织;穿行;编纂\",\"form\":\"weave / wove / woven /  weaving\"},{\"key\":\"slum\",\"value\":\"贫民窟\",\"form\":\"slum / slummed / slummed /  slumming\"},{\"key\":\"live\",\"value\":\"生活;居住;现场直播的\",\"form\":\"live\"},{\"key\":\"neighborhood\",\"value\":\"街道\",\"form\":\"neighborhood\"},{\"key\":\"engage\",\"value\":\"参与;订婚;吸引\",\"form\":\"engage\"},{\"key\":\"willow\",\"value\":\"柳树\",\"form\":\"willow\"},{\"key\":\"strip\",\"value\":\"条形或条状\",\"form\":\"strip / stripped / stripped /  stripping\"}]');
INSERT INTO `essay` VALUES (323, '卫国战争', '<p>The Great patriotic War was one of the important <strong><span style=\"color: #70CFF8\">campaigns </span></strong>of World War 2. </p><hr><p>卫国战争是第二次世界大战的重要战役之一</p>', '[{\"key\":\"campaign\",\"value\":\"竞选活动;战役\",\"form\":\"campaign\"}]');
INSERT INTO `essay` VALUES (326, '猎豹想袭击人类', '<p>Youtube视频，在野外，一只豹子朝着一个博主扑来。</p><p>网友： The lion heard that round was over and said<u> I will </u><strong><u><span style=\"color: rgb(112, 207, 248)\">stick to</span></u></strong><u> my normal </u><strong><u><span style=\"color: rgb(112, 207, 248)\">diet</span></u></strong><u>.</u></p><p></p><p>Doctor：Please <strong><span style=\"color: rgb(112, 207, 248)\">stick out </span></strong>your <strong><span style=\"color: rgb(112, 207, 248)\">tongue</span></strong>.</p><p></p><hr><p></p><p>Youtube视频，在野外，一只豹子朝着一个博主扑来。</p><p>网友： 狮子听到了那阵枪声，说<u>我会坚持我的正常饮食。</u></p><p></p><p>医生：请伸出你的舌头</p>', '[{\"key\":\"stick\",\"value\":\"卡住;坚持;伸出\",\"form\":\"stick / stuck / stuck /  sticking\"},{\"key\":\"diet\",\"value\":\"饮食\",\"form\":\"diet\"},{\"key\":\"tongue\",\"value\":\"舌头\",\"form\":\"tongue\"}]');
INSERT INTO `essay` VALUES (327, '方便面', '<p>instant ramen</p><hr><p>方便面</p>', '[{\"key\":\"ramen\",\"value\":\"拉面\",\"form\":\"ramen\"},{\"key\":\"instant\",\"value\":\"瞬间;立即的;速食的\",\"form\":\"instant\"}]');
INSERT INTO `essay` VALUES (328, '鹰报复乌鸦', '<p>Youtube视频, 乌鸦在鹰的窝里攻击小鹰, 老鹰突然回来, 最终逮到了乌鸦并将其在空中撕碎.</p><p>网友评论: <u>This is the </u><strong><u><span style=\"color: rgb(112, 207, 248)\">fate</span></u></strong><u> of anyone who </u><strong><u><span style=\"color: rgb(249, 129, 129)\">messes with</span></u></strong><u> </u><strong><u><span style=\"color: rgb(112, 207, 248)\">hawks</span></u></strong><u>.</u></p><hr><p>Youtube视频, 乌鸦在鹰的窝里攻击小鹰, 老鹰突然回来, 最终逮到了乌鸦并将其在空中撕碎.</p><p>网友评论:<u> 这是任何招惹鹰的人的下场</u></p>', '[{\"key\":\"mess with\",\"value\":\"招惹;捣乱\",\"form\":\"mess with\"},{\"key\":\"mess\",\"value\":\"弄乱;搞错\",\"form\":\"mess\"},{\"key\":\"fate\",\"value\":\"天意;定数\",\"form\":\"fate\"}]');
INSERT INTO `essay` VALUES (329, '快要渴死了', '<p>I\'m <strong><span style=\"color: rgb(112, 207, 248)\">dying </span></strong>of thirst.</p><hr><p>我<strong><span style=\"color: rgb(112, 207, 248)\">快</span></strong>渴<strong><span style=\"color: rgb(112, 207, 248)\">死</span></strong>了.</p>', '[{\"key\":\"die\",\"value\":\"死;消失\",\"form\":\"die / died / died /  dying\"},{\"key\":\"thirst\",\"value\":\"口渴\",\"form\":\"thirst\"}]');
INSERT INTO `essay` VALUES (331, '优质的', '<p>Before painting, we need to <strong><span style=\"color: rgb(112, 207, 248)\">prime </span></strong>the surface first.</p><p><strong><span style=\"color: rgb(112, 207, 248)\">prime </span></strong>rib</p><p><strong><span style=\"color: #70CFF8\">Prime </span></strong>Minister</p><hr><p>在粉刷之前，我们需要先对表面进行<strong><span style=\"color: rgb(112, 207, 248)\">涂底漆</span></strong>处理。</p><p><strong><span style=\"color: rgb(112, 207, 248)\">优质</span></strong>牛排</p><p>总理</p>', '[{\"key\":\"prime\",\"value\":\"优质的;主要的;涂底漆\",\"form\":\"prime\"},{\"key\":\"rib\",\"value\":\"肋骨\",\"form\":\"rib / ribbed / ribbed /  ribbing\"}]');
INSERT INTO `essay` VALUES (332, '搞定了', '<p><strong><span style=\"color: #70CFF8\">nailed </span></strong>it!</p><hr><p>搞定了</p>', '[{\"key\":\"nail\",\"value\":\"指甲;钉子;击中\",\"form\":\"nail\"}]');
INSERT INTO `essay` VALUES (339, '好身材', '<p>nice <strong><span style=\"color: rgb(112, 207, 248)\">figure</span></strong></p><p>Giant Godzilla <strong><span style=\"color: rgb(112, 207, 248)\">Figure</span></strong></p><p>double <strong><span style=\"color: rgb(112, 207, 248)\">figures</span></strong></p><p>I need to <strong><span style=\"color: rgb(112, 207, 248)\">figure out</span></strong> how to solve this problem.</p><p></p><hr><p></p><p>好<strong><span style=\"color: rgb(112, 207, 248)\">身材</span></strong></p><p>巨型哥斯拉<strong><span style=\"color: rgb(112, 207, 248)\">塑像</span></strong></p><p>两<strong><span style=\"color: rgb(112, 207, 248)\">位数</span></strong></p><p>我需要<strong><span style=\"color: rgb(112, 207, 248)\">弄清楚</span></strong>如何解决这个问题。</p>', '[{\"key\":\"figure\",\"value\":\"数字;身材;塑像;弄清楚\",\"form\":\"figure\"}]');
INSERT INTO `essay` VALUES (340, '后悔终生', '<p>I <strong><span style=\"color: #70CFF8\">regrets </span></strong>making that <strong><span style=\"color: #70CFF8\">decision </span></strong>for the rest of my life.</p><hr><p>我<strong><span style=\"color: #70CFF8\">后悔</span></strong>做出那个<strong><span style=\"color: #70CFF8\">决定</span></strong>，终生难忘。</p>', '[{\"key\":\"regret\",\"value\":\"后悔\",\"form\":\"regret / regretted / regretted /  regretting\"},{\"key\":\"decision\",\"value\":\"决定\",\"form\":\"decision\"}]');
INSERT INTO `essay` VALUES (341, '美国警察执法被击中', '<p>Youtube视频，美国警察执法与匪徒枪战，有警察中弹倒地，求助同事： <u>I\'ve been </u><strong><u><span style=\"color: rgb(249, 129, 129)\">hit</span></u></strong><u>.</u></p><hr><p>Youtube视频，美国警察执法与匪徒枪战，有警察中弹倒地，求助同事： <u>我被</u><strong><u><span style=\"color: rgb(249, 129, 129)\">击中</span></u></strong><u>了</u></p>', '[{\"key\":\"hit\",\"value\":\"打击;触碰;触动\",\"form\":\"hit / hit / hit /  hitting\"}]');
INSERT INTO `essay` VALUES (342, '华莱士采访江泽民', '<p>The picture of that one young man <strong><span style=\"color: rgb(112, 207, 248)\">in front of</span></strong> <strong><span style=\"color: rgb(249, 129, 129)\">tank in </span></strong>Tiananmen Square. That to me means Chinese <strong><span style=\"color: rgb(249, 129, 129)\">dictatorship</span></strong>.</p><p>That\'s a wonderful symbol that <strong><span style=\"color: rgb(249, 129, 129)\">hits </span></strong>me in my heart.</p><p></p><p>美国知名主持人华莱士有摇手指和指人的习惯，在采访江泽民时，风趣地自嘲道： <u>I\'m wagging my finger at the presiden of China.</u></p><p></p><p>freedom of the <strong><span style=\"color: #70CFF8\">press</span></strong></p><p></p><hr><p></p><p>这张<strong><span style=\"color: rgb(249, 129, 129)\">图片</span></strong>，一位<strong><span style=\"color: rgb(249, 129, 129)\">年轻人</span></strong>站在<strong><span style=\"color: rgb(249, 129, 129)\">坦克</span></strong>前，<strong><span style=\"color: rgb(249, 129, 129)\">在</span></strong>天安门广场上. 那对我来说意味着中国<strong><span style=\"color: rgb(249, 129, 129)\">独裁</span></strong>。</p><p>那是一个<strong><span style=\"color: rgb(249, 129, 129)\">绝妙的象征</span></strong>, 它<strong><span style=\"color: rgb(249, 129, 129)\">触动着</span></strong>我心。</p><p></p><p>美国知名主持人华莱士有摇手指和指人的习惯，在采访江泽民时，风趣地自嘲道：<u>“我正朝着中国总统</u><strong><u><span style=\"color: rgb(112, 207, 248)\">摇</span></u></strong><u>手指”</u></p><p></p><p><strong><span style=\"color: #70CFF8\"> 新闻</span></strong>自由</p>', '[{\"key\":\"tank\",\"value\":\"坦克;油罐\",\"form\":\"tank\"},{\"key\":\"hit\",\"value\":\"打击;触碰;触动\",\"form\":\"hit / hit / hit /  hitting\"},{\"key\":\"dictatorship\",\"value\":\"独裁;专政\",\"form\":\"dictatorship\"},{\"key\":\"in\",\"value\":\"以某种方式;在场所里面\",\"form\":\"in\"},{\"key\":\"symbol\",\"value\":\"符号;象征\",\"form\":\"symbol / symbolled / symbolled /  symbolling\"},{\"key\":\"picture\",\"value\":\"图片\",\"form\":\"picture\"},{\"key\":\"young\",\"value\":\"年轻的;年轻人\",\"form\":\"young\"},{\"key\":\" in front of\",\"value\":\"在XXX的前面\",\"form\":\" in front of\"},{\"key\":\"wag\",\"value\":\"摇摆\",\"form\":\"wag / wagged / wagged /  wagging\"},{\"key\":\"press\",\"value\":\"按压;新闻报刊\",\"form\":\"press\"}]');
INSERT INTO `essay` VALUES (344, '奥尼尔全明星赛罚篮恶搞', '<p>奥尼尔在全明星赛罚球时，恶搞打板暴扣，其实这违例了，于是主持人说: <u>You gotta </u><span style=\"color: rgb(249, 129, 129)\"><strong><u>hit </u></strong></span><u>the rim</u></p><p></p><p>Ukraine <span style=\"color: rgb(249, 129, 129)\"><strong>hits </strong></span>15 Russian air defense systems in Crimea.</p><p></p><hr><p></p><p>奥尼尔在全明星赛罚球时，恶搞打板暴扣，其实这违例了，于是主持人说: <u>你的球得</u><span style=\"color: rgb(249, 129, 129)\"><strong><u>碰到</u></strong></span><u>篮筐</u></p><p></p><p>乌克兰<span style=\"color: rgb(249, 129, 129)\"><strong>打击</strong></span>了克里米亚15处俄罗斯防空系统.</p>', '[{\"key\":\"Crimea\",\"value\":\"克里米亚\",\"form\":\"Crimea\"},{\"key\":\"hit\",\"value\":\"打击;触碰;触动\",\"form\":\"hit / hit / hit /  hitting\"},{\"key\":\"Ukraine\",\"value\":\"乌克兰\",\"form\":\"Ukraine\"}]');
INSERT INTO `essay` VALUES (345, '骚扰电话', '<p><strong><span style=\"color: rgb(249, 129, 129)\">nuisance </span></strong>call</p><hr><p><strong><span style=\"color: rgb(249, 129, 129)\">骚扰</span></strong>电话</p>', '[{\"key\":\"nuisance\",\"value\":\"骚扰\",\"form\":\"nuisance\"}]');
INSERT INTO `essay` VALUES (346, '撸猫', '<p><strong><span style=\"color: #F98181\">stroke </span></strong>a cat</p><hr><p><strong><span style=\"color: #F98181\">撸</span></strong>猫</p>', '[{\"key\":\"stroke\",\"value\":\"v.抚摸\",\"form\":\"stroke\"}]');
INSERT INTO `essay` VALUES (350, '奥尼尔给了4000块小费', '<p>篮球比赛开始时双方球员在中场附近跳起，用手指尖将球挑到自己一侧.：<strong><span style=\"color: rgb(249, 129, 129)\">tip off</span></strong></p><p></p><p>奥尼尔曾给饭店服务员4000美金消费，这种消费给得多的人称作： big <strong><span style=\"color: rgb(249, 129, 129)\">tipper</span></strong></p><p></p><p>quick <strong><span style=\"color: rgb(249, 129, 129)\">tip</span></strong></p><p></p><p>Yao <strong><span style=\"color: rgb(249, 129, 129)\">tips </span></strong>it inside</p><hr><p>篮球比赛开始时双方球员在中场附近跳起，用手指尖将球挑到自己一侧.：<strong><span style=\"color: rgb(249, 129, 129)\">中场跳球</span></strong></p><p></p><p>奥尼尔曾给饭店服务员4000美金消费，这种消费给得多的人称作： <strong><u><span style=\"color: rgb(249, 129, 129)\">小费给的多的人</span></u></strong></p><p></p><p><strong><u><span style=\"color: rgb(249, 129, 129)\">小建议</span></u></strong></p><p></p><p>姚明将球<strong><span style=\"color: rgb(249, 129, 129)\">点</span></strong>进</p>', '[{\"key\":\"tip\",\"value\":\"小费;提示;点拨\",\"form\":\"tip / tipped / tipped /  tipping\"},{\"key\":\"inside\",\"value\":\"向里面\",\"form\":\"inside\"}]');
INSERT INTO `essay` VALUES (351, '2017勇士夺冠，特朗普和詹姆斯关于去白宫的口水战', '<p>勇士夺冠后，特朗普私下询问库里去白宫的意愿，后者犹豫了，故特朗普发推说道：</p><p>Going to the White House is considered a great <strong><span style=\"color: rgb(112, 207, 248)\">honor </span></strong>for a championship team.</p><p>Stephen Curry is <strong><span style=\"color: rgb(112, 207, 248)\">hesitating</span></strong>, therefore invitation is <strong><span style=\"color: rgb(112, 207, 248)\">withdrawn</span></strong>!</p><p>勒布朗回怼：</p><p>U bum. @StephenCurry30 already said he <strong><span style=\"color: rgb(112, 207, 248)\">ain\'t</span></strong> going! So therefore ain\'t no <strong><span style=\"color: rgb(112, 207, 248)\">invite</span></strong>.</p><p>Going to White House was a great <strong><span style=\"color: rgb(112, 207, 248)\">honor </span></strong>until you showed up!</p><hr><p>勇士夺冠后，特朗普私下询问库里去白宫的意愿，后者犹豫了，故特朗普发推说道：</p><p><u>去白宫被认为是一种莫大荣耀，对一个冠军球队来说。库里还在犹豫，因此邀请被收回了。</u></p><p>勒布朗回怼：</p><p><u>你个混蛋。库里已经说了，他不想去。所以根本没有邀请。</u></p><p><u>去白宫是一种莫大荣耀，直到你出现。</u></p>', '[{\"key\":\"honor\",\"value\":\"荣耀;尊重;纪念\",\"form\":\"honor\"},{\"key\":\"hesitate\",\"value\":\"犹豫\",\"form\":\"hesitate\"},{\"key\":\"withdraw\",\"value\":\"撤回;提款\",\"form\":\"withdraw / withdrew / withdrawn /  withdrawing\"},{\"key\":\"invite\",\"value\":\"邀请\",\"form\":\"invite\"},{\"key\":\"bum\",\"value\":\"废物\",\"form\":\"bum / bummed / bummed /  bumming\"}]');
INSERT INTO `essay` VALUES (352, 'Saving Private Ryan', '<ul><li><p><em>Marshall </em>将军给 <em>Ryan </em>母亲的信 - George C. Marshall :</p></li><li><p></p><ul><li><p>My dear Mrs Ryan:</p></li><li><p>It\'s with the most <span style=\"color: rgb(112, 207, 248)\"><strong>profound </strong></span>sense of <span style=\"color: rgb(112, 207, 248)\"><strong><em>joy </em></strong></span>that I write to inform you, your son, <span style=\"color: rgb(112, 207, 248)\"><strong><em>Private </em></strong></span>James Ryan, is <span style=\"color: rgb(112, 207, 248)\"><strong><em>well </em></strong></span>and, at this very moment, on his way home from European <span style=\"color: rgb(112, 207, 248)\"><strong><em>battlefields</em></strong></span>. Reports from the front indicate James did his duty in combat with great courage and <span style=\"color: rgb(112, 207, 248)\"><strong><em>steadfast dedication</em></strong></span>, even after he was informed of the tragic loss your family has suffered in this great <span style=\"color: rgb(112, 207, 248)\"><strong><em>campaign </em></strong></span>to <span style=\"color: rgb(112, 207, 248)\"><strong><em>rid </em></strong></span>the world of <span style=\"color: rgb(249, 129, 129)\"><strong><em>tyranny </em></strong></span>and <span style=\"color: rgb(249, 129, 129)\"><strong><em>oppression</em></strong></span>.</p></li><li><p></p></li><li><p>I take great pleasure in joining the Secretary of War, the men and women of the U.S. Army, and the citizens of a grateful nation in wishing you good health and many years of happiness with James at your side. Nothing, not even the safe return of a beloved son, can compensate you, or the thousands of other American families, who have suffered great loss in this tragic war. I might share with you some words which have sustained me through long, dark nights of peril, loss, and heartache. And I quote: \"I pray that our Heavenly Father may assuage the anguish of your bereavement, and leave you only the cherished memory of the loved and lost, and the solemn pride that must be yours to have laid so costly a sacrifice upon the alter of freedom.\" -Abraham Lincoln. Yours very sincerely and respectfully, George C. Marshall, General, Chief of Staff.</p></li></ul></li></ul>', '[{\"key\":\"Marshall\",\"value\":\"马歇尔\",\"form\":\"Marshall\"},{\"key\":\"private\",\"value\":\"私有的;普通士兵\",\"form\":\"private\"},{\"key\":\"profound\",\"value\":\"深切的\",\"form\":\"profound\"},{\"key\":\"joy\",\"value\":\"喜悦\",\"form\":\"joy\"},{\"key\":\"well\",\"value\":\"情况良好\",\"form\":\"well\"},{\"key\":\"battlefield\",\"value\":\"战场\",\"form\":\"battlefield\"},{\"key\":\"steadfast\",\"value\":\"坚定不移的\",\"form\":\"steadfast\"},{\"key\":\"dedication\",\"value\":\"献身\",\"form\":\"dedication\"},{\"key\":\"tyranny\",\"value\":\"暴政\",\"form\":\"tyranny\"},{\"key\":\"oppression\",\"value\":\"压迫\",\"form\":\"oppression\"},{\"key\":\"rid\",\"value\":\"摆脱;消除\",\"form\":\"rid / rid / rid / ridding\"},{\"key\":\"campaign\",\"value\":\"竞选活动;战役\",\"form\":\"campaign\"}]');
INSERT INTO `essay` VALUES (353, 'ttt', '<p><span style=\"color: #70CFF8\"><strong><em>花粉管花粉管</em></strong></span></p>', '');

-- ----------------------------
-- Table structure for grammar
-- ----------------------------
DROP TABLE IF EXISTS `grammar`;
CREATE TABLE `grammar`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `sort` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'sort',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'name',
  `content` varchar(10240) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'content',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'grammar' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of grammar
-- ----------------------------
INSERT INTO `grammar` VALUES (1, 0, '虚拟语气', '<p><i><strong>【含义】</strong></i>：与<span style=\"background-color:#7cb342;color:#f9fbe7;\">一般性假设</span>不同, 虚拟语气是<span style=\"background-color:#c62828;color:#f9fbe7;\"><i><strong>不可能的假设</strong></i></span>. 用于表达: 遗憾、后悔、论证</p>\n<p>&nbsp;</p>\n<p><strong>【与过去事实相反的假设 + 结论 - had done + would have done】</strong></p>\n<p style=\"margin-left:40px;\"><span style=\"background-color:#26c6da;color:#f9fbe7;\">Lebron messed up his handshake with Beasley</span></p>\n<p style=\"margin-left:40px;\"><span style=\"background-color:#26c6da;color:#f9fbe7;\">詹姆斯与队友进行拍手庆祝动作时搞错了</span></p>\n<p style=\"margin-left:40px;\"><span style=\"background-color:#26c6da;color:#f9fbe7;\">网友评论：</span></p>\n<p style=\"margin-left:40px;\"><span style=\"background-color:#26c6da;color:#f9fbe7;\">Jordan would have never messed up a handshake</span></p>\n<p style=\"margin-left:40px;\"><span style=\"background-color:#26c6da;color:#f9fbe7;\">(如果换作是乔丹的话) 乔丹是不会搞砸的 (在相同情况下与詹姆斯做对比。而乔丹是不可能成为詹姆斯的，这是不存在的假设。)</span></p>\n<p style=\"margin-left:40px;\">----------</p>\n<p style=\"margin-left:40px;\"><span style=\"background-color:#ff9800;color:#f9fbe7;\">If that was the case, D Wade wouldn\'t have asked us to join him. (含蓄式条件句, 真正的条件句没被显式表达出来)</span></p>\n<p style=\"margin-left:40px;\"><span style=\"background-color:#ff9800;color:#f9fbe7;\">如果那是个问题的话, 韦德就不会要我们加入他</span></p>\n<p style=\"margin-left:40px;\">----------</p>\n<p style=\"margin-left:40px;\"><span style=\"background-color:#689f38;color:#f9fbe7;\">If I had got there earlier, I would have met her.</span></p>\n<p style=\"margin-left:40px;\"><span style=\"background-color:#689f38;color:#f9fbe7;\">如果我早到那, 我就能见到她了</span></p>\n<p style=\"margin-left:40px;\">----------</p>\n<p style=\"margin-left:40px;\"><span style=\"background-color:#64b5f6;color:#f9fbe7;\">Isiah Thomas, Magic Johnson, George Gervin – now they say it was a so-called ‘freeze out’ in my rookie season.</span></p>\n<p style=\"margin-left:40px;\"><span style=\"background-color:#64b5f6;color:#f9fbe7;\">I would have never guessed, but you guys gave me the motivation to say</span></p>\n<p style=\"margin-left:40px;\"><span style=\"background-color:#64b5f6;color:#f9fbe7;\">\"you know what, evidently I haven’t proved enough to these guys. I gotta prove to them that I deserve what I’ve gotten on this level\"</span></p>\n<p style=\"margin-left:40px;\"><span style=\"background-color:#64b5f6;color:#f9fbe7;\">乔丹在新秀赛季遭到托马斯和魔术师约翰逊等人的排挤, 乔丹回忆道：“(如果他们不这样做) 我本来是猜不到他们会孤立我的, 但你们给了我前进动力”</span></p>\n<p>&nbsp;</p>\n<p><strong>【与现在事实相反的假设 + 结论 - were/did + would do】</strong></p>\n<p style=\"margin-left:40px;\"><span style=\"background-color:#c5e1a5;color:#f9fbe7;\">(If it were morning) I would say good morning, but it\'s afternoon.</span></p>\n<p style=\"margin-left:40px;\"><span style=\"background-color:#c5e1a5;color:#f9fbe7;\">我想说早上好, 但已经下午了.</span></p>\n<p style=\"margin-left:40px;\">----------</p>\n<p style=\"margin-left:40px;\"><span style=\"background-color:#1e88e5;color:#fff8e1;\">When Kobe Bryant died, a piece of me died. And as I look in this arena and across the globe, a piece of you died, or else you wouldn\'t be here.</span></p>\n<p style=\"margin-left:40px;\"><span style=\"background-color:#1e88e5;color:#fff8e1;\">科比·布莱恩特去世时，我的一部分也死去了。当我看着这座球场和全世界，你的一部分也死去了，否则你也不会在这里（你不可能不在这）。</span></p>\n<p style=\"margin-left:40px;\">----------</p>\n<p style=\"margin-left:40px;\"><span style=\"background-color:#ef6c00;color:#fff8e1;\">If I had a million, I would buy a luxury car.</span></p>\n<p style=\"margin-left:40px;\"><span style=\"background-color:#ef6c00;color:#fff8e1;\">如果我真有一百万，我会买一辆豪车。</span></p>\n<p>&nbsp;</p>\n<p><strong>【与将来相反的假设 + 结论 - were/did + would do】</strong></p>\n<p style=\"margin-left:40px;\">If there were a heavy snow next Sunday, we would go skating.</p>\n<p style=\"margin-left:40px;\">如果下周日下大雪，我们就会去滑冰。（说话者的意思是大概率不会下雪）</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p><strong>【一般性假设 + 结论】</strong></p>\n<p style=\"margin-left:40px;\">If you love something, you would go to the extreme to try to understand or try to get it.</p>\n<p style=\"margin-left:40px;\">如果你热爱某些事，你会想尽一切办法去理解和搞懂它.</p>');
INSERT INTO `grammar` VALUES (3, 0, '让步与转折', '<p>【让步】：侧重在某种条件下，种情况仍然发生。而本该发生的没发生。&nbsp;</p>\n<p>【转折】：侧重对比两种情况</p>\n<p>&nbsp;</p>\n<p>【在下雨的条件下】</p>\n<p style=\"margin-left:40px;\">Although it was raining, we went for a walk.</p>\n<p style=\"margin-left:40px;\">尽管下雨了，我们还是去散步了。</p>\n<p>&nbsp;</p>\n<p>【在很累的条件下】</p>\n<p style=\"margin-left:40px;\">She continued to work, even though she was very tired.</p>\n<p style=\"margin-left:40px;\">尽管她很累，她还是继续工作。</p>\n<p>&nbsp;</p>\n<p>【对比】</p>\n<p style=\"margin-left:40px;\">He is rich, but he is not happy.</p>\n<p style=\"margin-left:40px;\">他很富有，但不快乐。</p>\n<p style=\"margin-left:40px;\">&nbsp;</p>\n<p>【让步的不恰当使用】</p>\n<p style=\"margin-left:40px;\">Although he is rich, he is not happy. <span style=\"background-color:#d32f2f;color:#fafafa;\">（错误：逻辑不通）</span></p>\n<p style=\"margin-left:40px;\">尽管他很富有，但不快乐。</p>\n<p style=\"margin-left:40px;\">Although he is rich, he is working hard. （正确）</p>\n<p style=\"margin-left:40px;\">尽管他很富有，但仍非常努力</p>\n<p style=\"margin-left:40px;\">Although he is rich, he is still very frugal. （正确）</p>\n<p style=\"margin-left:40px;\">尽管他很富有，但依然很节俭</p>\n<p style=\"margin-left:40px;\">&nbsp;</p>\n<p>【让步与转折都可以】</p>\n<p style=\"margin-left:40px;\">The weather was bad; however, we decided to go out.</p>\n<p style=\"margin-left:40px;\">天气很糟糕，但我们决定出去。</p>\n<p style=\"margin-left:40px;\">Although the weather was bad, we decided to go out.</p>\n<p style=\"margin-left:40px;\">尽管天气很糟糕，我们仍然决定出去。</p>\n<p style=\"margin-left:40px;\">&nbsp;</p>\n<p style=\"margin-left:40px;\">&nbsp;</p>');
INSERT INTO `grammar` VALUES (4, 0, '谓语与主语的顺序', '<ul>\n    <li>【疑问句：谓 + 主】</li>\n</ul>\n<p style=\"margin-left:80px;\">What<span style=\"background-color:#d32f2f;color:rgb(250,250,250);\"><strong>\'s new</strong></span>? What<span style=\"background-color:#d32f2f;color:rgb(250,250,250);\">\'s</span> been going on with you this summer?</p>\n<p>&nbsp;</p>\n<ul>\n    <li>【主句或从句：主 + 谓】</li>\n</ul>\n<p style=\"margin-left:80px;\">// 主句</p>\n<p style=\"margin-left:80px;\">I admire him</p>\n<p style=\"margin-left:80px;\">&nbsp;</p>\n<p style=\"margin-left:80px;\">// 从句</p>\n<p style=\"margin-left:80px;\"><span style=\"background-color:#009688;color:rgb(250,250,250);\">What Kobe Bryant was</span><span style=\"color:rgb(250,250,250);\"> </span>to me was the inspiration that someone truly cared about the way either I played the game or the way that he wanted to play the game.&nbsp;</p>');
INSERT INTO `grammar` VALUES (5, 0, 'ain\'t', '<p>&nbsp;</p>\n<p><strong>ain\'t</strong> 用于强调否定，是非正式语, <span style=\"background-color:#aed581;color:#212121;\"><i><strong>\"不是(am/is/are&nbsp;not )\"&nbsp;</strong></i> &nbsp;</span> 或 &nbsp;<span style=\"background-color:#aed581;color:#212121;\"><i><strong>\"没有(have/has not)\"。 &nbsp;</strong></i></span></p>\n<p>&nbsp;</p>\n<p style=\"margin-left:40px;\"><i>那已经</i><span style=\"background-color:#aed581;\"><i><strong>不是</strong></i></span><i>弹弓了，那就是个十字弩</i><br><i>That </i><span style=\"background-color:#aed581;\"><i><strong>ain\'t &nbsp;no</strong></i></span><i><strong> </strong>slingshot, that\'s whole crossbow! （语法错误，但常以该形式出现）</i></p>\n<p style=\"margin-left:40px;\"><i>That isn\'t slingshot,</i></p>\n<p>&nbsp;</p>\n<p style=\"margin-left:40px;\"><i>他</i><span style=\"background-color:#aed581;\"><i><strong>没有</strong></i></span><i>车</i></p>\n<p style=\"margin-left:40px;\"><i>He </i><span style=\"background-color:#aed581;\"><i>ain\'t</i></span><i> got a car = He have not got a car</i></p>\n<p style=\"margin-left:40px;\">&nbsp;</p>\n<p style=\"margin-left:40px;\"><i>U bum. @StephenCurry30 already said he </i><span style=\"background-color:#aed581;\"><i><strong>ain\'t</strong></i></span><i><strong> </strong>going! So therefore </i><span style=\"background-color:#aed581;\"><i><strong>ain\'t no</strong></i></span><i> invite. Going to White House was a great honor until you showed up!</i></p>\n<p style=\"margin-left:40px;\"><i>he <strong>ain\'t </strong>going!&nbsp; = he is not going to</i></p>\n<p style=\"margin-left:40px;\"><i>So therefore <strong>ain\'t no</strong> invite. = So, there isn\'t any invite. （语法错误，但常以该形式出现）</i></p>\n<p style=\"margin-left:40px;\"><i>你这个混蛋。@StephenCurry30 已经说他不会去了！所以没有邀请。去白宫是一种莫大的荣幸，你出现后情况不一样了！</i></p>');
INSERT INTO `grammar` VALUES (6, 0, '分词变形规则', '<p><strong>【过去式/过去分词】</strong></p>\n<p style=\"margin-left:40px;\"><strong>元音结尾</strong><i><strong> ----------&gt; </strong></i><span style=\"background-color:#b71c1c;color:#fafafa;\"><i><strong>+d</strong></i></span><i><strong> -----&gt;</strong></i> &nbsp;<i><strong>celebrate / celebrated</strong></i></p>\n<p style=\"margin-left:40px;\"><strong>辅音结尾</strong><i><strong> ----------&gt; </strong></i><span style=\"background-color:#b71c1c;color:#fafafa;\"><i><strong>+ed</strong></i></span><i><strong> -----&gt;</strong></i> &nbsp;<i><strong>ruin / ruined</strong></i></p>\n<p style=\"margin-left:40px;\"><strong>辅音闭音</strong><i><strong> ----------&gt; </strong></i><span style=\"background-color:#b71c1c;color:#fafafa;\"><i><strong>+辅音 +ed&nbsp;</strong></i></span><i><strong> -----&gt;</strong></i> &nbsp;<i><strong>fog / fogged</strong></i></p>\n<p style=\"margin-left:40px;\"><strong>辅音+y结尾</strong><i><strong> &nbsp;------&gt; </strong></i><span style=\"background-color:#b71c1c;color:#fafafa;\"><i><strong>-y +ied</strong></i></span><i><strong> -----&gt;&nbsp;</strong></i> <i><strong>supply / supplied</strong></i></p>\n<p style=\"margin-left:40px;\"><strong>特殊情况</strong><i><strong>:&nbsp;</strong></i></p>\n<p style=\"margin-left:80px;\">swim / swam / swum</p>\n<p style=\"margin-left:80px;\">split / split / split</p>\n<p style=\"margin-left:80px;\">wear / wore / worn</p>\n<p style=\"margin-left:80px;\">bite / bit / bitten</p>\n<p style=\"margin-left:80px;\">mimic / mimicked / mimicked</p>\n<p style=\"margin-left:80px;\">stick / stuck / stuck</p>\n<p style=\"margin-left:80px;\">freeze / froze / frozen</p>\n<p style=\"margin-left:80px;\">weave / wove / woven</p>\n<p style=\"margin-left:80px;\">hit / hit / hit</p>\n<p style=\"margin-left:80px;\">spit / spat / spat</p>\n<p style=\"margin-left:40px;\">&nbsp;</p>\n<p><strong>【现在分词】</strong></p>\n<p style=\"margin-left:40px;\"><strong>元音结尾 </strong><i><strong>------&gt; </strong></i><span style=\"background-color:#b71c1c;color:#fafafa;\"><i><strong>-</strong></i><strong>e +ing</strong></span><strong> </strong><i><strong>-----&gt;</strong></i><strong>&nbsp;</strong><i> <strong>take / taking</strong></i></p>\n<p style=\"margin-left:40px;\"><strong>辅音结尾 </strong><i><strong>------&gt; </strong></i><span style=\"background-color:#b71c1c;color:#fafafa;\"><i><strong>+ing </strong></i></span><i><strong>-----&gt; crawl / crawling</strong></i></p>\n<p style=\"margin-left:40px;\"><strong>辅音闭音</strong><i><strong> ------&gt; </strong></i><span style=\"background-color:#b71c1c;color:#fafafa;\"><i><strong>+辅音 +ing</strong></i></span><i><strong> -----&gt; &nbsp;slip / slipping</strong></i></p>');
INSERT INTO `grammar` VALUES (7, 0, '过去时 VS 完成时', '<h3>【中英语表达时态的区别 】</h3>\n<p style=\"margin-left:40px;\"><i><strong>• 英语通过</strong></i><span style=\"background-color:#8bc34a;color:#f9fbe7;\"><i><strong>变形动词</strong></i></span><i><strong>表示动作发生的\"时间\"与\"状态\".&nbsp;</strong></i></p>\n<p style=\"margin-left:40px;\"><i><strong>• 汉语则通过</strong></i><span style=\"background-color:#8bc34a;color:#f9fbe7;\"><i><strong>副词或助词</strong></i></span><i><strong>表示.&nbsp;</strong></i></p>\n<p style=\"margin-left:80px;\"><i>例如: I have lived in Beijing for 10 years. 我在北京已经住了10年了.&nbsp;</i></p>\n<p style=\"margin-left:80px;\"><i>英语通过变形</i><span style=\"background-color:#f44336;color:#f9fbe7;\"><i>\"live\"</i></span><i> -&gt; </i><span style=\"background-color:#f44336;color:#f9fbe7;\"><i>\"have lived\"</i></span><i> 表达动作持续发生. &nbsp;</i></p>\n<p style=\"margin-left:80px;\"><i>汉语通过副词</i><span style=\"background-color:#f44336;color:#f9fbe7;\"><i>\"已经\"</i></span><i>和助词</i><span style=\"background-color:#f44336;color:#f9fbe7;\"><i>\"了\"</i></span><i>表达相同的意思.</i></p>\n<p style=\"margin-left:80px;\">&nbsp;</p>\n<h3>【过去时与完成时的区别】<span style=\"background-color:#f44336;color:#f9fbe7;\"><i>二者在语法上并没有错与对之分，只是说话者侧重不同罢了</i></span></h3>\n<p style=\"margin-left:40px;\"><i><strong>• 完成式强调动作的段效应，常翻译为 \"…了\", \"…得\", \"…着”：</strong>I have traveled to many countries. 我去了很多国家&nbsp;</i></p>\n<p style=\"margin-left:40px;\"><i><strong>• 过去时强调动作的点效应：</strong>I traveled to France last month. 上个月我去法国了</i></p>\n<p style=\"margin-left:40px;\">&nbsp;</p>\n<h3><strong>【说话时如何选择？</strong>】</h3>\n<p style=\"margin-left:40px;\"><i><strong>• 强调动作的段效应</strong></i>：<span style=\"background-color:#f44336;color:#f9fbe7;\">完成时&nbsp;</span></p>\n<p style=\"margin-left:80px;\"><i>I have lived in Beijing for 10 years. 我&lt;住了&gt;10年了在北京 -&gt; 我住在北京10年了. (最近10年)&nbsp;</i></p>\n<p style=\"margin-left:80px;\"><i>I have been anxious these past two years. 这两年我一直&lt;焦虑着&gt; -&gt; 这两年我一直很焦虑. (最近两年)&nbsp;</i></p>\n<p style=\"margin-left:80px;\"><i>I have traveled to many countries. 我&lt;去了&gt;很多国家 -&gt; 我去过很多国家 (最近一段时间内)&nbsp;</i></p>\n<p style=\"margin-left:80px;\"><i>Have you enjoyed your trip to Europe? 你去欧洲的旅行&lt;过得&gt;愉快吗？(旅行这段时间内)&nbsp;</i></p>\n<p style=\"margin-left:80px;\"><i>勒布朗决定一的采访过程, 主持人的提问大量使用了现在完成时, 暗指&lt;恢复自由球员身份的这段时间&gt;如何如何&nbsp;</i></p>\n<p style=\"margin-left:40px;\"><i><strong>• 强调动作的点效应</strong></i>：<span style=\"background-color:#f44336;color:#f9fbe7;\">过去时&nbsp;</span></p>\n<p style=\"margin-left:80px;\"><i>I traveled to France last month.</i></p>');
INSERT INTO `grammar` VALUES (8, 0, 'in 与 within 的区别', 'within 强调被限制在一定范围内');
INSERT INTO `grammar` VALUES (9, 0, 'million & millions', '1. 数字 + million \n例如： 20 million people\n\n2. millions of\n例如： He has millions of fans around the world');

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `category` smallint UNSIGNED NULL DEFAULT 0 COMMENT 'category',
  `name` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'lexical item name',
  `pronounce` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'pronounce',
  `common` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'common meaning',
  `noun` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'noun ',
  `noun_plural` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'noun plural',
  `verb` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'verb',
  `verb_past_tense` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'verb past tense',
  `verb_past_participle` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'verb past participle',
  `verb_present_participle` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'verb present participle',
  `verb_third_person_singular` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'verb third person singular',
  `adjective` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'adjective',
  `adverb` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'adverb',
  `conjunction` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'conjunction',
  `pronoun` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'pronoun',
  `preposition` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'preposition',
  `comment` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'comment',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 800 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'item' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES (1, 0, 'drone', 'drōn', '无人机', 'n.无人机', 'drones', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (3, 0, 'draw', 'drô', '画;吸引;抽出;平局', 'n.抽签;抽奖;平局;和局;吸烟;抽彩;不分胜负;有吸引力的人（或事物）;由抽签决定对手的比赛', NULL, 'v.画;进行，作（比较或对比）;吸引;拉(动);（向某个方向）移动，行进;产生，引起，激起（反应或回应）;(用铅笔、钢笔或粉笔)描绘;提取;牵引;抽出;抽（烟）;抽（签、牌）;获取;描画;拖(动);拔出;使说出;以平局结束', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'The match ended in a draw 比赛以平局结束\ndrawing sword 亮剑');
INSERT INTO `item` VALUES (4, 0, 'resupply', 'ˈrēsəˌplī', '补给', NULL, NULL, 'v.补给', 'resupplied', 'resupplied', 'resupplying', 'resupplies', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (5, 0, 'sailor', 'ˈsālər', '水手', 'n.水手', 'sailors', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (6, 0, 'abstain', '/əbˈsteɪn/', '戒烟酒;投弃权票', NULL, NULL, 'vi. 投弃权票;戒烟;戒酒;戒性', 'abstained', 'abstained', 'abstaining', 'abstains', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `item` VALUES (7, 1, 'Manila', 'məˈnilə', '马尼拉', 'n. 马尼拉', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (9, 0, 'shoreline', 'ˈSHôrˌlīn', '海岸线', 'n.海岸线', 'shorelines', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (10, 0, 'reef', 'rēf', '礁石', 'n.礁石', 'reefs', NULL, NULL, NULL, NULL, 'reefs', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (11, 1, 'Philippine', 'ˈfiləˌpēn', '菲律宾的', NULL, '', NULL, NULL, NULL, NULL, NULL, 'adj.菲律宾的;菲律宾人的;', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (12, 1, 'Philippines', 'ˈfiləˌpēns', '菲律宾', 'n.菲律宾', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (13, 0, 'reliant', '/rɪˈlaɪənt/', '依赖他人的', NULL, NULL, NULL, NULL, NULL, NULL, '', 'adj.依靠的;依赖性的', NULL, NULL, NULL, NULL, 'over-reliant 过度依赖的 Supply chains have made the US economy over-reliant on the Chinese economy in the past.');
INSERT INTO `item` VALUES (14, 0, 'decouple', '/diːˈkʌpl/', '脱钩', NULL, NULL, 'vt.使两事物分离; 隔断;', 'decoupled', 'decoupled', 'decoupling', 'decouples', NULL, NULL, NULL, NULL, NULL, 'As US supply chains decouple from China... 随着美国供应链与中国脱钩...');
INSERT INTO `item` VALUES (15, 0, 'vessel', '/ˈvesl/', '船只', 'n.(盛液体的)容器;(人或动物的)血管;器皿;(植物的)导管;脉管;轮船;大船', 'vessels', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (16, 0, 'exclusive', 'ikˈsklo͞osiv', '独家报道', 'n.独家新闻; 独家报道; 独家专文', NULL, NULL, NULL, NULL, NULL, NULL, 'adj.独家的; 专属的; 排斥的; (个人或集体)专用的，专有的，独有的，独占的; 不包括;高级的;豪华的;排外的;高档的;不愿接收新成员(尤指较低社会阶层)的', NULL, NULL, NULL, NULL, 'exclusive economic zone');
INSERT INTO `item` VALUES (17, 0, 'integral', 'ˈin(t)əɡrəl', '完整的;不可分割的', 'n.积分;整体', NULL, NULL, NULL, NULL, NULL, NULL, 'adj.完整的;不可或缺的;必需的;完备的;作为组成部分的', NULL, NULL, NULL, NULL, 'The Paracels and the Spratlys are an integral part of chinese territory\n西沙群岛和南沙群岛是中国领土不可分割的一部分');
INSERT INTO `item` VALUES (19, 0, 'mess', 'mes', '弄乱;搞错', 'n.混乱;困境;（军队的）食堂，餐厅;(组织欠佳等导致的)麻烦;许多;杂乱;肮脏;（狗、猫等的）粪便;不整洁;不整洁(或邋遢、不修边幅)的人;遇到严重问题且精神状态不佳的人', NULL, 'v.弄乱;弄脏;使不整洁;随地便溺', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<mess up 弄错了; 搞砸了>\n-Lebron messed up his handshake with Beasley.\n-2024年4月26库里获得起亚关键时刻球员奖. 巴克利吐槽这奖项胡搞, 意思是勇士和库里这赛季表现都一般. 随后奥尼尔采访库里说调侃道: 我替巴克利的胡搞向你道歉\n\n<mess with 与...打闹>');
INSERT INTO `item` VALUES (20, 0, 'tip', '/tɪp/', '小费;提示;点拨', 'n.提示;尖端;端;小费;指点;内幕消息,指点;垃圾场;尖儿;末端;实用的提示;(装在顶端的)小部件;脏乱的地方', 'tips', 'v.给小费;(使)倾斜;倾倒;轻触;点拨;倒出;(在户外)倒垃圾;翻覆;覆盖…的末端,遮盖…的边;轻碰;预言…获胜', 'tipped', 'tipped', 'tipping', 'tips', NULL, NULL, NULL, NULL, NULL, 'big tipper 小费给得多的人.奥尼尔给饭店服务员4000美金小费');
INSERT INTO `item` VALUES (21, 0, 'stroke', 'strōk', '摩挲', NULL, NULL, 'v.抚摸;摩挲(头, 脸, 皮毛)', 'stroked', 'stroked', 'stroking', NULL, NULL, NULL, NULL, NULL, NULL, '轻轻抚摸头\n撸猫');
INSERT INTO `item` VALUES (22, 3, 'Jesus', 'ˈdʒiːzəs', '耶稣', 'n.耶稣', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (23, 0, 'bodyguard', NULL, '保镖', 'n.保镖', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (24, 0, 'deaf', 'def', '聋的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.聋的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (25, 0, 'alternative', 'ôlˈtərnədiv', '备用的;候选的', 'n.备用的;可供选择的事物', NULL, NULL, NULL, NULL, NULL, NULL, 'adj.可供替代的;非传统的;另类的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (28, 0, 'shoal', 'SHōl', '浅滩', 'n.浅滩;鱼群;水下沙洲', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (30, 0, 'panic', '/ˈpænɪk/', '慌张;着急', 'n.恐慌;惊恐;着急;惶恐不安;', 'panics', 'v.(使)惊慌,惊慌失措', 'panicked', 'panicked', 'panicking', 'panics', 'adj.恐慌的;过度的;(恐慌心理)没来由的;牧人之神的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (31, 0, 'billboard', '/ˈbɪlbɔːrd/', '广告牌', 'n.(大幅)广告牌', 'billboards', 'v.宣传', 'billboarded', 'billboarded', 'billboarding', 'billboards', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (32, 0, 'stuff', '/stʌf/', '东西', 'n.东西,物品,玩意儿;原料,材料;作品,作品(或演讲, 乐曲等)的内容;基本特征,特质,根本;<口>能力,本事;物料,素材;行李,装备;(泛指)活儿,话,念头;家具;<英口><旧>无用的东西,废物;货色,财产;<口>毒品,麻醉剂(尤指海洛因);要素,基本的东西,特质,本质; <英>料子,毛料,呢绒;<美俚>赃物,走私货(尤指走私的威士忌酒);(发射出的)枪弹,炮弹;<美口><篮>灌篮,扣篮;<美口><棒>(投球手等使球旋转或呈曲线飞行等的)制球能力,制球', NULL, 'v.把…塞进(或填进);使充满, 使充斥;填满,装满;<俚>处理掉, 丢掉;(使)吃撑,吃足,吃得过饱;给(皮革)加脂;<英俚> <忌>与(女人)性交;给……装馅;<美俚>诓骗, 作弄;<英口>(在比赛中)轻易击败(对手);在(蔬菜, 鸡等)里填入(另外一种食物);<美>把伪票投入(票箱);制作(动物)标本', 'stuffed', 'stuffed', 'stuffing', 'stuffs', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (33, 6, 'belt', '/belt/', '带状物', 'n.带状物体. 例如: 腰带, 传送带, 皮带.', 'belts', 'v.飞驰;狠打;飞奔;猛击;用带系住', 'belted', 'belted', 'belting', 'belts', NULL, NULL, NULL, NULL, NULL, 'Belt and Road 一带一路');
INSERT INTO `item` VALUES (34, 0, 'collar', '/ˈkɑːlər/', '衣领', 'n.衣领;领子;(动物，尤指狗的)颈圈;(管子或机器部件的)圈、箍', 'collars', 'vt.抓住;揪住;捉住;逮住;拦住(某人以与其)谈话', 'collared', NULL, 'collaring', 'collars', NULL, NULL, NULL, NULL, NULL, 'blue-collar worker 蓝领工人\nwhite-collar worker 白领工人');
INSERT INTO `item` VALUES (35, 0, 'betray', '/bɪˈtreɪ/', '背叛', NULL, NULL, 'vt.背叛(人,组织,国家,信仰);辜负;不忠;', 'betrayed', 'betrayed', 'betraying', 'betrays', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (36, 0, 'big deal', NULL, '大事; 没啥了不起', 'n.大事; 要事;', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '本意: 大事\n口语中常用作反讽：这有啥了不起的');
INSERT INTO `item` VALUES (38, 0, 'infrastructure', '/ˈɪnfrəstrʌktʃər/', '基础设施', 'n.(国家或机构的)基础设施，基础建设', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (39, 0, 'military', '/ˈmɪləteri/', '军队;军事', 'n.军队;军方;军人', NULL, NULL, NULL, NULL, NULL, NULL, 'adj.军事的;军队的;武装的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (40, 1, 'Roman', '/ˈroʊmən/', '罗马人', 'n.罗马人;古罗马人;', NULL, NULL, NULL, NULL, NULL, NULL, 'adj.罗马的;古罗马的;天主教的;', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (41, 11, 'lettuce', '/ˈletɪs/', '生菜', 'n.生菜;莴苣', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (42, 7, 'continent', '/ˈkɑːntɪnənt/', '陆地', 'n.大陆;洲;陆地', NULL, NULL, NULL, NULL, NULL, NULL, 'adj.自制的;禁欲的;节欲的', NULL, NULL, NULL, NULL, '该词与连续continue相关, 连续的形成大陆');
INSERT INTO `item` VALUES (43, 0, 'nuisance', '/ˈnuːsns/', '骚扰', 'n.骚扰;妨害行为', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (44, 9, 'puppy', '/ˈpʌpi/', '小狗', 'n.狗崽;幼犬;傲慢小子;自负无礼的青年', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (51, 0, 'abstain from alcohol', NULL, '戒酒', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (52, 0, 'mess up', NULL, '弄乱了;搞错了', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (53, 0, 'Belt and Road', NULL, '一带一路倡议', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (54, 0, 'glucose', '/ˈɡluːkoʊs/', '葡萄糖', 'n.葡萄糖;右旋糖', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (55, 0, 'blue collar', '', '蓝领工人', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (56, 0, 'dont panic', NULL, '别慌', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (58, 0, 'chubby', '/ˈtʃʌbi/', '胖乎乎的;丰满的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.胖乎乎的;丰满的;圆胖的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (60, 0, 'decouple from', NULL, '与...脱钩', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (61, 0, 'over-reliant', NULL, '过度依赖的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (62, 0, 'adult', '/əˈdʌlt/', '成年人', 'n.成人;成年人;', 'adults', NULL, NULL, NULL, NULL, NULL, 'adj.(智力、思想、行为)成熟的，成人的;成年的;发育成熟的;仅限成人的(因有色情或暴力内容)', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (63, 0, 'mutual respect', NULL, '相互尊重', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (64, 0, 'astronaut', '/ˈæstrənɔːt/', '宇航员', 'n.宇航员;航天员', 'astronauts', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (65, 0, 'underestimate', 'ˌʌndərˈestɪmeɪt', '低估', 'n.低估;轻视', NULL, 'vt.低估;对…估计不足;轻视;', 'underestimated', 'underestimated', 'underestimating', 'underestimates', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (66, 0, 'chuck', '/tʃʌk/', '冒失地扔或抛', 'n.冒失地扔;抛;', NULL, 'v.冒失地扔或抛;', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '非正式用语, 可以为扔, 撇');
INSERT INTO `item` VALUES (67, 0, 'excusable', '/ɪkˈskjuːzəbl/', '情有可原的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.情有可原的;可原谅的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (68, 0, 'Jew', '/dʒuː/', '犹太人', 'n.犹太人', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (69, 0, 'religion', '/rɪˈlɪdʒən/', '宗教;信仰', 'n.宗教;信仰;', 'religions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (70, 0, 'ceasefire', '/ˈsiːsfaɪər/', '停火;停战', 'n.停火;停战', 'ceasefires', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cease比stop更正式');
INSERT INTO `item` VALUES (71, 0, 'mankind', '/mænˈkaɪnd/', '人类', 'n.人类', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (72, 0, 'locker room', NULL, '更衣室', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (73, 1, 'Iran', '/ɪ\'ræn/', '伊朗', 'n.伊朗', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (74, 1, 'Iranian', '/ɪˈreɪniən/', '伊朗的', 'n.伊朗人', NULL, NULL, NULL, NULL, NULL, NULL, 'adj.伊朗的;伊朗人的;', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (75, 8, 'ballistic missile', NULL, '弹道导弹', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (76, 0, 'draw charge', NULL, '造进攻犯规(篮球)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (77, 0, 'powder keg', NULL, '火药桶', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (78, 0, 'money talks bullshit walks', NULL, '有钱能使鬼推磨', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (79, 7, 'peninsula', '/pəˈnɪnsələ/', '半岛', 'n.半岛', 'peninsulas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (80, 11, 'cherry blossom', NULL, '樱花', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (81, 0, 'manufacturing', '/ˌmænjuˈfæktʃərɪŋ/', '制造业', 'n.制造业', NULL, NULL, NULL, NULL, NULL, NULL, 'adj.制造业的，制造的，生产的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (82, 0, 'cab', NULL, '出租车', 'n.出租车', 'cabs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (83, 13, 'diabetes', '/ˌdaɪəˈbiːtiːz/', '糖尿病', 'n.糖尿病', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (84, 0, 'executive', '/ɪɡˈzekjətɪv/', '经理;领导', 'n.经理;领导', 'executives', NULL, NULL, NULL, NULL, NULL, 'adj.有决策权力的;有执行权的;', NULL, NULL, NULL, NULL, '词根: ex 前外, sec 顺 跟随. 例如 second第二, execute执行(向外顺出去)');
INSERT INTO `item` VALUES (85, 14, 'slash', NULL, '砍;削减;反斜杠符号', NULL, NULL, 'v.抽象或具体的剁;劈;砍;削减;反斜杠符号', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '动作既可以是具体的, 也可以是抽象的');
INSERT INTO `item` VALUES (86, 0, 'electric vehicle', NULL, '电动汽车', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (87, 0, 'euro', '/ˈjʊroʊ/', '欧元', 'n.欧元', 'euros', NULL, NULL, NULL, NULL, NULL, 'adj.欧洲的;欧盟的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (88, 0, 'umbrella', '/ʌmˈbrelə/', '伞', 'n.伞', 'umbrellas', NULL, NULL, NULL, NULL, NULL, 'adj.伞状的', NULL, NULL, NULL, NULL, '伞可以是具体或抽象的, 例如核保护伞nuclear umbrella');
INSERT INTO `item` VALUES (89, 0, 'Santa', '/ˈsæntə/', '圣诞老人', 'n.圣诞老人;圣+地名', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'san francisco 圣弗朗西斯科 取自santa这个单词');
INSERT INTO `item` VALUES (90, 0, 'nerd', '/nɜːrd/', '书呆子', 'n.书呆子', 'nerds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (91, 0, 'bully', '/ˈbʊli/', '欺负;恶霸', 'n.仗势欺人者;恶霸', 'bullies', 'vt.欺负; 恐吓;伤害;胁迫', 'bullied', 'bullied', 'bullying', 'bullies', 'adj.顶好的;快活的;盛气凌人的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (92, 0, 'puzzle', '/ˈpʌzl/', '谜语', 'n.谜语', 'puzzles', 'vt.迷惑;使困惑', 'puzzled', 'puzzled', 'puzzling', 'puzzles', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (93, 10, 'pudding', NULL, '布丁', 'n.布丁', 'puddings', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (94, 0, 'closure', '/ˈkloʊʒər/', '企业倒闭; 道路封闭;', 'n.企业倒闭; 道路封闭;', NULL, 'vt.使结束;使终止;使停止辩论', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'business closure 企业倒闭');
INSERT INTO `item` VALUES (95, 0, 'hit', '/hɪt/', '打击;触碰;触动', 'n.打;击中;命中;查询结果;暴力犯罪;风行一时的流行歌曲(或唱片);很受欢迎的人(或事物);毒品的一剂', 'hits', 'v.打;击中;达到某水平;撞击;攻击打击;击球;用手或器具击;按按钮;触碰;碰撞;到达某地;使身体部位碰上某物;遇到困难;使突然想起;产生不良影响;击球得分;情感上触动和震撼', 'hit', 'hit', 'hitting', 'hits', NULL, NULL, NULL, NULL, NULL, '具体的或抽象的\"打击\", 与汉语中的\"打\"使用场景相同\n');
INSERT INTO `item` VALUES (96, 0, 'regret', '/rɪˈɡret/', '后悔', 'n.后悔;遗憾;懊悔;', NULL, 'v.后悔;遗憾;懊悔;', 'regretted', 'regretted', 'regretting', 'regrets', NULL, NULL, NULL, NULL, NULL, 'regret doing/sth/that');
INSERT INTO `item` VALUES (98, 10, 'snack', '/snæk/', '零食', 'n.零食', 'snacks', 'vi.吃零食', 'snacked', NULL, 'snacking', 'snacks', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (99, 0, 'nightmare', '/ˈnaɪtmer/', '噩梦', 'n.噩梦;梦魇;', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (100, 0, 'patent', 'ˈpætnt', '专利', 'n.专利', NULL, 'vt.获得专利权', NULL, NULL, NULL, NULL, 'adj.明显的;有专利的;受专利保护的;专利生产的;赤裸裸的;专利经销的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (101, 0, 'rule a country', NULL, '统治一个国家', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (102, 10, 'milkshake', NULL, '奶昔', 'n.奶昔', 'milkshakes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (103, 0, 'hypnotize', '/ˈhɪpnətaɪz/', '催眠', NULL, NULL, 'vt.催眠;对某人施催眠术', 'hypnotized', 'hypnotized', 'hypnotizing', 'hypnotizes', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (104, 0, 'dedicate himself to', NULL, '献身于', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (105, 0, 'client', '/ˈklaɪənt/', '客户;客户端', 'n.客户;客户端', 'clients', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (106, 0, 'figure', '/ˈfɪɡjər/', '数字;身材;塑像;弄清楚', 'n.数字;身材;图形;人物;人,动物;书中的图,表;花样;人的轮廓;人或动物的雕像,塑像;算术;数字符号;字码;(代表数量,尤指官方资料中的)数字', 'figures', 'v.计算;弄清楚;是…的部分;认为,认定某事将发生或属实;是重要部分', 'figured', 'figured', 'figuring', 'figures', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (107, 0, 'fruit', '/fruːt/', '水果', 'n.水果', 'fruits', 'vi.结果', 'fruited', 'fruited', 'fruiting', 'fruits', NULL, NULL, NULL, NULL, NULL, 'fruit不可数, 复数形式指的是水果的种类, 而不是水果个数');
INSERT INTO `item` VALUES (108, 0, 'inspiration', '/ˌɪnspəˈreɪʃn/', '激励', 'n.激励;灵感', 'inspirations', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (109, 0, 'aggravation', 'ˌaɡrəˈvāSHən', '恼怒;惹恼', 'n.恼怒;惹恼', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (110, 0, 'inspire', '/ɪnˈspaɪər/', '激励', NULL, NULL, 'vt.激励;鼓舞', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (111, 0, 'admire', '/ədˈmaɪər/', '欣赏;佩服', NULL, NULL, 'vt.欣赏;佩服', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (112, 0, 'work on', NULL, '从事;研究', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (113, 0, 'a couple months ago', NULL, '几个月前', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (114, 0, 'to live in the moment', NULL, '活在当下', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (115, 0, 'adversary', '/ˈædvərseri/', '对手;敌手', 'n.对手', 'adversaries', NULL, NULL, NULL, NULL, NULL, 'adj.敌手的;敌对的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (116, 0, 'condolence', '/kənˈdoʊləns/', '哀悼', 'n.慰问;哀悼', 'condolences', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (117, 0, 'dumb', '/dʌm/', '无语的;愚蠢的', NULL, NULL, 'vt.使沉默', 'dumbed', NULL, 'dumbing', 'dumbs', 'adj.无语的;愚蠢的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (118, 0, 'enormous', '/ɪˈnɔːrməs/', '巨大的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.巨大的;庞大的;极大的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (119, 0, 'on pins and needles', NULL, '如坐针毡', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '是一个形容词短语');
INSERT INTO `item` VALUES (120, 0, 'pitch', '/pɪtʃ/', '推销;沥青', 'n.沥青;球场;(尤指乐音的)音高;投球;(感情, 活动等的)程度,力度;(船在水上的)上下颠簸,纵摇;(体育比赛的)场地;倾斜度;(事物的)最高点;街头售货摊点;推销', 'pitches', 'v.投;推销;投球;当投手;(使产品或服务)针对,面向;搭(帐篷);颠簸;抛;触地;确定标准;(使球)定点落地;击出大曲线球;用力扔;重跌;定音高', 'pitched', 'pitched', 'pitching', 'pitches', NULL, NULL, NULL, NULL, NULL, '通常在正式和专业的环境中使用\n\npitch black 漆(沥青)黑');
INSERT INTO `item` VALUES (121, 0, 'a raft of', NULL, '一排;一揽子;大量', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (122, 0, 'clutch moment', NULL, '关键时刻', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '联想记忆: \"踩离合\" 与 \"掉链子\"');
INSERT INTO `item` VALUES (123, 9, 'tuna', '/ˈtuːnə/', '金枪鱼', 'n.金枪鱼', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (124, 9, 'salmon', '/ˈsæmən/', '三文鱼;鲑鱼', 'n.三文鱼;鲑鱼', 'salmons', NULL, NULL, NULL, NULL, NULL, 'adj.鲑肉粉红色的，浅橙色的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (125, 12, 'violet', '/ˈvaɪələt/', '紫罗兰色', 'n.紫罗兰色', 'violets', NULL, NULL, NULL, NULL, NULL, 'adj.紫罗兰色的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (126, 0, 'deserve', '/dɪˈzɜːrv/', '配得上', NULL, NULL, 'v.值得;配得上', 'deserved', 'deserved', 'deserving', 'deserves', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (127, 0, 'compete', '/kəmˈpiːt/', '竞争;对抗', NULL, NULL, 'vi.竞争;对抗', 'competed', 'competed', 'competing', 'competes', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (128, 8, 'ranger', NULL, '突击队员', 'n.突击队员', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (129, 9, 'viper', '/ˈvaɪpər/', '毒蛇', 'n.毒蛇', 'vipers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'python指的是蟒蛇');
INSERT INTO `item` VALUES (130, 0, 'assert', '/əˈsɜːrt/', '主张;断言', NULL, NULL, 'v.断言;生效;维护自己的权利(或权威);坚持自己的主张;明确肯定;表现坚定', 'asserted', 'asserted', 'asserting', 'asserts', NULL, NULL, NULL, NULL, NULL, '记忆技巧：as- 朝,向,加强 + sert 放置');
INSERT INTO `item` VALUES (131, 7, 'Bering Strait', NULL, '白令海峡', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '白令是丹麦航海家，白令海峡的发现者');
INSERT INTO `item` VALUES (132, 8, 'infantry', '/ˈɪnfəntri/', '步兵', 'n.步兵', 'infantries', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'infantry division 步兵师');
INSERT INTO `item` VALUES (133, 8, 'cavalry', '/ˈkævlri/', '骑兵', 'n.骑兵', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cavalry battalion 骑兵营\ncavalier 骑士');
INSERT INTO `item` VALUES (134, 0, 'cavalry battalion', NULL, '骑兵营', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (135, 13, 'Heart Disease', NULL, '心脏病', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (136, 0, 'celebrity', '/səˈlebrəti/', '名人;知名人士', 'n.名人;知名人士', 'celebrities', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (137, 0, 'cavalier', '/ˌkævəˈlɪr/', '骑士', 'n.骑士', 'cavaliers', NULL, NULL, NULL, NULL, NULL, 'adj.漫不经心的;不在乎的', NULL, NULL, NULL, NULL, 'cavalry 骑兵');
INSERT INTO `item` VALUES (138, 0, 'recruit', '/rɪˈkruːt/', '招募;征兵', 'n.新兵;新成员;', 'recruits', 'v.招募;征兵', 'recruited', 'recruited', 'recruiting', 'recruits', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (139, 0, 'humble', '/ˈhʌmbl/', '谦虚的;卑微的', NULL, NULL, 'vt.谦逊;虚心;低声下气;使感到卑微;贬低;轻松打败(尤指强大的对手)', 'humbled', 'humbled', 'humbling', 'humbles', 'adj.谦虚的;卑微的', NULL, NULL, NULL, NULL, 'in my humble opinion 我个人认为');
INSERT INTO `item` VALUES (140, 0, 'survivor', '/sərˈvaɪvər/', '幸存者;生还者', 'n.幸存者;生还者', 'survivors', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (141, 0, 'wild', '/waɪld/', '野生的;放荡的', 'n.自然环境;野生状态;偏远地区;人烟稀少的地区', 'wilds', '', NULL, NULL, NULL, NULL, 'adj.野生的;野的;天然的;荒凉的;放荡的;狂暴的;荒芜的;很棒的;无法无天的;盲目的;自然生长的;热衷于…;缺乏管教的;感情炽烈的', 'adv.猛烈地;胡乱地;狂暴地', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (142, 0, 'predator', '/ˈpredətər/', '掠夺者;捕食性动物', 'n.掠夺者;捕食性动物', 'predators', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (143, 0, 'adorable', 'əˈdɔːrəbl', '讨人喜欢的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.可爱的;讨人喜欢的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (144, 0, 'sensation', '/senˈseɪʃn/', '轰动一时的事件', 'n.感觉;轰动一时的事件', 'sensations', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (145, 0, 'Drawing Sword', NULL, '亮剑', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (146, 3, 'Hitler', '/ˈhɪtlər/', '希特勒', 'n.希特勒', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (147, 0, 'shepherd', '/ˈʃepərd/', '牧羊人;羊倌', 'n.牧羊人;羊倌', 'shepherds', 'vt.带领;护送;引', 'shepherded', NULL, 'shepherding', 'shepherds', NULL, NULL, NULL, NULL, NULL, 'German Shepherd 德国牧羊犬');
INSERT INTO `item` VALUES (148, 9, 'German Shepherd', NULL, '德国牧羊犬', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (149, 0, 'anthem', '/ˈænθəm/', '国歌', 'n.国歌;组织或群体的社歌', 'anthems', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (150, 0, 'hilarious', '/hɪˈleriəs/', '搞笑的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.搞笑的;令人捧腹的;极其滑稽的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (151, 0, 'the hell', NULL, '到底;究竟(表达不满)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '用于加强语气表达不满. 可翻译为\"究竟\",\"到底\",与the fuck类似, 有冒犯之意\nwho the hell are you? 你到底是谁啊(表示不耐烦)\nwhat the fuck...\nwhat the hell...');
INSERT INTO `item` VALUES (152, 9, 'bugs', '/bʌɡz/', '虫子', 'n.虫子;小昆虫;着迷;热衷;小病;轻微的传染病', NULL, 'v.窃听(谈话);使烦恼;在(某处)装窃听器;使恼怒', NULL, NULL, NULL, NULL, 'adj.发疯的，疯狂的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (153, 0, 'hypnic jerk', NULL, '睡觉时激灵一下', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (154, 9, 'seagull', '/ˈsiːɡʌl/', '海鸥', 'n.海鸥', 'seagulls', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (155, 9, 'kangaroo', '/ˌkæŋɡəˈruː/', '袋鼠', 'n.袋鼠', 'kangaroos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (156, 9, 'zebra', '/ˈziːbrə/', '斑马', 'n.斑马', 'zebras', NULL, NULL, NULL, NULL, NULL, 'adj.有斑马般斑纹的;有条纹的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (157, 9, 'warthog', '/ˈwɔːrthɑːɡ/', '疣猪', 'n.疣猪', 'warthogs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (158, 1, 'Saudi Arabia', '/ˌsaʊdi əˈreɪbiə/', '沙特阿拉伯', 'n.沙特阿拉伯', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (159, 0, 'take offense', NULL, '动怒;介意', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (160, 0, 'spit', '/spɪt/', '吐;吐口水', 'n.吐口水', NULL, 'v.吐;吐口水(常表示挑衅);咝咝地冒油;', 'spat', 'spat', 'spitting', 'spits', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (161, 0, 'nail', '/neɪl/', '指甲;钉子;击中', 'n.指趾甲;钉子', 'nails', 'v.钉; 固定;获得,赢得,击中,搞定,完成;抓住;揭露;揭发;抓获并证明有罪;证明…不属实', 'nailed', 'nailed', 'nailing', 'nails', NULL, NULL, NULL, NULL, NULL, '本质: 尖又细的东西');
INSERT INTO `item` VALUES (162, 17, 'hose', '/hoʊz/', '软管;橡皮管', 'n.软管; 橡皮管', 'hose', 'vt.用软管输水冲洗', 'hosed', 'hosed', 'hosing', 'hoses', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (163, 0, 'prime', '/praɪm/', '优质的;主要的;涂底漆', 'n.盛年;鼎盛时期;年富力强的时期;[数]质数', 'primes', 'v.把(事物)准备好;使(某人)做好准备;浇灌;打底漆以增强防护效果;事先指点', 'primed', 'primed', 'priming', 'primes', 'adj.主要的;首要的;基本的;优质的;典型的;优异的;有代表性的;最可能的;上乘的', 'adv.妙极', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (164, 0, 'rot', '/rɑːt/', '腐烂', 'n.腐烂,腐坏;腐朽,破损;腐败,腐化,堕落;蠢话,胡说,废话;(植物的)枯死;腐蹄病;腐烂物;蠢事,荒唐事;形势恶化;肝(双盘)吸虫病;消耗性病;羊肝蛭病 ;一连串的失败;腐朽的事物', 'rots', 'v.(由于细菌或霉菌作用而)(使)腐烂,(使)腐坏;(因使用日久或受腐蚀等而)(使)腐朽,(使)破损;(使)腐败,腐化,堕落;(使)腐败变质;打趣,开玩笑;(因被幽禁, 缺乏活动等而)变得憔悴,失去活力;(尤指人在狱中)身心状况越来越糟,萎靡不振,颓废下去;走向毁灭;(社会, 制度等因缺乏活力等而)逐渐衰败;〈俚〉搞糟', 'rotted', 'rotted', 'rotting', 'rots', NULL, NULL, NULL, NULL, NULL, '与rat耗子相关. 即耗子多的地方一篇狼藉, 腐烂;');
INSERT INTO `item` VALUES (165, 17, 'screw', '/skruː/', '螺丝钉', 'n.螺丝;螺丝钉;(对螺丝的)旋拧;螺旋桨;性交;性交对象;监狱看守', 'screws', 'v.拧紧;旋紧;用螺丝固定(或拧牢);(和某人)性交;把(纸等)揉成一团;拧上去;诈骗(钱财等)', 'screwed', 'screwed', 'screwing', 'screws', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (166, 0, 'carpenter', '/ˈkɑːrpəntər/', '木工', 'n.木匠;木工', 'carpenters', 'v.以木工手艺造[修](家具,器物,房屋等)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (167, 16, 'strawberry', '/ˈstrɔːberi/', '草莓', 'n.草莓', 'strawberries', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (168, 0, 'tease', '/tiːz/', '戏弄;捉弄', 'n.取笑;戏弄;捉弄;取笑者;爱戏弄人的人;逗弄者;勾引人者;卖弄风骚的人', 'teases', 'v.取笑;戏弄;梳理;挑逗;逗弄(动物);揶揄;撩拨(异性);寻开心', 'teased', 'teased', 'teasing', 'teases', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (169, 18, 'Volkswagen', '/ˈvəʊkswægən/', '大众汽车', 'n.大众汽车', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (170, 0, 'slingshot', '/ˈslɪŋʃɑːt/', '弹弓', 'n.弹弓', 'slingshots', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (171, 0, 'crossbow', '/ˈkrɔːsboʊ/', '十字弩;弩弓', 'n.弩;弩弓;十字弩', 'crossbows', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (172, 0, 'die', '/daɪ/', '死;消失', 'n.模具;冲模;压模', NULL, 'v.死;死亡;消失;消亡;灭亡;凋谢;停止运转', 'died', 'died', 'dying', 'dies', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `item` VALUES (174, 0, 'smash', '/smæʃ/', '砸碎;打碎', 'n.打碎;破碎;扣球,高压球;猛击,猛撞;撞车;破灭,垮台;<口>轰动的演出,巨大的成功;十分走红的歌曲(或电影, 戏剧);破碎的哗啦声;斯马喜饮料', NULL, 'v.粉碎;粉碎,使破灭;(哗啦一声)打碎,打破,破碎;(轻而易举)打破(纪录);捣毁;撞毁(车辆);<物>分裂(原子) ;压扁,压平,压碎;<口>使经济上失败,使破产;<旧>破产;(用力)撞开,击穿,闯过;(使)猛烈撞击,猛烈碰撞;打高压球,猛扣', 'smashed', 'smashed', 'smashing', 'smashes', 'adj.<口>轰动一时的,极为成功的', 'adv.轰然', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (175, 9, 'penguin', '/ˈpeŋɡwɪn/', '企鹅', 'n.企鹅', 'penguins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (176, 0, 'keeper', '/ˈkiːpər/', '饲养员', 'n.保管人;看守人;(尤指动物园的)饲养员', 'keepers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (177, 0, 'fluff', '/flʌf/', '绒毛', 'n.(衣服等上的)蓬松毛团;(禽兽,尤指幼者的)绒毛;没多大意义的娱乐', 'fluffs', 'vt.使松散;抖松;搞糟;弄砸', 'fluffed', 'fluffed', 'fluffing', 'fluffs', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (178, 0, 'chase', '/tʃeɪs/', '追逐;追赶;追求', 'n.追逐;追赶;追捕;争取;打猎;努力获得', 'chases', 'v.追逐;追赶;追求;追捕;催促;镂刻;求爱;急奔;努力获得;争取得到', 'chased', 'chased', 'chasing', 'chases', NULL, NULL, NULL, NULL, NULL, '可表示具体或抽象的:\ncat like to chase the mice\nchase your happy');
INSERT INTO `item` VALUES (179, 0, 'mess with', NULL, '招惹;捣乱', NULL, NULL, 'v.招惹;捣乱;打闹', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (180, 9, 'gorilla', '/ɡəˈrɪlə/', '大猩猩', 'n.大猩猩', 'gorillas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (181, 0, 'plumber', '/ˈplʌmər/', '水暖工', 'n.水暖工', 'plumbers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (182, 0, 'creepy', '/ˈkriːpi/', '毛骨悚然的;怪异的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.令人毛骨悚然;令人毛骨悚然的;怪异的，离奇的(使人感到紧张);令人不寒而栗的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (183, 0, 'grab', '/ɡræb/', '抓;夺;抢', 'n.抓斗;抓具;抓取(或截取, 采集)的图像;突然的抢夺;猛然的抓取', 'grabs', 'v.抓住;(试图)抓住,夺得;利用,抓住(机会);(尤指匆忙地)取,拿,吃,喝;攫取;捞取,赚取,抢占;引人注意', 'grabbed', 'grabbed', 'grabbing', 'grabs', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (184, 0, 'rag', '/ræɡ/', '抹布', 'n.抹布;破布;小报;雷格泰姆乐曲;慈善募捐活动;质量低劣的报纸', 'rags', 'vt.嘲笑;捉弄', 'ragged', 'ragged', 'ragging', 'rags', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (185, 16, 'coconut', '/ˈkoʊkənʌt/', '椰子', 'n.椰子', 'coconuts', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (186, 0, 'chainsaw', '/ˈtʃeɪnsɔː/', '电锯', 'n.链锯;电锯', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (187, 0, 'wear', '/wer/', '穿戴', 'n.磨损;衣着,穿着;穿戴,佩戴;(尤用于商店)…时穿的衣服,…装;耐用性,经久性;损耗量;使用量(或形式)', 'wears', 'v.穿;磨损,穿破;戴,佩戴;<口>(不)接受,允许;接受,容许;蓄,留(发, 须等);耐用;(船只)升,挂(旗);流露,面带,呈现(某种神态);(水等)冲刷,侵蚀出;消磨(时间);磨出,穿成,磨成;使疲乏,使虚弱,使厌倦;渐渐过去,逐渐变化;经受考验;使形成特定习惯(或气质)', 'wore', 'worn', 'wearing', 'wears', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (188, 0, 'peel', '/piːl/', '蔬果皮;扒皮', 'n.果皮;蔬菜皮', 'peels', 'v.剥;脱落;剥(水果, 蔬菜等的)皮;起皮;剥掉;揭掉', 'peeled', 'peeled', 'peeling', 'peels', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (189, 0, 'immaculate', '/ɪˈmækjələt/', '完美无瑕', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.干净的 纯洁的 整洁的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (190, 0, 'creature', '/ˈkriːtʃər/', '生物;动物', 'n.生物;动物', 'creatures', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (191, 0, 'as fuck', NULL, '妈的;卧槽', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '常出现句尾表示感叹或装一下逼 ... 妈的 卧槽');
INSERT INTO `item` VALUES (192, 0, 'chill', '/tʃɪl/', '放松的', 'n.寒冷;寒意;着凉;凉意;受寒;害怕的感觉', 'chills', 'v.使冷却;被冷藏;放松;使冰冷;使恐惧;使很冷;恐吓;吓唬', 'chilled', 'chilled', 'chilling', 'chills', 'adj.寒冷的;阴冷的;冷飕飕的;放松的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (193, 9, 'earthworm', '/ˈɜːrθwɜːrm/', '蚯蚓', 'n.蚯蚓', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (194, 0, 'blade', '/bleɪd/', '刀片;桨叶', 'n.刀身;(机器上旋转的)叶片;刀片;刀刃;桨叶;(船桨的)桨叶，桨身;（草的）叶片;（溜冰鞋的）冰刀', 'blades', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (195, 0, 'gear', '/ɡɪr/', '换挡', 'n.齿轮;(特定用途的)器械,装置;(做事的)速度,努力;(某种活动的)设备,用具,衣服;传动装置;挡;排挡;衣服;毒品;所有物', 'gears', 'v.换挡;使适应;使准备好;使搭配;使兴奋起来', 'geared', 'geared', 'gearing', 'gears', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (196, 0, 'sauce', '/sɔːs/', '酱;蘸料', 'n.酱;调味汁;无礼的话(或举动);讨厌的话(或举动)', 'sauces', 'v.对…无礼;给…增加趣味或风味;调味或加沙司于…', 'sauced', 'sauced', 'saucing', 'sauces', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (197, 0, 'naive', '/naɪˈiːv/', '幼稚的;无知的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.天真的;幼稚的;无知的;轻信的;缺乏经验的;率直的;稚拙派的(简单质朴，色彩明快)', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (198, 0, 'nude', '/nuːd/', '裸体;裸体的', 'n.裸体;裸体画;裸体人像;人物裸体作品', 'nudes', NULL, NULL, NULL, NULL, NULL, 'adj.裸体的;肉色的;裸体者的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (199, 0, 'fossil', '/ˈfɑːsl/', '化石', 'n.化石;(尤指)老顽固，思想僵化的人，老古董;老人', 'fossils', NULL, NULL, NULL, NULL, NULL, 'adj.化石的;陈腐的;从地下发掘出来的;属于旧时代的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (200, 0, 'toxin', '/ˈtɑːksɪn/', '毒素', 'n.毒素(动植物分泌的)', 'toxins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'toxin是动物或植物分泌的毒素\npoison指所有有毒的东西，含义更广');
INSERT INTO `item` VALUES (201, 11, 'ivy', '/ˈaɪvi/', '常春藤', 'n.常春藤', 'ivies', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '果实、种子和叶子均有毒.\n与罗马数字4同音\nI\nII\nIII\nIV\nV\nVI\n');
INSERT INTO `item` VALUES (202, 0, 'Cambrian Explosion', '/ˈkæmbriən/', '寒武纪生命大爆发', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (203, 11, 'bamboo', '/ˌbæmˈbuː/', '竹子;竹制的', 'n.竹子', 'bamboos', 'v.为...装上竹子（或篾条）', NULL, NULL, NULL, NULL, 'adj.竹制的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (204, 0, 'cuteness', 'ˈkyo͞otnəs', '可爱', 'n.可爱', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (205, 0, 'ramen', '/rɑmən/', '拉面', 'n.拉面', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (206, 0, 'scaffold', '/ˈskæfoʊld/', '脚手架;建筑架', 'n.脚手架;断头台; 鹰架;绞刑架;建筑架', 'scaffolds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (207, 0, 'munch', '/mʌntʃ/', '咀嚼', 'n.津津有味的咀嚼;咀嚼声;芒奇(人名);用力的咀嚼', NULL, 'v.用力咀嚼,大声咀嚼(脆的食物);津津有味地嚼;出声咀嚼', 'munched', 'munched', 'munching', 'munches', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (208, 0, 'panorama', '/ˌpænəˈræmə/', '全景', 'n.全景;全景画', 'panoramas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pan全部 + orama景观');
INSERT INTO `item` VALUES (209, 0, 'leap year', NULL, '闰年', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (210, 0, 'leap', '/liːp/', '跳;跳跃', 'n.跳跃;跳高;激增;剧增;跳越;骤变', 'leaps', 'v.跳;跳跃;剧增;跳越;猛涨;猛冲;突然做(某事);骤增', 'leaped', 'leaped', 'leaping', 'leaps', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (211, 0, 'ram', '/ræm/', '公羊;冲撞', 'n.公羊;夯锤;撞击装置;<俚>缺点,过失,瑕疵;攻城槌;<粗> 棒槌(指阴茎);<俚>色鬼;<澳>同伙,同谋', 'rams', 'v.和…相撞,撞击;冲,闯,疾行;夯实;塞进,挤进;装填;反复灌输,迫使接受(想法等) ;高速驾驶;<俚>对(女人)施性行为;埋实', 'rammed', 'rammed', 'ramming', 'rams', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (212, 0, 'durian', '/ˈdʊriən/', '榴莲', 'n.榴莲', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (213, 0, 'vigorous', '/ˈvɪɡərəs/', '剧烈的;充满活力的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.充满活力的;精力充沛的;强壮的;强健的;果断的', NULL, NULL, NULL, NULL, 'vigorous exercise 剧烈运动');
INSERT INTO `item` VALUES (214, 0, 'seal', '/siːl/', '海豹', 'n.印章;海豹;保证;密封垫(或带等);印记;图章;封蜡;玺;信物;表示确认的事物;封蜡模(印)', 'seals', 'vt.密封(容器);关闭;确定;封上(信封);封盖…的表面', 'sealed', 'sealed', 'sealing', 'seals', NULL, NULL, NULL, NULL, NULL, 'seal=sea lion');
INSERT INTO `item` VALUES (215, 0, 'stamina', '/ˈstæmɪnə/', '耐力;持久力', 'n.耐力;持久力', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (216, 0, 'insurance', '/ɪnˈʃʊrəns/', '保险', 'n.保险;保险费;保险业;保险契约，保险单;（防备不测的）保障措施，安全保证;〈体〉保证球队始终处于领先地位的得分', 'insurances', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (217, 0, 'rescue', '/ˈreskjuː/', '救援;营救', 'n.救援;抢救;营救;获救;营救行动', 'rescues', 'vt.营救;抢救;援救', 'rescued', 'rescued', 'rescuing', 'rescues', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (218, 0, 'bite', '/baɪt/', '咬', 'n.咬一口;咬伤;寒冷;咬饵;影响力;浓香;简单的一餐;小量食物', 'bites', 'v.咬;叮;上钩;蜇;咬饵;产生不良影响', 'bit', 'bitten', 'biting', 'bites', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (219, 0, 'iceberg', '/ˈaɪsbɜːrɡ/', '冰山', 'n.冰山', 'icebergs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (220, 0, 'pedestrian', '/pəˈdestriən/', '行人', 'n.行人;步行者', 'pedestrians', NULL, NULL, NULL, NULL, NULL, 'adj.行人的;行人使用的;乏味的;无趣的;缺乏想象的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (221, 0, 'ramp', '/ræmp/', '斜坡;舷梯', 'n.斜坡;舷梯', 'ramps', 'v.敲诈;使有斜面', 'ramped', 'ramped', 'ramping', 'ramps', NULL, NULL, NULL, NULL, NULL, 'ramp up 增加;提高');
INSERT INTO `item` VALUES (222, 1, 'Moscow', '/ˈmɑˌskoʊ/', '莫斯科', 'n.莫斯科', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (223, 0, 'set out to', NULL, '打算;准备', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (224, 0, 'aspire', '/əˈspaɪər/', '立志;渴望', NULL, NULL, 'vi.渴望;立志', 'aspired', 'aspired', 'aspiring', 'aspires', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (225, 0, 'archeologist', '/ˌɑrkiˈɑlədʒɪst/', '考古学家', 'n.考古学家', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (226, 0, 'democracy', '/dɪˈmɑːkrəsi/', '民主', 'n.民主;民主国家;民主制度;民主政体;民主权利;民主精神', 'democracies', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (227, 0, 'lag', '/læɡ/', '落后;发展缓慢', 'n.滞后', 'lags', 'v.滞后;落后于;发展缓慢;缓慢移动;给(管道等)加防冻保暖层', 'lagged', 'lagged', 'lagging', 'lags', 'adj.慢的;最后的', NULL, NULL, NULL, NULL, 'a lagging military 落后的军队');
INSERT INTO `item` VALUES (229, 0, 'overlook', '/ˌoʊvərˈlʊk/', '忽视;漏看', 'n.忽视,忽略,看漏;从高处眺望到的景色;供眺望的场所,可眺望四周的高地', NULL, 'vt.没有注意到,忽视,忽略;眺望,俯瞰;察看,细看,检查;(对不良现象等)不予理会,视而不见;<古>照管,监督,监视;宽容,宽恕;高耸于…之上;(提拔等时)对(某人)不予考虑;<古>用歹毒的目光看,施魔法于', 'overlooked', 'overlooked', 'overlooking', 'overlooks', NULL, NULL, NULL, NULL, NULL, 'overlooked 被忽略的');
INSERT INTO `item` VALUES (230, 7, 'Arab', '/ˈærəb/', '阿拉伯', 'n.阿拉伯人;阿拉伯马', 'Arabs', NULL, NULL, NULL, NULL, NULL, 'adj.阿拉伯的;阿拉伯人的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (231, 0, 'maverick', '/ˈmævərɪk/', '特立独行的人', 'n.持不同意见者;独行其是者;言行与众不同者', 'mavericks', NULL, NULL, NULL, NULL, NULL, 'adj.特立独行的;标新立异的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (232, 0, 'acknowledge', '/əkˈnɑːlɪdʒ/', '承认;认可', NULL, NULL, 'vt.承认(权威, 地位);(公开)感谢;(微笑, 挥手等)致意;告知收悉', 'acknowledged', 'acknowledged', 'acknowledging', 'acknowledges', NULL, NULL, NULL, NULL, NULL, 'ac朝向+knowledge知道\n\n承认或认可一项事实, 这个事实是中性的. admit则侧重认罪或招供');
INSERT INTO `item` VALUES (233, 0, 'rig', '/rɪɡ/', '暗箱操作;钻井平台', 'n.钻塔;钻井设备;大卡车;大货车;帆装(船桅和风帆等的安装模式);有专门用途的设备', 'rigs', 'vt.操纵;(秘密地)安装;(以不正当的手段)控制;装配;提供索具;(给船只)装帆', 'rigged', 'rigged', 'rigging', 'rigs', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (234, 0, 'predict', '/prɪˈdɪkt/', '预测;预言', NULL, NULL, 'v.预测;预报;预言;预告', 'predicted', 'predicted', 'predicting', 'predicts', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (235, 0, 'tout', '/taʊt/', '推销;吹捧', 'n.(音乐会, 体育比赛等的)卖高价票的人,票贩子', 'touts', 'v.吹捧;兜售;吹嘘;标榜;推销;吹牛;(尤指在剧院, 体育场等外)倒卖高价票,卖黑市票', 'touted', 'touted', 'touting', 'touts', NULL, NULL, NULL, NULL, NULL, '用于正式和非正式情境. 略带贬义.');
INSERT INTO `item` VALUES (236, 0, 'silent', '/ˈsaɪlənt/', '沉默的;无声的', 'n.无声电影', 'silents', NULL, NULL, NULL, NULL, NULL, 'adj.沉默的;无声的;安静的;不说话的;不发音的;少言寡语的;不爱说话的;很少说话的;不喧闹的;不用言语表达的;不提供情况的', NULL, NULL, NULL, NULL, 'silent protest 无声的抗议');
INSERT INTO `item` VALUES (237, 0, 'nonviolent', NULL, '非暴力的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.非暴力的，不诉诸武力的;(犯罪等)不使用暴力的，不伤害他人的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (238, 0, 'hostage', '/ˈhɑːstɪdʒ/', '人质', 'n.人质', 'hostages', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'host+age 有主人看管的人');
INSERT INTO `item` VALUES (239, 0, 'shield', '/ʃiːld/', '盾牌;屏障;防护', 'n.盾牌;(保护机器和操作者的)护罩,防护屏,挡板;屏障;保护物;(警察的)盾形徽章;保护人;掩护物;盾形纹徽;盾形奖牌', 'shields', 'vt.保护某人或某物;给…加防护罩', 'shielded', 'shielded', 'shielding', 'shields', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (240, 0, 'victim', '/ˈvɪktɪm/', '受害者;遇难者', 'n.受害者;牺牲品;牺牲;罹难者;受骗者;祭品;上当的人;罹病者;为祭祀杀死的动物(或人)', 'victims', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (241, 0, 'fabulous', '/ˈfæbjələs/', '好的;妙的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.极好的;绝妙的;巨大的;很大的;寓言中的;神话似的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (242, 5, 'delegation', '/ˌdelɪˈɡeɪʃn/', '代表团', 'n.代表团;委托;委派', 'delegations', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (243, 0, 'slap', '/slæp/', '扇嘴巴;拍打', 'n.(用手掌)打,拍,掴;打击,挫伤;拍打声,类似拍打的声音;(围墙等的)开口,缺口;<口>浓妆;便妆;山丘间的小道', 'slaps', 'v.(用手掌)打,拍,掴;掴,拍打;惩罚,课(税);<口>(大量随意快速地)涂抹;口头攻击,斥责;<口>对…提起诉讼,向…送交(传票等);(尤指生气地)啪的一声放下,随意扔放;啪地击打(或撞上)', 'slapped', 'slapped', 'slapping', 'slaps', 'adj.<南非>无力的,无约束力的;(食物)松软的;水分过多的,软塌塌的;无能的,效率不高的', 'adv.正好;恰好;猛然;径直', NULL, NULL, NULL, 'slap bass 贝斯击弦');
INSERT INTO `item` VALUES (244, 0, 'swift', '/swɪft/', '迅速的;敏捷的', 'n.<鸟>褐雨燕;<昆>蝙蝠蛾;<动>快速爬行的小蜥蜴;<纺>纱框,箴子,绷架', 'swifts', '', NULL, NULL, NULL, NULL, 'adj.迅速的,飞快的;敏捷的;短暂的,突然的;立刻的;矫健的;速度快的,快速移动的;迅即发生的', 'adv.(现多用于构成复合词)快,迅速地,敏捷地', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (245, 0, 'heaven', '/ˈhevn/', '天堂', 'n.天堂，天国;天，天空;上天，上帝;极乐（之地），天堂般美好（的世界）;众天神，上帝及众天使', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (246, 0, 'kitty', '/ˈkɪti/', '小猫;猫咪', 'n.小猫;猫咪;共同凑集的一笔钱;全部赌注', 'kitties', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (247, 0, 'mimic', '/ˈmɪmɪk/', '模仿', 'n.会模仿的人(或动物)', 'mimics', 'v.模仿(人的言行举止);(外表或行为举止)像', 'mimicked', 'mimicked', 'mimicking', 'mimics', 'adj.模仿的;拟态的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (248, 0, 'stick', '/stɪk/', '卡住;坚持;伸出', 'n.棍,条,签;(飞机的)操纵杆,驾驶杆;一管,一支(胶棒等);枝条;批评;(车辆的)变速杆,换挡杆;枯枝;球棍;指挥棒;条状物;棍状物;柴火棍儿', 'sticks', 'v.粘贴;粘住;被接受;卡住,陷住,动不了;(尤指迅速或随手)放置;戳;容忍;将…刺入(或插入);对…不感兴趣;不再要牌;坚持;伸出', 'stuck', 'stuck', 'sticking', 'sticks', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (249, 0, 'punch', '/pʌntʃ/', '用拳猛击', 'n.冲床;打孔机;穿孔器;潘趣酒,宾治酒;吸引力;用力的捶打;重拳击打', 'punches', 'vt.用拳猛击;给…打孔;压(按钮);按(键);拳打;(用打孔器等)打孔;以拳痛击', 'punched', 'punched', 'punching', 'punches', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (250, 0, 'doubt', '/daʊt/', '不确定;怀疑', 'n.疑问;疑惑;不确定;不相信', NULL, 'v.怀疑;不相信;不信任;不能肯定;无把握;认为…未必可能', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (251, 0, 'of late', '/əv leɪt/', '最近;近来', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (252, 0, 'look forward to', NULL, '期待', NULL, NULL, 'v.期待', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (253, 0, 'franchise', '/ˈfræntʃaɪz/', 'NBA球队', 'n.(公司授予的)特许经销权;(公民)选举权;(国家授予的)特别经营权,特许;获特许权的商业(或服务)机构', 'franchises', 'vt.授予(或出售)特许经销权(或经营权)', 'franchised', 'franchised', 'franchising', 'franchises', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (254, 0, 'turn down', '/tɜːrn daʊn/', '拒绝;闭了', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (255, 0, 'headliner', '/ˈhɛˌdlaɪnər/', '头条新闻; 主要演员;', 'n.头条新闻; 主要演员;主角', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (256, 0, 'unselfish', '/ʌnˈselfɪʃ/', '无私的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.无私的;忘我的;不谋私利的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (257, 0, 'kick off', NULL, '开球;开启', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (258, 0, 'intimidate', '/ɪnˈtɪmɪdeɪt/', '吓唬;恐吓', NULL, NULL, 'vt.恐吓;威胁', 'intimidated', 'intimidated', 'intimidating', 'intimidates', NULL, NULL, NULL, NULL, NULL, 'threaten 更强调用实际行动恐吓');
INSERT INTO `item` VALUES (259, 0, 'champion', '/ˈtʃæmpiən/', '捍卫;拥护;冠军', 'n.冠军;拥护者;捍卫者;优胜者;第一名;声援者;斗争者', 'champions', 'v.捍卫;为…而斗争;声援', 'championed', 'championed', 'championing', 'champions', 'adj.头等的;非常的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (260, 0, 'domestic', '/dəˈmestɪk/', '国内的;家庭的', 'n.佣人;家佣;家庭纠纷;家庭矛盾', 'domestics', NULL, NULL, NULL, NULL, NULL, 'adj.国内的;家庭的;本国的;家用的;家务的;驯养的;喜爱家庭生活的;享受家庭乐趣的;乐于操持家务的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (261, 0, 'domestic flight', NULL, '国内航班', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (262, 0, 'abduct', '/æbˈdʌkt/', '绑架;拐骗', NULL, NULL, 'vt.绑架;劫持;诱拐', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (263, 0, 'bruise', '/bruːz/', '擦伤', 'n.(水果或蔬菜的)碰伤,伤痕;碰伤;青肿;淤伤', 'bruises', 'v.挫伤;擦伤;撞伤;打击;(使)出现伤痕', 'bruised', 'bruised', 'bruising', 'bruises', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (264, 0, 'negotiate', '/nɪˈɡoʊʃieɪt/', '谈判;协商', NULL, NULL, 'v.谈判;协商;通过,越过(险要路段);达成(协议);磋商;商定', 'negotiated', 'negotiated', 'negotiating', 'negotiates', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (265, 0, 'campaign', '/kæmˈpeɪn/', '竞选活动;战役', 'n.竞选活动;运动;战役', 'campaigns', 'v.参加运动,领导运动(如为实现政治变革或赢得竞选胜利)', 'campaigned', NULL, 'campaigning', 'campaigns', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (266, 0, 'punishment', '/ˈpʌnɪʃmənt/', '惩罚', 'n.惩罚;处罚;刑罚;虐待;粗暴对待', 'punishments', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (267, 0, 'conduct', '/kənˈdʌkt , ˈkɑːndʌkt/', '举行;实施', 'n.行为;(人在某地或某种情况下的)举止;经营方式;管理方法;实施办法', 'conducts', 'v.实施;传导(热或电等能量);组织;执行;安排;引导;指挥(歌唱或音乐演奏);举止;带领;为(某人)导游', 'conducted', 'conducted', 'conducting', 'conducts', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (268, 0, 'concert', '/ˈkɑːnsərt/', '音乐会', 'n.音乐会;一致,和谐;协调;演唱会;一致的行动;演奏会;<音>和声,协奏曲;舞蹈表演会', 'concerts', 'v.使协调;协力,一致行动;协商,共同议定;协同工作;合订(计划)', NULL, NULL, NULL, NULL, 'adj.音乐会的,音乐会用的;(能)在音乐会上演奏的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (269, 0, 'regime', '/reɪˈʒiːm/', '政体;政权', 'n.政权;政体;管理体制;(尤指未通过公正选举的)统治方式;统治制度;组织方法', 'regimes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (270, 0, 'despite', '/dɪˈspaɪt/', '让步-尽管', 'n.恶意;侮辱;怨恨;轻蔑', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'prep.尽管;即使;尽管(自己)不愿意;核心含义:让步', NULL);
INSERT INTO `item` VALUES (271, 11, 'chili', '/ˈtʃɪli/', '辣椒', 'n.辣椒', 'chilis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (272, 0, 'principal', '/ˈprɪnsəpl/', '校长;主要的', 'n.本金;当事人，委托人;资本;主角;学院院长;大学校长;主要演员', 'principals', NULL, NULL, NULL, NULL, NULL, 'adj.主要的;最重要的', NULL, NULL, NULL, NULL, '注意与principle的写法区别');
INSERT INTO `item` VALUES (273, 9, 'shrimp', '/ʃrɪmp/', '虾', 'n.虾,小虾;<口>小东西,无价值的东西;<贬>小矮个,无足轻重的人', 'shrimps', 'v.捕虾', NULL, NULL, NULL, NULL, 'adj.虾的;有虾的;虾制的;虾的捕捉(或加工, 销售)的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (274, 0, 'tits', '/tɪts/', '胸;奶子', 'n.(女人的)奶子，奶头，乳头;蠢货;笨蛋;窝囊废;山雀', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '俚语 粗鲁的话');
INSERT INTO `item` VALUES (275, 1, 'Vietnam', '/viˌɛtˈnɑm/', '越南', 'n.越南', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (276, 0, 'destiny', '/ˈdestəni/', '命运;天命', 'n.命运;天命;命运之神;天数;主宰事物的力量', 'destinies', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (277, 0, 'balloon', '/bəˈluːn/', '气球;激增', 'n.气球;热气球', 'balloons', 'vi.(突然)膨胀,涨大;乘热气球飞行', 'ballooned', 'ballooned', 'ballooning', 'balloons', 'adj.气球状的;(货物等)分量轻而体积大的', NULL, NULL, NULL, NULL, '形象的说法：账单激增 bills ballooned');
INSERT INTO `item` VALUES (278, 0, 'trash', '/træʃ/', '垃圾;废物;丢弃,抛弃', 'n.垃圾;废物;糟粕;谬论;窝囊废;没出息的人;劣质品;拙劣的作品', 'trashes', 'vt.丢弃,抛弃;损坏;毁坏;抨击;谴责', 'trashed', 'trashed', 'trashing', 'trashes', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (279, 0, 'dump', '/dʌmp/', '倒掉;倾倒;倒出来', 'n.转储;垃圾场;拉屎;尾矿堆;废物堆;脏地方;邋遢场所;军需品临时存放处;令人讨厌的地方', NULL, 'vt.倾倒;(内存信息)转储,转存;(向国外)倾销;抛弃;抛售;(尤指在不合适的地方)丢弃;扔掉;丢下;推卸;随便堆放;与(某人)结束恋爱关系', 'dumped', 'dumped', 'dumping', 'dumps', NULL, NULL, NULL, NULL, NULL, 'dump=\"咣当\"被倒掉');
INSERT INTO `item` VALUES (280, 0, 'billionaire', '/ˌbɪljəˈner/', '亿万富翁', 'n.亿万富翁;巨富', 'billionaires', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (281, 0, 'interest', '/ˈɪntrəst/', '兴趣;利益;关心的事', 'n.兴趣;利益;利息;关注;(企业或公司的)股份;利害关系;趣味;好处;吸引力;同行;业余爱好;引人关注的性质', 'interests', 'vt.使感兴趣;使关注', 'interested', 'interested', 'interesting', 'interests', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (282, 0, 'commonplace', '/ˈkɑːmənpleɪs/', '屡见不鲜的事', 'n.常见的事;平常的事;老生常谈;平淡无奇的言语等', 'commonplaces', NULL, NULL, NULL, NULL, NULL, 'adj.普遍的;普通的;平凡的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (283, 1, 'Cambodia', '/ˌkæmˈboʊdiə/', '柬埔寨', 'n.柬埔寨', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (284, 0, 'rifle', '/ˈraɪfl/', '步枪;来复枪', 'n.步枪;来复枪', 'rifles', 'v.偷窃;盗取;快速搜寻;匆忙翻找;猛踢(足球)', 'rifled', NULL, 'rifling', 'rifles', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (285, 0, 'gotta', '/ˈɡɑːtə/', '得;必须;不得不', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'have got to = have to = gotta');
INSERT INTO `item` VALUES (287, 0, 'cobra', '/ˈkoʊbrə/', '眼镜蛇', 'n.眼镜蛇(毒蛇，分布于亚洲和非洲)', 'cobras', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (288, 0, 'concrete', '/ˈkɑːŋkriːt/', '混凝土', 'n.混凝土', 'concretes', 'vt.用混凝土覆盖', 'concreted', NULL, 'concreting', 'concretes', 'adj.确实的,具体的(而非想象或猜测的);实在的;混凝土制的;有形的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (289, 0, 'freeze', '/friːz/', '冻结;站住别动', 'n.冻结;停止;霜冻;冰冻期;严寒期', NULL, 'v.冻结;(屏幕)冻结;(使)结冰;冰冻;严寒;使定格;(使)冻堵;极冷;冷冻贮藏;(因害怕等)停住不动;使固定不动;能冷冻贮藏', 'froze', 'frozen', 'freezing', 'freezes', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (290, 0, 'revolution', '/ˌrevəˈluːʃn/', '变革;旋转;天体运行', 'n.革命;(环绕中心点的)旋转;大变革;巨变;(尤指)天体运行', 'revolutions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (292, 0, 'rape', '/reɪp/', '强奸;强暴', 'n.强奸罪;油菜;强奸案;蹂躏;肆意损坏;肆意糟蹋', 'rapes', 'vt.强奸;强暴', 'raped', 'raped', 'raping', 'rapes', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (293, 0, 'logistics', '/ləˈdʒɪstɪks/', '物流', 'n.物流;后勤;组织工作', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (294, 0, 'ammunition', '/ˌæmjuˈnɪʃn/', '弹药;炮弹', 'n.弹药;(辩论中可攻击对方的)信息，事实，炮弹', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (295, 0, 'legend', '/ˈledʒənd/', '传奇;传说', 'n.传奇，传说，传奇故事;(地图或书中图表的)图例，说明;(尤指某领域中的)传奇人物;（硬币、艺术品等上面的）刻字，铭文', 'legends', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (296, 0, 'legendary', '/ˈledʒənderi/', '传奇的;非常著名的', 'n.传说集;[宗]圣徒传', NULL, NULL, NULL, NULL, NULL, NULL, 'adj.非常著名的;传说的;享有盛名的;传奇的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (297, 0, 'crispy', '/ˈkrɪspi/', '脆的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.脆的，酥脆的，鲜脆的;清新的;挺括的;轻快的;有生气的;凉爽的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (298, 0, 'roe', '/roʊ/', '鱼子', 'n.鱼子', 'roes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (299, 0, 'poverty', '/ˈpɑːvərti/', '贫穷', 'n.贫穷;贫困;贫乏;短缺;劣质', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (300, 0, 'slum', '/slʌm/', '贫民窟', 'n.贫民窟;棚屋区', 'slums', 'v.去贫穷地方;过简朴生活', 'slummed', 'slummed', 'slumming', 'slums', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (301, 0, 'pitch black', NULL, '漆黑', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (302, 0, 'weave', '/wiːv/', '编织;穿行;编纂', 'n.织法;编法;编织式样', 'weaves', 'v.编织;编纂;穿行', 'wove', 'woven', 'weaving', 'weaves', NULL, NULL, NULL, NULL, NULL, '既有编织本意，又有形象的用法“穿行”，“迂回”');
INSERT INTO `item` VALUES (303, 0, 'communal toilet', ' /kəˈmjuːnl ˈtɔɪlət/', '公共厕所', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (304, 0, 'shift', '/ʃɪft/', '切换;倒班', 'n.转移;(计算机键盘或打字机上的)转换(键),换档(键);改变;转换;变换;班;轮班;轮班工作时间;直筒式连衣裙;轮班职工;(旧时妇女穿的)直筒式内衣', 'shifts', 'v.转移;换(挡);变换;变动;推卸,转嫁(责任);销售,出售;去除(污迹等);挪动;更替;快速移动;改变观点;赶快', 'shifted', 'shifted', 'shifting', 'shifts', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (305, 0, 'kilometer', '/kəˈlɑmətər/', '公里', 'n.公里;千米', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (306, 0, 'blazer', '/ˈbleɪzər/', '休闲西服', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (307, 0, 'throw on', NULL, '披上;匆匆穿上', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'throw on a blazer 披上 匆匆穿上西服');
INSERT INTO `item` VALUES (308, 0, 'heel', '/hiːl/', '脚跟;鞋跟', 'n.脚后跟,足跟;(鞋, 靴子等的)后跟;(袜子等的)后跟;(园艺学用语)踵;底部,根部,后部;(船的)倾侧,倾侧度;(近腕部的)手掌根;<旧><俚>卑鄙的家伙,可恶的人;女高跟鞋;<美俚>越狱,潜逃;<船>龙骨后端,桅脚,桅根;(会议, 演说等的)结束部分,末尾;(马等的)后肢蹄踵,蹄的后部;(琴弓的)弓根;(刀刃等的)近柄部分,刀根;<高尔夫>球杆弯头;(硬的)面包头,干酪硬皮', 'heels', 'v.倾侧,倾斜;紧跟,紧追;(船)倾侧,使(船)倾侧;用脚后跟触地; <美口>供钱给,武装,使带枪;用脚后跟踩(或碰, 蹬等);给(鞋等)修理后跟;<高尔夫>用球杆弯头击(球) ;<橄>用脚跟往回传(球)', 'heeled', NULL, 'heeling', 'heels', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (309, 0, 'marble', '/ˈmɑːrbl/', '大理石', 'n.大理石;(玻璃)弹子;理智;弹子游戏', 'marbles', 'v.使…显得斑驳;使…染上大理石花纹', 'marbled', 'marbled', 'marbling', 'marbles', 'adj.大理石(似)的;无情的;纯白的;有大理石纹彩的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (310, 0, 'curtain', '/ˈkɜːrtn/', '窗帘', 'n.窗帘;(舞台上的)幕,幕布,帷幕;帘;(遮隔房间的)帷幔;幔;床帷;覆盖物', 'curtains', 'v.装上帘子', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (311, 0, 'assault', '/əˈsɔːlt/', '袭击;侵犯', 'n.攻击;袭击;突击;(向困难或危险事物发起的)冲击;抨击;侵犯人身罪;侵犯他人身体(罪)', 'assaults', 'vt.猛烈攻击,袭击,侵犯人身(尤指构成罪行);使(感官)难受', 'assaulted', 'assaulted', 'assaulting', 'assaults', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (312, 0, 'aerial', '/ˈeriəl/', '空中的;天线', 'n.天线', 'aerials', NULL, NULL, NULL, NULL, NULL, 'adj.空中的;空气中的;从飞机上的;地表以上的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (313, 0, 'grant', '/ɡrænt/', '授予;赐;给', 'n.(政府, 机构的)拨款', 'grants', 'vt.授予;(尤指正式地或法律上)同意,准予,允许;(勉强)承认,同意', 'granted', 'granted', 'granting', 'grants', NULL, NULL, NULL, NULL, NULL, '正式地或法律上');
INSERT INTO `item` VALUES (314, 0, 'tentative', '/ˈtentətɪv/', '实验性的;暂时性的', 'n.尝试;实验;假设', 'tentatives', NULL, NULL, NULL, NULL, NULL, 'adj.暂定的;实验性的;不确定的;踌躇的;犹豫不定的;不果断的;不肯定的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (315, 0, 'munition', '/mjuːˈnɪʃn/', '军火;军需品', 'n.军火;军需品', 'munitions', 'v.供给 ...军需品;从事军需品生产', 'munitioned', 'munitioned', 'munitioning', 'munitions', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (316, 0, 'depot', '/ˈdiːpoʊ/', '仓库;车站', 'n.(大宗物品的)贮藏处，仓库;车库;修车厂;火车小站;公共汽车小站', 'depots', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (317, 0, 'taboo', '/təˈbuː/', '禁忌', 'n.禁忌;(文化或宗教习俗方面的)忌讳;禁止;避讳;戒律', NULL, 'vt.把……列为禁忌', NULL, NULL, NULL, NULL, 'adj.禁忌的;忌讳的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (318, 0, 'annex', '/əˈneks/', '吞并', 'n.附件;附录;附属建筑;附属物(品)', 'annexes', 'vt.强占,并吞(国家, 地区等)', 'annexed', 'annexed', 'annexing', 'annexes', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (319, 0, 'occupy', '/ˈɑːkjupaɪ/', '霸占;强占', NULL, NULL, 'v.占据;使用,占用(空间, 面积, 时间等);(用武力)占领,侵占;使用(房屋, 建筑),居住;承担,(尤指)担任(要职);使从事,使关注,使花费时间;<废>用…做交易,投资 (若干数目);使忙于(做某事),忙着(做某事);使 (头脑等) 全神贯注', 'occupied', 'occupied', 'occupying', 'occupies', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (320, 0, 'deter', '/dɪˈtɜːr/', '威慑;震慑', NULL, NULL, 'v.阻止;威慑;制止;使不敢', 'deterred', 'deterred', 'deterring', 'deters', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (321, 0, 'miracle', '/ˈmɪrəkl/', '奇迹', 'n.奇迹;(神创造的)圣迹,神迹;出人意料的事,奇事,不可思议的事;精品;惊人的事例,令人惊叹的人(或事物);极好的例子', 'miracles', NULL, NULL, NULL, NULL, NULL, 'adj.(药物或产品)神奇的,不可思议的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (322, 0, 'prospect', '/ˈprɑːspekt/', '前景;展望', 'n.前景;展望;希望;前途;可能性;设想;风景;成功的机会;（竞赛中的）有望获胜者', 'prospects', 'vi.探矿;勘探', 'prospected', 'prospected', 'prospecting', 'prospects', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (323, 0, 'rock', '/rɑːk/', '岩石;稳重的人', 'n.岩石;摇滚乐;碎石;礁石;岩块;宝石;石山;棒棒糖;巨石块;可信赖的人', 'rocks', 'v.很好;使震惊;使害怕;惊吓;(使)轻轻摇晃，缓缓摆动;(使)剧烈摇摆，猛烈晃动;随摇滚乐跳舞', 'rocked', 'rocked', 'rocking', 'rocks', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (324, 0, 'bid', '/bɪd/', '出价;喊价;争取', 'n.投标;出价,喊价;努力,争取;叫牌', NULL, 'v.投标;(尤指拍卖时的)出价;命令,吩咐;(某些牌戏中)叫牌;努力争取,企图获得;向(某人)问候, 道别等', 'bade', 'bidden', 'bidding', 'bids', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (325, 0, 'wizard', '/ˈwɪzərd/', '鬼才;大师;术士', 'n.向导(程序);奇才;(传说中的)男巫，术士;行家;能手', 'wizards', NULL, NULL, NULL, NULL, NULL, 'adj.出色的；巫师的；巫术的；魔术的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (326, 0, 'scrounge', '/skraʊndʒ/', '乞讨;蹭', NULL, NULL, 'v.搜寻，四处寻找;搜集;乞讨;骗取;偷取，扒窃;擅取，非法获得;借……而不还;索要;白要，白拿', 'scrounged', 'scrounged', 'scrounging', 'scrounges', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (327, 0, 'blitz', '/blɪts/', '闪电战;突袭', 'n.闪电战;突袭;1940年德国对英国的空袭;集中力量的行动;闪击式行动', 'blitzes', 'vt.用闪电战空袭(或毁坏)', 'blitzed', 'blitzed', 'blitzing', 'blitzes', 'adj.闪电式的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (328, 0, 'blockbuster', '/ˈblɑːkbʌstər/', '电影大片;重磅炸弹', 'n.大轰动;一鸣惊人的事物;(尤指)非常成功的书(或电影)', 'blockbusters', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (329, 0, 'jam', '/dʒæm/', '粘稠;堵塞', 'n.果酱;堵塞;卡住(因而发生故障);拥挤', 'jams', 'v.(发射无线电波)干扰;(使)卡住,不能动弹,不能运转;挤满;塞进;即兴演奏;挤进;塞入;使劲(往某处)挤(或压, 塞)', 'jammed', 'jammed', 'jamming', 'jams', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (330, 0, 'serve as', '/sɜːrv æz/', '当作;充当', NULL, NULL, 'v.用作;充当', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (331, 0, 'irony', '/ˈaɪrəni/', '讽刺;铁的', 'n.讽刺;反语;有讽刺意味的情况;(出乎意料的)奇异可笑之处', 'ironies', NULL, NULL, NULL, NULL, NULL, 'adj.铁的;含铁的;铁似的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (332, 0, 'humbling', '/ˈhʌmblɪŋ/', '羞愧的;丢人的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.令人羞辱的;羞愧的;丢人的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (333, 0, 'prick', '/prɪk/', '扎;混蛋;鸡巴', 'n.刺痛;笨蛋;混蛋;刺孔;刺痕;针刺感;卑鄙的人;阴茎,鸡巴,Der儿', 'pricks', 'v.扎破;刺;戳;使感到刺痛', 'pricked', 'pricked', 'pricking', 'pricks', NULL, NULL, NULL, NULL, NULL, '1.针对皮肤，泡沫，气球等柔软的东西\n2.俚语 作为名词时表示阴茎,混蛋. 1500年, 莎士比亚在文字游戏中使用过它');
INSERT INTO `item` VALUES (334, 0, 'persist', '/pərˈsɪst/', '持续存在;保持', NULL, NULL, 'v.坚持;持续存在;保持;维持', 'persisted', 'persisted', 'persisting', 'persists', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (335, 0, 'rural', '/ˈrʊrəl/', '农村的;乡村的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.农村的;乡村的;似农村的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (336, 0, 'stifle', '/ˈstaɪfl/', '窒息;压制', 'n.(马,狗的)后腿膝关节(病)', NULL, 'v.压制;使窒息,无法自如地呼吸,感觉窒闷;抑制;扼杀;阻止', 'stifled', 'stifled', 'stifling', 'stifles', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (337, 0, 'salute', '/səˈluːt/', '敬礼;致敬', 'n.致敬;(尤指士兵和军官之间的)敬礼;致意;鸣礼炮;鸣炮致敬', 'salutes', 'v.致敬;(尤指军队中)敬礼;赞扬，赞颂;表示敬意', 'saluted', 'saluted', 'saluting', 'salutes', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (338, 0, 'veteran', '/ˈvetərən/', '老兵;老手的;退伍军人', 'n.老兵;老手;经验丰富的人;退伍军人;老战士;老水兵', 'veterans', NULL, NULL, NULL, NULL, NULL, 'adj.老手的;老练的;资格老的;由老兵组织成的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (339, 0, 'anniversary', '/ˌænɪˈvɜːrsəri/', '纪念日', 'n.周年纪念日', 'anniversaries', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (340, 0, 'serve', '/sɜːrv/', '服务;服役', 'n.发球', NULL, 'v.服务;（为…）工作，服务，履行义务，尽职责;供应，提供;(给某人)提供;把…送达;服（刑）;可用作，可当…使;发（球）;对…有用;接待;端上;任期为;产生…的效果（或结果）;够…吃(或用)', 'served', 'served', 'serving', 'serves', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (341, 0, 'invasion', '/ɪnˈveɪʒn/', '侵略;入侵', 'n.侵略;侵犯;干预;(尤指烦扰的)涌入;武装入侵', 'invasions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (342, 7, 'Normandy', '/ˈnɔrməndi/', '诺曼底', 'n.诺曼底(法国西北部地区)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (343, 0, 'obligation', '/ˌɑːblɪˈɡeɪʃn/', '义务;责任', 'n.(已承诺的或法律等规定的)义务;责任;职责', 'obligations', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (344, 0, 'invent', '/ɪnˈvent/', '发明;创造', NULL, NULL, 'vt.发明;创造;编造;虚构;捏造', 'invented', 'invented', 'inventing', 'invents', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (345, 0, 'in heat', NULL, '发情的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (346, 0, 'take off', NULL, '起飞;脱下', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (347, 9, 'pitbull', NULL, '斗牛犬', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (348, 9, 'rattlesnake', NULL, '响尾蛇', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (349, 0, 'melt', '/melt/', '感化;融化', 'n.融化，溶化;溶解;溶化的金属，熔化物;（金属）一次（或一定时间）的融化量;〈美〉含奶酪的食品（如三明治、汉堡包等）;（溶炉的）一次装料', NULL, 'v.（使）溶化，（使）融化;（使）溶解;(使)（心等）软化，（使）变得温柔;（使）融合;（使）消散，（使）逐渐消失;（使）逐渐变化;〈口〉（人）感到极热', 'melted', 'melted', 'melting', 'melts', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (350, 0, 'clutch', '/klʌtʃ/', '离合器', 'n.(尤指发动机和排挡的)离合器;控制，掌管;(汽车等起换挡功能的)离合器踏板;群，组，簇，堆;爪子，手;攫住，紧紧抓住;一群(人或动物);一批(物品);权力;攫取，抢夺;势力范围;(需作出英雄举动的)紧急关头;（一次下的）一窝蛋', NULL, 'v.抓紧，紧握，抱紧;(因害怕或痛苦)突然抓住;企图抓住;急忙地抓，突然抢走;<美俚>变得紧张，变得焦急;踩汽车离合器踏板', 'clutched', 'clutched', 'clutching', 'clutches', 'adj.(手提包等)无手提带(或背带)的;<美俚>在危急时可以信赖的;关键性的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (351, 0, 'master', '/ˈmæstər/', '主人;学位', 'n.大师，师傅;(男)主人，雇主;（货船的）船长;主宰;（英国）校长，院长;（已故）著名画家，绘画大师;母带;能手;男教师;擅长…者;硕士学位（大学里的中级学位;有控制力的人;（对年龄小而不便称作“先生”的男孩的称谓', 'masters', 'vt.掌握;控制(动物或人);精通', 'mastered', 'mastered', 'mastering', 'masters', 'adj.(描述精于某职业的人)熟练的，灵巧的，有技能的;最大的;最重要的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (352, 0, 'hold on', '/hoʊld ɑːn/', '挺住;坚持一下;稍等一下', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (353, 0, 'aid', '/eɪd/', '帮助;援助', 'n.帮助;援助;(完成某工作所需的)助手;辅助设备;救援物资;辅助物;援助款项', 'aids', 'v.援助;帮助', 'aided', 'aided', 'aiding', 'aids', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (354, 0, 'ridiculous', '/rɪˈdɪkjələs/', '荒谬的;荒唐的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.荒谬的;荒唐的;愚蠢的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (355, 0, 'Ip Man', NULL, '叶问', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (356, 0, 'nailed it', NULL, '搞定了', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '俚语 方言 口语');
INSERT INTO `item` VALUES (357, 0, 'crow', '/kroʊ/', '乌鸦', 'n.乌鸦;(像雄鸡的)啼叫声，喔喔叫声', 'crows', 'v.(尤指在清晨)啼叫，打鸣;(尤指在其他人不成功时)扬扬自得地夸口，自鸣得意;欢叫', 'crowed', 'crowed', 'crowing', 'crows', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (358, 0, 'double figures', NULL, '两位数', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (359, 0, 'coerce', '/koʊˈɜːrs/', '胁迫;强迫', NULL, NULL, 'vt.胁迫;强迫;迫使', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (360, 0, 'charm', '/tʃɑːrm/', '魅力;吸引力', 'n.魅力;妩媚;吸引力;魔力;魔法;(链或手镯上的)吉祥小饰物;吸引人的特性;迷人的特征', 'charms', 'v.吸引;迷住;(以魔法或似有魔法)控制，保护', 'charmed', 'charmed', 'charming', 'charms', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (361, 0, 'divorce', '/dɪˈvɔːrs/', '离婚', 'n.离婚;离婚的男子', 'divorces', 'v.与(某人)离婚;使脱离;使分离;判(某人)离婚', 'divorced', 'divorced', 'divorcing', 'divorces', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (362, 0, 'owe', '/oʊ/', '欠债;欠人情', NULL, NULL, 'vt.欠(情);归功于;归因于;（对位高权重者）忠诚，服从;起源于', 'owed', 'owed', 'owing', 'owes', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (363, 0, 'exploit', '/ɪkˈsplɔɪt , ˈeksplɔɪt/', '利用;压榨', 'n.英勇(或激动人心、引人注目)的行为', NULL, 'vt.开发;利用(…为自己谋利);剥削;发挥;运用;压榨', 'exploited', 'exploited', 'exploiting', 'exploits', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (364, 0, 'hold up', NULL, '叫停;取消;拦住', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '在英语中\"举起\"往往有\"叫停\",\"取消\"之义. 这个表达源于抢劫时, 受害者举起双手, 无法进行任何动作');
INSERT INTO `item` VALUES (365, 0, 'lift', '/lɪft/', '电梯;举起;解除;撤销', 'n.电梯;升降机;（飞行时的）提升力，升力;提;搭便车;免费搭车;较好的心情;更大的信心', 'lifts', 'v.举起;解除，撤销，停止（限制）;(被)提起;移动;提高;吊起;抬高;空运;移开;消散;剽窃;挖出，刨出，拔起（蔬菜或植物）;高兴起来;偷盗', 'lifted', 'lifted', 'lifting', 'lifts', NULL, NULL, NULL, NULL, NULL, '在英语中\"举起\"往往有\"叫停\",\"取消\"之义. 这个表达源于抢劫时, 受害者举起双手, 无法进行任何动作.\n\nCovid restrictions were lifted in 2023\n新冠防疫限制在2023年被取消\n\nlift their sanctions on Russia\n撤销对俄罗斯的制裁');
INSERT INTO `item` VALUES (366, 0, 'scam', '/skæm/', '诈骗;欺诈', 'n.骗局;欺诈;诈财骗局', NULL, 'vt.欺诈;诓骗', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (367, 0, 'brainwash', '/ˈbreɪnwɔːʃ/', '洗脑', 'n.洗脑', NULL, 'vt.给(某人)洗脑;强制说服', 'brainwashed', 'brainwashed', 'brainwashing', 'brainwashes', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (368, 0, 'beyond', '/bɪˈjɑːnd/', '超出;超越', 'n.那边', NULL, '', NULL, NULL, NULL, NULL, NULL, 'adv.在另一边;在(或向)更远处;以远', NULL, NULL, 'prep.超出;超过;除…之外;晚于;超出…之外;迟于;在(或向)…较远的一边;(表示不可能)', NULL);
INSERT INTO `item` VALUES (369, 0, 'admit', '/ədˈmɪt/', '认罪;认错;招供', NULL, NULL, 'v.认罪;认错;招认;准许…进入(某处);招供;准许…加入(俱乐部, 组织);接收入院', 'admitted', 'admitted', 'admitting', 'admits', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (370, 0, 'prospective', '/prəˈspektɪv/', '潜在的;可能的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.潜在的;可能的;预期的;有望的;即将发生的;行将来临的', NULL, NULL, NULL, NULL, 'prospective customers 潜力客户');
INSERT INTO `item` VALUES (371, 0, 'lay', '/leɪ/', '铺设;奠定基础', 'n.性伙伴;(尤指)性交的女人;(通常供吟唱的)叙事诗', NULL, 'v.放置;(鸟, 昆虫, 鱼等)下(蛋),产(卵);提出,提交(建议, 信息等);铺设(尤指在地板上);(摆好木, 柴或煤)生(火);(尤指轻轻地或小心地)安放;敷;(在某物上)涂;铺放;与(某人)性交;摆放餐具于;周密准备;用一层…覆盖;对…下赌金;使处于特定状态(尤指困境)', 'laid', 'laid', 'laying', 'lays', 'adj.非专业的;外行的;平信徒的;在俗的;缺少专门知识的', NULL, NULL, NULL, NULL, 'laying the groundwork 奠定基础');
INSERT INTO `item` VALUES (372, 0, 'rock bottom', NULL, '低谷;最低点', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (373, 0, 'sink', '/sɪŋk/', '水槽;洗碗池;下沉', 'n.(厨房里的)洗涤池,洗碗槽', 'sinks', 'v.下沉;使下沉;使沉没;沉没;降低;下陷;使失败;挖,掘(深坑, 深洞);埋入;坐下;倒下;(高尔夫球)击球入洞;猛喝', 'sank', 'sunk', 'sinking', 'sinks', 'adj.位于社会条件差的贫穷地区的;贫民窟的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (374, 0, 'period', '/ˈpɪriəd/', '就是这么回事', 'n.一段时间,时期;周期;<数>(周期函数的)周期;(练习, 训练, 学习的)时间,时段;(人生或国家历史的)阶段,时代;<美口>结束,终止;课时,学时,节;(妇女的)经期,月经;<美> 句号,句点;<医>病期,病程;<天>自转(或公转)周期;(冰球等比赛的)一局;<音> 乐段,乐节;完整句(尤指含有若干从句, 结 构工整的复合句);纪(地质年代,代下分纪)', 'periods', '', NULL, NULL, NULL, NULL, 'adj.(服装, 家具, 乐器)过去的,古代的;早期的;具有某个时代特征的', 'adv.到此为止,不再说了', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (375, 0, 'homelessness', NULL, '无家可归', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (376, 0, 'massage', '/məˈsɑːʒ/', '按摩', 'n.按摩', 'massages', 'vt.按摩;推拿;粉饰;美化(事实);虚报(数量);用…揉擦(皮肤、头发等)', 'massaged', 'massaged', 'massaging', 'massages', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (377, 0, 'revenge', '/rɪˈvendʒ/', '报仇;雪恨', 'n.报复;报仇;(曾经失败一方的)雪耻，打败对手', NULL, 'v.报复;报仇;替…报仇;雪耻', 'revenged', 'revenged', 'revenging', 'revenges', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (378, 0, 'crucial', '/ˈkruːʃl/', '紧要的;重要的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.关键的;至关重要的;关键性的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (379, 0, 'orbit', '/ˈɔːrbɪt/', '轨道', 'n.(天体等运行的)轨道;(人、组织等的)影响范围，势力范围', 'orbits', 'v.沿轨道运行;围绕…运动', 'orbited', 'orbited', 'orbiting', 'orbits', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (380, 0, 'commentator', '/ˈkɑːmənteɪtər/', '评论员', 'n.(电台、电视台或报刊的)评论员;(尤指电视台或电台的)现场解说员，实况播音员', 'commentators', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (381, 0, 'sword', '/sɔːrd/', '剑;刀', 'n.剑;刀', 'swords', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (382, 0, 'satellite', '/ˈsætəlaɪt/', '卫星', 'n.人造卫星;卫星电视;〈天〉卫星;卫星组织;〈解〉卫星细胞;卫星国;〈生〉随体;卫星城镇;附属设备;（显要人物的）追随者;卫星社区;仆从，侍卫;奉承于左右的人，爪牙;外围组织;附属企业;辅助机场', 'satellites', 'v.通过通信卫星传送;像卫星般沿轨道运行', NULL, NULL, NULL, NULL, 'adj.卫星的;人造卫星的;附属的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (383, 0, 'the vast majority of', NULL, '绝大多数', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (384, 0, 'obese', '/oʊˈbiːs/', '肥胖的;臃肿的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.肥胖的;病态肥胖的;臃肿的;虚胖的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (385, 0, 'vast', '/væst/', '庞大的;辽阔的', 'n.广大无边的空间;大海', NULL, NULL, NULL, NULL, NULL, NULL, 'adj.巨大的;大量的;庞大的;辽阔的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (386, 0, 'moderate', '/ˈmɑːdərət , ˈmɑːdəreɪt/', '中等的;中规中矩的', 'n.持温和观点者(尤指政见)', NULL, 'v.缓和;使适中;审核评分(查看不同阅卷人所打分数是否公平一致);主持(讨论、辩论等)', 'moderated', 'moderated', 'moderating', 'moderates', 'adj.适度的;中等的;温和的;适中的;合理的;不偏激的;不激烈的', NULL, NULL, NULL, NULL, 'moderate exercise 适度运动');
INSERT INTO `item` VALUES (387, 0, 'obesity', '/oʊˈbisəti/', '肥胖症', 'n.（过度）肥胖;<医>肥胖（症）', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (388, 0, 'metrics', NULL, '衡量指标', '指标;衡量指标', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (389, 0, 'venison', '/ˈvenɪsn/', '鹿肉', 'n.鹿肉', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (390, 0, 'quail', '/kweɪl/', '鹌鹑', 'n.鹌鹑;鹌鹑肉', 'quails', 'vi.畏缩;胆怯;感觉(或显出)恐惧', 'quailed', 'quailed', 'quailing', 'quails', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (391, 0, 'surrender', '/səˈrendər/', '投降;屈服', 'n.投降;尤指在战争等过后放弃,交出;屈服;屈从', NULL, 'v.投降;被迫放弃,交出', 'surrendered', 'surrendered', 'surrendering', 'surrenders', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (392, 0, 'defeat', '/dɪˈfiːt/', '战败', 'n.击败;失败;战胜;战败;挫败', 'defeats', 'v.击败;使失败;战胜;挫败;阻挠;使困惑;难住', 'defeated', 'defeated', 'defeating', 'defeats', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (393, 0, 'stationary', '/ˈsteɪʃəneri/', '固定的;不可移动的', 'n.固定物;驻军;不动的人', 'stationaries', NULL, NULL, NULL, NULL, NULL, 'adj.固定的;静止的;不动的;稳定的;不变的;不可移动的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (394, 0, 'protein', '/ˈproʊtiːn/', '蛋白质', 'n.蛋白质', 'proteins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (395, 0, 'saddle', '/ˈsædl/', '自行车座;马鞍', 'n.马鞍;(自行车或摩托车的)车座;(动物的)脊肉', 'saddles', 'vt.给(马)备鞍', 'saddled', 'saddled', 'saddling', 'saddles', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (396, 0, 'massive', '/ˈmæsɪv/', '大型的;巨型的', 'n.〈英口〉（来自特定地区的）嘻哈（或丛林）音乐迷', NULL, NULL, NULL, NULL, NULL, NULL, 'adj.大量的，巨大的，大规模的;〈地〉块状的，（成岩层）以厚层出现的;〈医〉大块的，大范围的，大剂量的;大而重的，大块的，厚实的，结实的，魁梧的;（面貌、五官等）粗大的，宽广的;给人深刻印象的，雄伟的，庄严的;（疾病）非常严重的，十分危急的;〈矿〉非晶质的，均匀构造的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (397, 0, 'lobby', '/ˈlɑːbi/', '游说;大堂', 'n.大堂;游说;(公共建筑物进口处的)门厅,前厅,大厅;(就某问题企图影响从政者的)游说团体;(英国议会的)民众接待厅', 'lobbies', 'v.游说(从政者或政府)', 'lobbied', 'lobbied', 'lobbying', 'lobbies', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (398, 0, 'civil', '/ˈsɪvl/', '公民的;市政的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.公民的;民事的(非刑事的);国家的，政府的(非宗教或军事的);文明的;平民的;国民的;有礼貌的', NULL, NULL, NULL, NULL, 'civil construction\n土木建筑(市民的 市政的)');
INSERT INTO `item` VALUES (399, 0, 'exorbitant', '/ɪɡˈzɔːrbɪtənt/', '高昂的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.过高的;高得离谱的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (400, 0, 'one off', '/ˌwʌn ˈɔːf/', '一次性的事物', 'n.绝无仅有的事物;一次性的事物', NULL, NULL, NULL, NULL, NULL, NULL, 'adj.一次性的;非经常的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (401, 0, 'essential', '/ɪˈsenʃl/', '本质的;根本的', 'n.要素;实质;要点;必需品;必不可少的东西', 'essentials', NULL, NULL, NULL, NULL, NULL, 'adj.基本的;本质的;必不可少的;根本的;极其重要的;完全必要的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (402, 0, 'sweep', '/swiːp/', '打扫', 'n.扫;清扫;打扫;掠;挥动;广泛性;全胜的一系列比赛;巡行;(道路, 河流, 海岸等)一长段,绵延弯曲的地带,呈缓坡状的地带', NULL, 'v.打扫;清扫;扫;清除;扫视;扫去;(迅猛地)推送,吹走,冲走,带走;蜿蜒;挥动,舞动(手, 臂等);梳;(使)轻轻掠过,轻轻擦过;迅速传播;猛烈吹过;步态轻盈地走;突然袭来;(在系列比赛中)获得全部胜利,囊括各项冠军', 'swept', 'swept', 'sweeping', 'sweeps', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (403, 0, 'witness', '/ˈwɪtnəs/', '目击;见证', 'n.证人;见证;目击者;见证人;连署人', 'witnesses', 'v.见证;(为正式文件的签署)作证，连署;当场看到，目击(尤指罪行或事故);是…的迹象;（为宗教信仰）做见证;是发生…的地点(或时间、组织等);（摆证据）就是证据，看…就知道', 'witnessed', 'witnessed', 'witnessing', 'witnesses', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (404, 0, 'chance', '/tʃæns/', '碰巧发生;机遇', 'n.机会;(尤指希望发生的事的)可能性;机遇;偶然，碰巧，意外;风险;冒险;时机;(抽彩售货或抽彩给奖中的)彩票，奖券', 'chances', 'v.冒险，拿…去冒风险;偶然发生，碰巧;对…的后果听其自然', 'chanced', 'chanced', 'chancing', 'chances', 'adj.偶然的;碰巧的;意外的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (405, 0, 'mountain range', NULL, '山脉', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (406, 0, 'leopard', '/ˈlepərd/', '豹', 'n.豹;豹子', 'leopards', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (407, 0, 'catfish', '/ˈkætfɪʃ/', '鲇鱼', 'n.鲇鱼,鲇鱼(多为淡水鱼)', 'catfishes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (408, 0, 'kick', '/kɪk/', '踢;踹', 'n.踢;踢腿;踢脚;极大的乐趣;(毒品或酒精的)效力，刺激性;极度兴奋;极度刺激', 'kicks', 'v.踹;踢(腿);(因干了蠢事、失去良机等)对(自己)生气;踢蹬;踢球得分', 'kicked', 'kicked', 'kicking', 'kicks', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (409, 0, 'species', '/ˈspiːʃiːz/', '物种', 'n.种，物种;<律>形式，式样;<物>核素;（天主教圣餐中用的）面包和圣酒', 'species', NULL, NULL, NULL, NULL, NULL, 'adj.物种上的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (410, 0, 'insect', '/ˈɪnsekt/', '昆虫', 'n.昆虫，虫;可鄙的人;渺小的人', 'insects', NULL, NULL, NULL, NULL, NULL, 'adj.虫的;虫子一样的;对付虫子的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (411, 0, 'giraffe', '/dʒəˈræf/', '长颈鹿', 'n.长颈鹿', 'giraffes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (412, 0, 'stand', '/stænd/', '台子;架子', 'n.立场;桌,台,摊位;舞台,高台,台;架;维护;看台;观点;态度;捍卫;抵抗;保卫;(建房等用的)地皮,地块;货摊;停车处;售货亭;两个击球员同时在场上并跑动得分的阶段', 'stands', 'v.站立;使站立;站起来;位于(某处);处于;容忍,忍受;使直立;直立;起立;经受,承受,经得起;停;停滞;高度为;竖放;保持有效;(对某事)持某种态度,有某一观点,采取某种立场;做候选人;很可能做某事;达特定水平;花钱请', 'stood', 'stood', 'standing', 'stands', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (413, 0, 'spoil', '/spɔɪl/', '惯着;溺爱;破坏', 'n.(开掘等时挖出的)弃土,废石方;战利品;赃物;掠夺物;成功所带来的好处;权力地位的连带利益', NULL, 'v.破坏;宠坏;溺爱;糟蹋;毁掉;变坏;娇惯;搞坏;善待;格外关照', 'spoilt', 'spoilt', 'spoiling', 'spoils', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (414, 0, 'broth', '/brɔːθ/', '肉汤;鱼汤', 'n.(加入蔬菜的)肉汤，鱼汤', 'broths', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (415, 0, 'rinse', '/rɪns/', '清洗;冲洗', 'n.冲洗;漂洗;漱口液;洗刷;染发剂', NULL, 'vt.冲洗;清洗;漂洗;(用清水)冲掉;(用清水)洗涮;冲掉…的皂液', 'rinsed', 'rinsed', 'rinsing', 'rinses', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (416, 0, 'pepper', '/ˈpepər/', '椒', 'n.胡椒粉;甜椒;灯笼椒;柿子椒', 'peppers', 'vt.(在食物上)撒胡椒粉', 'peppered', 'peppered', 'peppering', 'peppers', NULL, NULL, NULL, NULL, NULL, 'Black Pepper 黑胡椒\nLong Pepper 荜拔\nRed Pepper 辣椒\nGreen Pepper 青椒');
INSERT INTO `item` VALUES (417, 0, 'green pepper', NULL, '青椒', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (418, 0, 'garlic', '/ˈɡɑːrlɪk/', '大蒜', 'n.蒜;大蒜', 'garlics', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (419, 0, 'ginger', '/ˈdʒɪndʒər/', '生姜', 'n.姜;生姜;姜黄色', 'gingers', 'v.使更有生气;鼓舞;刺激;用姜调味', NULL, NULL, NULL, NULL, 'adj.姜黄色的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (420, 0, 'fuel-cell', NULL, '燃料电池', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (421, 0, 'estimate', '/ˈestɪmət , ˈestɪmeɪt/', '估摸;估计', 'n.估价;成本或数量的估算;估计的成本', 'estimates', 'v.估计;估算;估价;估摸', 'estimated', 'estimated', 'estimating', 'estimates', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (422, 0, 'cell', '/sel/', '细胞;电池', 'n.细胞;电池;单元格;牢房;（尤指秘密的）政治小组，基层组织;(修道士或修女住的)小房间;（大结构中的）小隔室（如蜂房巢室）;单间牢房', 'cells', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (423, 0, 'while', '/waɪl/', '让步-虽然', 'n.一段时间;一会儿', 'whiles', 'v.消磨;轻松地度过', 'whiled', 'whiled', 'whiling', 'whiles', NULL, NULL, 'conj.前后不同;与…同时;虽然;当…的时候;在…期间;然而;到…时;核心含义:让步', NULL, 'prep.直至(某时)', '核心含义：前后不同，即转折\n\n而as是前后相同');
INSERT INTO `item` VALUES (424, 0, 'down', '/daʊn/', '向下;沿着;朝着', 'n.绒毛;软毛;汗毛;(鸟的)绒羽;进攻分段,10码进攻(球队可向前推进10码持球进攻的四次机会.球队在连续四次进攻中失球或未能推进10码即不能继续)', 'downs', 'vt.使倒下;击倒;(一下子)喝下,吃下,咽下', 'downed', 'downed', 'downing', 'downs', 'adj.停机;沮丧;停止运行;情绪低落;悲哀', 'adv.向下;(坐, 倒, 躺)下;到,去,在;下降;减少,减弱,降低;下跌;在下面;朝下;下至,直至;失去(钱数);(写)在纸上;(钱)先付,预付;由上至下;在较低水平;向南方;已完成数量(或进度)', NULL, NULL, 'prep.向下,往下;沿着,顺着,朝着;贯穿…时间;遍及…时期', NULL);
INSERT INTO `item` VALUES (425, 0, 'would', '/wʊd , wəd/', '想;会', NULL, NULL, 'v.希望;愿意;想要;想要（某事发生）;喜欢;决心，决意;立定志向;立遗嘱将（财产等）赠与（某人）', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (426, 0, 'cunning', '/ˈkʌnɪŋ/', '奸的;滑的', 'n.狡猾;狡黠;诡诈', NULL, NULL, NULL, NULL, NULL, NULL, 'adj.狡猾的;滑头的;巧妙的;奸诈的;诡诈的;灵巧的;精巧的', NULL, NULL, NULL, NULL, '褒义.暗指聪明');
INSERT INTO `item` VALUES (427, 0, 'crafty', '/ˈkræfti/', '奸邪的;奸险的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.奸邪的;奸险的;狡猾的;狡诈的;诡计多端的;巧妙的', NULL, NULL, NULL, NULL, '贬义.形容骗子');
INSERT INTO `item` VALUES (428, 0, 'pact', '/pækt/', '国家间的条约', 'n.契约;协议;条约;公约', 'pacts', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '通常指国家间的条约, 例如: Molotov–Ribbentrop Pact 苏德互不侵犯条约');
INSERT INTO `item` VALUES (429, 0, 'as', '/æz , əz/', '前后相同', 'n.“A”的复数;阿斯', NULL, '', NULL, NULL, NULL, NULL, NULL, 'adv.(比较时用)像…一样,如同;(指事情以同样的方式发生)和…一样', 'conj.当…时;随着;照…方式;因为;由于;正如;尽管', NULL, 'prep.像;如同;作为;当作', '本质: 前后相同\n\n而while正相反');
INSERT INTO `item` VALUES (430, 0, 'cheetah', '/ˈtʃiːtə/', '猎豹', 'n.猎豹', 'cheetahs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (431, 0, 'yet', '/jet/', '转折-然而', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'adv.还;现在;更;迄今为止,到当时为止;马上;早晚,总有一天;即刻;用于否定句和疑问句,谈论尚未发生但可能发生的事;从现在起直至某一时间', 'conj.然而;但是', NULL, NULL, NULL);
INSERT INTO `item` VALUES (432, 0, 'tank', '/tæŋk/', '坦克;油罐', 'n.坦克;存放气液体的箱,槽,罐等大型存储设备;人工水池,湖,水库;箱或桶所装之物;一箱或一桶等的量;思想容器;本质:炮弹,气体,液体,思想集中存储之处', 'tanks', 'v.尤指故意输比赛;倒闭;破产;彻底失败', 'tanked', 'tanked', 'tanking', 'tanks', NULL, NULL, NULL, NULL, NULL, '本质:炮弹,气体,液体,思想集中存储之处');
INSERT INTO `item` VALUES (433, 0, 'pity', '/ˈpɪti/', '同情;可惜', 'n.遗憾;可惜;同情;怜悯', 'pities', 'v.同情;可怜;怜悯', 'pitied', 'pitied', 'pitying', 'pities', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (434, 0, 'penis', '/ˈpiːnɪs/', '阴茎', 'n.阴茎', 'penises', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (435, 0, 'stab', '/stæb/', '刺伤;捅伤', 'n.刺;捅;戳;尝试;刺, 戳, 捅的伤口;企图;突然一阵剧痛或难受感觉', 'stabs', 'v.用刀等锐器戳;在感情上刺伤,刺痛;捅;用手指或尖物刺;打孔;涂灰泥前把砖墙凿毛;直入,直破', 'stabbed', 'stabbed', 'stabbing', 'stabs', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (436, 0, 'tap', '/tæp/', '轻敲;轻拍', 'n.水龙头;龙头;轻敲;轻击;轻拍;旋塞;电话窃听;轻扣;轻拍音', 'taps', 'v.利用,开发,发掘(已有的资源, 知识等);轻敲;轻拍;轻叩;委任;(在电话上)安装窃听器,搭线窃听;(用…)轻轻叩击;在(树)上切口(导出液体);发轻拍音', 'tapped', 'tapped', 'tapping', 'taps', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (437, 0, 'perspective', '/pərˈspektɪv/', '观点;三维视角', 'n.观点;态度;景观;透视法;思考方法;客观判断力;权衡轻重的能力', 'perspectives', NULL, NULL, NULL, NULL, NULL, 'adj.(按照)透视画法的;透视的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (438, 0, 'message', '/ˈmesɪdʒ/', '消息', 'n.消息;(书面或口头的)信息;购物;要点;(书籍、演讲等的)要旨;电邮(或手机)信息;音信', 'messages', 'vt.向(某人)传送(电子信息)', 'messaged', 'messaged', 'messaging', 'messages', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (439, 0, 'own', '/oʊn/', '自己的', 'n.自己的,属于自己的;自己做的,为自己的;自己所用的,具有自己特点的,特有的', 'owns', 'v.(尤指因买下而)拥有,有;控制,支配;承认,供认;服从于,顺从(某人的支配, 控制等);<古>认领,承认是…的作者(或父, 母, 主人)', 'owned', 'owned', 'owning', 'owns', '', NULL, NULL, 'pron.自己的，属于自己的;自己做的，为自己的;自己所用的，具有自己特点的，特有的', NULL, NULL);
INSERT INTO `item` VALUES (440, 0, 'admin', '/ˈædmɪn/', '管理;经营', 'n.管理;经营', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (441, 0, 'crowd', '/kraʊd/', '人群;民众', 'n.人群;群众;观众;民众;一伙人;老百姓;凡夫俗子;一帮人', 'crowds', 'vt.使…拥挤;挤,靠近,挤在一旁(以致使人不舒服或紧张);挤满;涌入(脑海);涌上(心头);塞满', 'crowded', 'crowded', 'crowding', 'crowds', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (442, 0, 'crew', '/kruː/', '机组人员;船员', 'n.全体船员;船或飞机上的工作人员;专业团队;一群(或一帮, 一伙)人;(轮船, 飞机等上面不包括高级职员的)全体乘务员;(赛船的)划船队员,划船队;赛艇运动;技术人员团队', 'crews', 'v.作为船或飞机上的工作人员', 'crewed', 'crewed', 'crewing', 'crews', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (443, 0, 'invite', '/ɪnˈvaɪt , ˈɪnvaɪt/', '邀请', 'n.邀请;请柬', NULL, 'vt.邀请;(正式)邀请,请求,要求;招致(尤指坏事)', 'invited', 'invited', 'inviting', 'invites', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (444, 0, 'tip off', NULL, '争球;开赛', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (445, 0, 'certain', '/ˈsɜːrtn/', '不具体的;某', 'n.(不提及人或事物的名称时用)某些', NULL, NULL, NULL, NULL, NULL, NULL, 'adj.确定;(不提及细节时用)某事,某人,某种;肯定;确信;确实;无疑;某某,某位,一位叫…的;轻微的', NULL, NULL, 'pron.(不提及人或事物的名称时用)某些', NULL, NULL);
INSERT INTO `item` VALUES (446, 0, 'slam', '/slæm/', '猛冲', 'n.<美口>猛烈的抨击,谩骂;猛关(或推, 摔, 撞等);猛摔(或撞等)的声音;<主美>听众任评委诗歌朗诵赛', 'slams', 'v.(使…)砰地关上;猛烈抨击;闯,冲,奋力行进;苛刻指摘;用力一放,砰地放下;使劲一推;<主美口>轻易贏过,轻易胜过;风风火火地进行;猛劲一摔;跳碰撞舞', 'slammed', 'slammed', 'slamming', 'slams', NULL, 'adv.以砰的一声;<方>分明地,全然', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (447, 0, 'grape', '/ɡreɪp/', '葡萄', 'n.葡萄', 'grapes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (448, 0, 'property', '/ˈprɑːpərti/', '性质;房屋院落', 'n.财产;性质;房地产;不动产;财物;庄园;所有物;房屋及院落', 'properties', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (449, 0, 'prove', '/pruːv/', '证明', NULL, NULL, 'v.证明,证实;证明是,被发现是,显示(自己)是;<法>检验,认证(遗嘱);展现,展示,显示(自己的才能);<数>证(明),验算;<古>经历,体验;对…作技术检验,鉴定;钻探,勘探;(面团)发酵;后来被发现是,最终显现为;试印', 'proved', 'proven', 'proving', 'proves', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (450, 0, 'row', '/roʊ , raʊ/', '一列', 'n.一行;一排;一列;划船(时间);争吵;吵架;纠纷;(编织中的)针行,一整行;(剧院, 电影院等的)一排座位;严重分歧;大的噪音', 'rows', 'v.划(船);吵架;划船送(某人);大声争辩', 'rowed', 'rowed', 'rowing', 'rows', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (451, 0, 'principle', '/ˈprɪnsəpl/', '原则', 'n.原则;原理;规范;(行动, 思想的)理由,信条;法则;观念;道德原则;定律;行为准则', 'principles', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (452, 0, 'concern', '/kənˈsɜːrn/', '担心;忧虑', 'n.(尤指许多人共同的)担心,忧虑;关心;公司;关爱;(对人, 组织等)重要的事情;(某人)负责的事,有权知道的事', 'concerns', 'vt.与…有关;涉及;影响,牵涉(某人);让(某人)担忧;(对…)感兴趣;认为(做某事)重要', 'concerned', 'concerned', 'concerning', 'concerns', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (453, 0, 'double', '/ˈdʌbl/', '两倍的', 'n.两倍;双打(尤指网球);折,折叠;(宾馆的)双人房间;双重间谍;双料冠军,两次获胜,两次打败同一对手;急转弯,折回;(电影中的)替身演员;极相似的对应物;酷似的人;计谋;(迷信传说在人垂死时出现的)活人的魂灵', 'doubles', 'v.(使)加倍;兼奏,重复(一个音符);折叠;把…对折;兼任;握紧;击出二垒安打;以二垒打使上二垒', 'doubled', 'doubled', 'doubling', 'doubles', 'adj.两倍的,加倍的;双重的;双层的,折叠的;双的;供两人用的,双人的;(花)重瓣的;双关的,模棱两可的;成双的;两面派的;弯腰的,俯身的;<音>(发音比记谱)低八度的', 'adv.双重地;下弯地,弓着身子;两倍地;双双地', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (454, 0, 'tape', '/teɪp/', '磁带;胶带;绷带', 'n.磁带;胶带;绷带;狭带,带子,线带,窄布条;录音带;录像带;胶条;赛跑场地的终点线', 'tapes', 'vt.把…录在磁带上;用胶带粘住;用胶带粘贴;用绷带包扎;用带子系紧', 'taped', 'taped', 'taping', 'tapes', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (455, 0, 'stack', '/stæk/', '一打;一摞;堆栈', 'n.堆栈;(通常指码放整齐的)一叠,一摞,一堆;大量;许多;书库;一大堆;(尤指工厂的)大烟囱', 'stacks', 'v.使码放在…;使成叠(或成摞, 成堆)地放在…;(使)放成整齐的一叠(或一摞, 一堆);(令飞机)分层盘旋等待着陆', 'stacked', 'stacked', 'stacking', 'stacks', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (456, 0, 'temp', '/temp/', '临时工', 'n.临时工;临时雇员', 'temps', 'vi.打临时工;做临时工作;打零工', 'temped', 'temped', 'temping', 'temps', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (457, 0, 'leg', '/leɡ/', '大腿', 'n.腿;(家具的)腿,支架;裤腿;<数>(三角形的)侧边,(直角三角形的)直角边;有…腿的;(尤指供食用的)动物的腿,腿肉;一段路程(或赛程);尤指足球赛两队之间两场比赛中的)一场;<美口>(产品等)持续的流行(或成功);叉形物的一支,叉形物的一个分叉;<古>屈膝礼(一腿后退,另一腿弯曲的行礼方式);<板>左(或右)外场(指右手击球员的左后方场地或左手击球员的右后方场地', 'legs', 'v.<口>走;跑;跑;(撑船者仰卧)以腿蹬洞壁使船通过运河隧洞', 'legged', 'legged', 'legging', 'legs', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (458, 0, 'bit', '/bɪt/', '比特', 'n.一点,稍微;比特,二进制位,位元;刀头,钻头;一部分,(事物的)某一方面;小量,小块;嚼子,衔铁;稍顷,短距离;(bits)生殖器;12.5分;(影剧中)只有两三句台词的小角色,演出的固定短节目;<俚>小妮子', 'bits', 'v.给(马)上嚼子;制约,抑制', 'bitted', 'bitted', 'bitting', 'bits', 'adj.小的,微不足道的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (459, 0, 'much', '/mʌtʃ/', '许多的', 'n.也可与as, so和too连用)许多,大量,多少;或与how连用以询问数量;(与不可数名词连用,尤用于否定句', NULL, '', NULL, NULL, '', NULL, 'adj.许多的;大量的;很大程度的', 'adv.很;更加;非常', NULL, 'pron.也可与as、so和too连用)许多，大量，多少;或与how连用以询问数量;(与不可数名词连用，尤用于否定句', NULL, NULL);
INSERT INTO `item` VALUES (460, 0, 'split', '/splɪt/', '分开;分离', 'n.分裂;分离;划分;分别;分歧;裂缝;裂口;份额;劈叉;香蕉船,水果船;下叉', 'splits', 'v.使分开;使分裂成不同的派别;(和某人)断绝关系,分手;分摊;分享;(迅速)离开,走;(使)撕裂;划破;下叉', 'split', 'split', 'splitting', 'splits', 'adj.劈开的;分离的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (461, 0, 'asset', '/ˈæset/', '资产;财产', 'n.资产,财产;有用的人(或事物),优点,长处,有利条件', 'assets', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (462, 0, 'rat', '/ræt/', '老鼠', 'n.老鼠,耗子;讨厌的人,卑鄙小人,骗子;<口>常客;<俚>军校新生;不检点的女人;<美>女用发垫', 'rats', 'v.捕鼠;<俚>偷;背叛,告密,告发;食言,背信弃义;<美>用发垫使头发蓬松隆起', 'ratted', 'ratted', 'ratting', 'rats', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (463, 0, 'complete', '/kəmˈpliːt/', '完整的;完成', NULL, NULL, 'vt.完成;使完整;结束;填写(表格);使完美', 'completed', 'completed', 'completing', 'completes', 'adj.完成;(用以强调)完全的,彻底的;完整的;包括,含有(额外部分或特征);全部的;整个的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (464, 0, 'violent', '/ˈvaɪələnt/', '暴力的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.暴力的;剧烈的;猛烈的;强烈的;强暴的;激情的;感情强烈的;由激情引起的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (465, 0, 'parent', '/ˈperənt/', '父母', 'n.父母亲;父亲(或母亲);(动, 植物的)亲本,亲代,父本,母本;母公司;总部;创始机构', 'parents', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (466, 0, 'patient', '/ˈpeɪʃnt/', '病人;耐心的', 'n.(某个医生或牙医等的)病人;接受治疗者(尤指医院里的);受动者', 'patients', NULL, NULL, NULL, NULL, NULL, 'adj.有耐心的;能忍耐的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (467, 0, 'snake', '/sneɪk/', '蛇', 'n.蛇', 'snakes', 'v.曲折前行;蛇行;蜿蜒伸展', 'snaked', 'snaked', 'snaking', 'snakes', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (468, 0, 'staff', '/stæf/', '工作人员;参谋人员', 'n.工作人员;(大, 中, 小学的)管理人员,行政人员;全体职工(或雇员);支柱,支撑;牧杖,权杖;拐杖;长杆,旗杆;路签;<古>(枪等的)长柄;军队的全体参谋人员', 'staff', 'vt.在…工作,任职于;雇用,雇有;担任…的职员;为…配备职员', 'staffed', 'staffed', 'staffing', 'staffs', 'adj.职员的;雇员的;参谋人员的;参谋的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (469, 0, 'special', '/ˈspeʃl/', '特别的', 'n.特价;特别活动(或节目等);特制产品', 'specials', NULL, NULL, NULL, NULL, NULL, 'adj.特别的;特殊的;专用的;重要的;更好的;特设的;不寻常的;特别关照的;不一般的;有专门目的的;格外看重的;起专门作用的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (470, 0, 'specific', '/spəˈsɪfɪk/', '具体的', 'n.特性;细节;特效药;显著的性质', 'specifics', NULL, NULL, NULL, NULL, NULL, 'adj.具体的;特定的;明确的;特有的;独特的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (471, 0, 'paper', '/ˈpeɪpər/', '纸张', 'n.纸张,纸;(政府或委员会发表的关于重大问题的)文件,报告;材料,资料,文件,文献;(研究)论文,(学术)讲话;(作为学校课程作业的)文章,论文;报纸,出版物,期刊;试卷,考卷;(护照等)官方文件,证件;手纸,卫生纸;墙纸,壁纸;<经> 有价证券,流通票据;(戏院等的) 门票,免费入场券;<俚> 广告宣传单', 'papers', 'v.<古> 在纸上写下;为…提供纸张;用墙纸裱糊,贴糊墙纸;用纸包起;用砂纸把…打光;<俚> 发免费入场券使(剧场等)满座', 'papered', 'papered', 'papering', 'papers', 'adj.纸上的,未实施的,有名无实的;纸质的,纸板(或制型纸)做的;<书> 纸面的, 平装的;似纸的,薄的;以书面形式进行的,书面往来的;持免费入场券的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (472, 0, 'pack', '/pæk/', '包裹;打包', 'n.包,包裹,捆;一捆,一包(尤指适于携带的东西);(尤指士兵或野外徒步者的)背包;大量;(野兽, 飞禽等的) 一群;<美> 小包,小盒;<英> (纸牌的) 一副;面膜;(压在伤口上止血用的)敷布,裹布,绷带;装罐量,包装量;一帮,一伙(尤含贬义);(海洋中的)流冰群,浮冰群;(童子军等的) 一队;护肤霜,香脂,发乳;<英>(一个橄榄球队的)全体前锋', 'packs', 'v.包装,装(箱);(把…)打包,(把…)装箱;收拾(行李);堆积,压实;挤满,塞满;备有,含有;(用某物)保存,保藏;佩带,携带(枪支);停止,结束;加工包装 (食品),把(食品等) 装入容器;能被包装 (或捆扎),适于装运;送走, 把…打发走;填封 (空隙, 漏缝等);(用柔软材料)把…裹(包)起来; 在(容器中的食物)上覆盖物质(以防止腐烂);<英橄> 形成对阵争球;<医>用裹布法治疗;在(陪审团, 委员会, 会议等)中安插支持者', 'packed', 'packed', 'packing', 'packs', 'adj.<苏格兰>亲密的,友好的;<苏格兰>(动物) 驯服的', 'adv.<苏格兰>亲密地', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (473, 0, 'craft', '/kræft/', '技术;技能;船', 'n.手艺;技能;技艺;工艺;飞行器;技巧;小船;诡计;手腕;骗术', 'crafts', 'vt.手工精心制作', 'crafted', 'crafted', 'crafting', 'crafts', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (474, 0, 'raft', '/ræft/', '竹筏', 'n.木筏;筏;大量;许多;木排;橡皮艇;充气船', 'rafts', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (475, 0, 'sail', '/seɪl/', '航行', 'n.帆;(风车的)翼板;乘船航行', 'sails', 'v.(船)航行;起航;(人)乘船航行;掠;驾驶(或乘坐)帆船航行(尤指作为体育运动)', 'sailed', 'sailed', 'sailing', 'sails', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (476, 0, 'addict', '/ˈædɪkt/', '瘾;上瘾', 'n.瘾君子;吸毒成瘾的人;对…入迷的人', 'addicts', 'v.上瘾;迷上;使沉溺;使上瘾;使自己沾染某些恶习', 'addicted', 'addicted', 'addicting', 'addicts', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (477, 0, 'general', '/ˈdʒenrəl/', '多数的;普遍的;将军', 'n.将军;(陆军, 海军陆战队或美国空军)上将', 'generals', NULL, NULL, NULL, NULL, NULL, 'adj.一般的;总的;普遍的;多数的;大致的,大概的(方向或地区);常规的;大体的;整体的;正常的;全体的;首席的;笼统的;概括性的;非专门的;核心含义:事物内部占多数的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (478, 0, 'give', '/ɡɪv/', '给;让', 'n.伸展性;弹性', NULL, 'v.给);使产生(某种感觉);交给;支付,付款,付出;给(某人)打(电话);送给;举办;赠送;表演;让步,屈服;捐助;裁定,判;(在压力下)弯曲,伸长;给…评定(等级);赠与;把(疾病)传染给;将(时间, 精力等)用于;使受…惩罚;(为某人)提供,供给,供应;预计将持续(时间)', 'gave', 'given', 'giving', 'gives', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (479, 0, 'suspect', '/səˈspekt , ˈsʌspekt/', '怀疑;嫌疑人', 'n.犯罪嫌疑人;嫌疑人;嫌疑犯;嫌疑分子;可疑对象', NULL, 'v.怀疑某人有罪;怀疑;不信任;感觉有问题', 'suspected', 'suspected', 'suspecting', 'suspects', 'adj.可疑的;不可信的;靠不住的;可能有危险的;有违法嫌疑的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (483, 0, 'custody', '/ˈkʌstədi/', '拘押', 'n.监护;(尤指在候审时的)拘留;羁押;保管;监护权;拘押;保管权', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (484, 0, 'insane', '/ɪnˈseɪn/', '疯狂的', 'n.精神失常的人;精神错乱的人', NULL, NULL, NULL, NULL, NULL, NULL, 'adj.疯狂的;精神错乱的;精神失常的;危险的;精神失常的人;精神错乱的人;十分愚蠢的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (485, 0, 'polite', '/pəˈlaɪt/', '有礼貌的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.有礼貌的;客气的;上流社会的;客套的;礼节性的;应酬的;儒雅的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (486, 0, 'crush', '/krʌʃ/', '暴力挤压;武力镇压', 'n.(狭小空间中)拥挤的人群;(通常指年轻人对年长者的短暂的)热恋,迷恋;果汁饮料', 'crushes', 'v.压碎;镇压;破坏,毁坏;压伤;压坏;捣碎;碾成粉末;挤压变形;(使)变皱,起皱;把…挤入,将…塞进(狭小的空间内)', 'crushed', 'crushed', 'crushing', 'crushes', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (487, 0, 'attendant', '/əˈtendənt/', '服务人员', 'n.服务人员;侍从,随从;侍者;病人的护理者', 'attendants', NULL, NULL, NULL, NULL, NULL, 'adj.伴随的;随之而来的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (488, 0, 'waiter', '/ˈweɪtər/', '餐馆男服务员', 'n.餐馆男服务员', 'waiters', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (489, 0, 'whereas', '/ˌwerˈæz/', '让步-尽管', 'n.鉴于;开场白;条件性陈述', 'whereases', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'conj.(用以比较或对比两个事实)然而,但是,尽管;(用于正式文件中句子的开头)鉴于', NULL, NULL, NULL);
INSERT INTO `item` VALUES (490, 0, 'gonna', '/ˈɡənə/', '将要', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gonna = going to');
INSERT INTO `item` VALUES (491, 0, 'dictator', '/ˈdɪkteɪtər/', '独裁者', 'n.独裁者;专横的人;发号施令者', 'dictators', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (492, 0, 'dictatorship', '/ˌdɪkˈteɪtərʃɪp/', '独裁;专政', 'n.独裁;专政;独裁国家', 'dictatorships', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (493, 0, 'wag', '/wæɡ/', '摇摆', 'n.摇摆;摆动;爱闹着玩的人;老开玩笑的人', NULL, 'v.摇摆;摇,摆尾巴;逃学;摇头或手指常表示不赞成', 'wagged', 'wagged', 'wagging', 'wags', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (494, 0, 'corruption', '/kəˈrʌpʃn/', '腐败;贪污', 'n.腐败;贪污;贿赂;腐蚀;受贿;(单词或短语的)变体;使人堕落的行为', 'corruptions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (495, 0, 'Christian', '/ˈkrɪstʃən/', '基督教徒', 'n.基督徒;基督教徒', 'Christians', NULL, NULL, NULL, NULL, NULL, 'adj.基督教的;基督教徒的;信奉基督教的;慈善的;仁慈的;友爱的;有基督教徒品行的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (496, 0, 'Christianity', '/ˌkrɪstiˈænəti/', '基督教', 'n.基督教', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (497, 0, 'press', '/pres/', '按压;新闻报刊', 'n.挤压;出版社;记者;新闻报道;新闻界;印刷机;报刊;评论;新闻工作者;印刷媒体;报章杂志;(分层)大壁橱,衣柜,书柜,碗柜;拥挤的人群(或大批事物);压平机', 'presses', 'v.按压;推;施加压力;坚持;把…压成;把…压平;催促;熨平;紧握(某人的手或臂);(向…)拥挤,推搡着移动;把…榨汁;将…塞进', 'pressed', 'pressed', 'pressing', 'presses', NULL, NULL, NULL, NULL, NULL, '新闻出版就是将字压在纸上');
INSERT INTO `item` VALUES (498, 0, 'convinced', '/kənˈvɪnst/', '坚信的;深信的', NULL, NULL, 'v.使相信;说服,劝说(某人做某事);使确信;使信服', NULL, NULL, NULL, NULL, 'adj.深信;确信;坚信;坚信不移的;有坚定信仰(或信念)的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (499, 0, 'waitress', '/ˈweɪtrəs/', '餐厅女服务员', 'n.女服务员;女侍者', 'waitresses', 'v.做女侍者;当女服务员', 'waitressed', NULL, 'waitressing', 'waitresses', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (500, 0, 'school', '/skuːl/', '学校;学派', 'n.(中, 小)学校;〈美口〉大学;学院;(高等院校的)学院,系;上学;学校教育;学派,流派;学业,功课;学校建筑物,校舍;派(指传统, 意见, 生活方式相同的一群人);学期;锻炼;群;(中世纪的)书院,经院;专科学校;专业学校;上课时间;上课(或上学)时间;学术界;训练班,短训班;学校全体师生,全校学生;〈军〉训练教程,操练;考古研究中心;上学阶段;学位考试考场;〈英〉大学学位考试科目;〈英〉一伙赌徒(或酒友等);获得知识的方式(或活动, 环境, 场所等)', 'schools', 'vt.教育;培养;训练;控制;使学会;使学会;谴责;驯(马);负担……的学费;使受学校教育;指导……表演', 'schooled', 'schooled', 'schooling', 'schools', 'adj.学校的,学院的;教师的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (501, 0, 'board', '/bɔːrd/', '板子', 'n.板;(公司或其他机构的)董事会,委员会,理事会;(尤指)木板;…用木板(或板材);伙食,膳食;舞台;(美国大学的)入学考试;用于机构名称;(冰球场周围的)界墙', 'boards', 'v.(在学校)寄宿;上船(或火车, 飞机, 公共汽车等);让乘客登机(或上船等);付费(在某人家里)膳宿', 'boarded', 'boarded', 'boarding', 'boards', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (502, 0, 'vinegar', '/ˈvɪnɪɡər/', '食醋', 'n.食醋', 'vinegars', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (503, 0, 'crack', '/kræk/', '破解;大笑', 'n.裂纹,裂缝;缝隙;尝试;瑕疵, 缺点;<口>片刻, 瞬间;(尤指挖苦人的)玩笑,俏皮话;(突然的)爆裂声,噼啪声,轰响;(精神的)不正常,怪人,疯子;(可听到响声的)重击,猛击;强效可卡因;<非正式>股沟;窄缝;破解信息,破解码;好时光', 'cracks', 'v.使断裂;使破裂;阻止,打击,击败,战胜(罪犯或敌人);说笑话;使大笑;<口>破译,侦破,解(难题等);(因压力而)吃不消,崩溃,瓦解;<美俚>说话, 发表意见;失控,垮掉;砸开,砸碎;猛击;(使)发出爆裂声,噼啪作响;破开;重击;开瓶;<方>吹牛;非法侵入(计算机系统) ;找到解决(难题等的)方法;(突然)变嘶哑,变沙哑;满帆前进,开足马力前进,疾行;(无意地)用力撞到;使指节噼啪作响', 'cracked', 'cracked', 'cracking', 'cracks', 'adj.优秀的;一流的;熟练的;训练有素的;技艺高超的', 'adv.噼啪一声', NULL, NULL, NULL, '源自\"裂\"的拟声词');
INSERT INTO `item` VALUES (504, 0, 'propose', '/prəˈpoʊz/', '求婚', NULL, NULL, 'v.建议;提议;提供(解释);计划;打算;求婚;提名;希冀', 'proposed', 'proposed', 'proposing', 'proposes', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (505, 0, 'on', '/ɑːn/', '在…上;由…支撑着', 'n.(打球人的)左边', NULL, '', NULL, NULL, NULL, NULL, 'adj.在进行;在发生;在活动;通着', 'adv.表示持续性;向前(移动);穿在身上;穿着;戴着;(表示发生);(预先安排的事)将发生;值班;登上(车辆)', NULL, NULL, 'prep.在…上;由…支撑着;就…或关于…;在(运输工具)上;在(某一天);(身上)带着;为(某团体或组织)的一员;吃;(表示方向)在,向,对;在,接近(某地);根据;以…支付;通过;与…相比', NULL);
INSERT INTO `item` VALUES (506, 0, 'destabilize', '/ˌdiːˈsteɪbəlaɪz/', '破坏稳定', NULL, NULL, 'vt.使不稳定;使(制度, 国家, 政府等)动摇;使不安定', 'destabilized', 'destabilized', 'destabilizing', 'destabilizes', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (507, 0, 'restraint', '/rɪˈstreɪnt/', '克制;抑制', 'n.约束;限制;克制;控制;抑制;约束力;(武力)阻止,制止,制伏;制约因素;座椅安全带;管制措施', 'restraints', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (509, 0, 'restrict', '/rɪˈstrɪkt/', '限制;约束', NULL, NULL, 'vt.(以法规)限制;约束;限定(数量, 范围等);阻碍;妨碍;束缚', 'restricted', 'restricted', 'restricting', 'restricts', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (510, 0, 'frog', '/frɑːɡ/', '青蛙', 'n.青蛙;蛙;法国佬(对法国人的蔑称)', 'frogs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (511, 0, 'aside', '/əˈsaɪd/', '抛开...不说', 'n.旁白;低声说的话;离题话', 'asides', NULL, NULL, NULL, NULL, NULL, NULL, 'adv.在一边;留;在旁边;存;到旁边;用于名词后,除…以外,抛开...不说', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (512, 0, 'hardy', '/ˈhɑːrdi/', '吃苦耐劳的', 'n.哈迪[哈代];(锻工用的)一种方柄凿', NULL, NULL, NULL, NULL, NULL, NULL, 'adj.吃苦耐劳的;耐寒的;适应力强的;能越冬的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (513, 0, 'dude', '/duːd/', '哥们;伙计', 'n.男人;伙计;哥们', 'dudes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (514, 0, 'grandson', '/ˈɡrænsʌn/', '孙子', 'n.孙子;外孙', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (515, 0, 'baboon', '/bæˈbuːn/', '狒狒', 'n.狒狒', 'baboons', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (516, 0, 'spot', '/spɑːt/', '污点', 'n.斑点;(人体的)部位, 地方;地点, 场所;地点;(事物的)部分, 方面;少量;太黑点, (肺部等处的)阴影;污迹, 污渍, 脏点;股票;职位, 职务;<口>困境, 窘境;丘疹, 疱疹, 粉刺;娱乐场所;<主美>点子, 特定票面的钞票;几滴, 少许(液体);叶斑;某演员/节目的固定节目, 节目档;<美俚>(…年)徒刑;平口鲾;<台>置球点;脓疱;排名位置;斑头鸽', NULL, 'v.看出, 注意到, 发现;看见;让分, 让子, 让步;部署, 放置;玷污, 败坏(名声等);使有污渍;用点子装饰;现场指导监督', NULL, NULL, NULL, NULL, 'adj.现货交易的;抽样的;插播的;当场作出的;从现场广播的, 从现场报道的;立即支付的;(商店等)从事现金交易的;临时替补的', 'adv.<英口>精确地, 丝毫不差地', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (517, 0, 'spotty', '/ˈspɑːti/', '劣迹斑斑的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.时好时坏的;劣迹斑斑的;多丘疹的;多粉刺的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (518, 0, 'debate', '/dɪˈbeɪt/', '辩论;争论', 'n.(在公共集会上或议会里就某问题进行的, 常以表决结束的)辩论;(各自发表不同意见的)争论,讨论', 'debates', 'v.(尤指正式)讨论;思考;仔细考虑;盘算', 'debated', 'debated', 'debating', 'debates', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (519, 0, 'overwhelm', '/ˌoʊvərˈwelm/', '压倒,淹没在巨物之下', NULL, NULL, 'vt.压倒,淹没在巨物之下;压垮;使应接不暇;征服;击败;(感情或感觉)充溢,难以禁受', 'overwhelmed', 'overwhelmed', 'overwhelming', 'overwhelms', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (520, 0, 'overwhelmed', '/ˌoʊvərˈwelmd/', '压力山大的;不知所措的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.压力山大的;不知所措的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (521, 0, 'overwhelming', '/ˌoʊvərˈwelmɪŋ/', '势不可挡的;压倒性的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (522, 0, 'nominate', '/ˈnɑːmɪneɪt/', '点名;提名', NULL, NULL, 'v.提名;挑选,指定(时间, 日期, 名称等);指定,指派;任命;推荐;命名', 'nominated', 'nominated', 'nominating', 'nominates', 'adj.被提名的;被指定的;有特定名字的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (523, 0, 'even', '/ˈiːvn/', '强调出乎意料-甚至;让步-即使', 'n.黄昏', NULL, 'v.(使)平;(使)相等;(使)变平', NULL, NULL, NULL, NULL, 'adj.均匀的;偶数的;平的;均衡的;平坦的;平稳的;平滑的;相等的;均等的;双数的;镇静的;匀称的;(数量, 速度等)变化不大的', 'adv.强调出乎意料-甚至;让步-即使;还;连;(用以加强比较)甚至更;实际上;(引出更精确的说法)甚至可以说;', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (524, 0, 'bow', '/baʊ , boʊ/', '鞠躬以道歉;让出;弓', 'n.弓;鞠躬;船头,船首;蝴蝶结;琴弓;<美>眼镜脚,眼镜框;<美>(钥匙, 剪刀等的)金属环状柄,圆形拎环', 'bows', 'v.鞠躬以表示歉意或尊敬;使弯曲;低(头),俯(首);让出,让步,屈服;用弓拉奏(乐曲)', 'bowed', 'bowed', 'bowing', 'bows', 'adj.弯曲的,弓形的;近(船等)头部的,在前部的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (525, 0, 'clash', '/klæʃ/', '冲突', 'n.冲突;(时间上的)冲突,矛盾;交锋;分歧;不协调;辩论;争论;争执;(金属的)撞击声;差别;(两群人之间的)打斗;打架', 'clashes', 'v.冲突;比赛;(时间上)相冲突,相矛盾;不协调;抵触;(公开地)争辩;打斗;不相容;迥然不同;(使)撞击出巨大的响声', 'clashed', 'clashed', 'clashing', 'clashes', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (526, 0, 'lesson', '/ˈlesn/', '课程;教训', 'n.课程;教训;一节课;教学单元;一课时;(教堂礼拜中的)《圣经》选读', 'lessons', 'v.教训;教课', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (527, 0, 'rival', '/ˈraɪvl/', '对手', 'n.竞争对手', 'rivals', 'vt.与…相匹敌;比得上', 'rivalled', 'rivalled', 'rivalling', 'rivals', 'adj.竞争的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (528, 0, 'just', '/dʒʌst/', '时间-刚刚;程度-仅仅', 'n.正直的人;公正的人', NULL, NULL, NULL, NULL, NULL, NULL, 'adj.公正的;正义的;合理的;正当的;合适的;恰当的;正直的人;公正的人;核心: 公平的, 不偏不倚, 两边没差多少', 'adv.时间-刚刚;程度-仅仅;只是;(表示稍有可能)可能,也许;请,就;同样;正好;恰好;此时;真正地;不少于;正当…时;(表示赞同)', NULL, NULL, NULL, '核心: 公平的, 不偏不倚, 两边没差多少的.\n\n时间：刚刚\n\n程度：仅仅');
INSERT INTO `item` VALUES (529, 0, 'prank', '/præŋk/', '恶作剧', 'n.恶作剧;玩笑', 'pranks', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (530, 0, 'uppercut', '/ˈʌpərkʌt/', '上钩拳', 'n.上钩拳', 'uppercuts', 'v.曲臂挥拳向上直击', 'uppercut', 'uppercut', 'uppercutting', 'uppercuts', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (531, 0, 'jab', '/dʒæb/', '刺拳', 'n.戳;刺;接种;注射;捅;预防针;用拳猛击', 'jabs', 'v.戳;刺拳;猛击;捅', 'jabbed', 'jabbed', 'jabbing', 'jabs', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (532, 0, 'release', '/rɪˈliːs/', '发行;放走', 'n.释放;发布;发行;排放;获释;公开;解脱;(尤指)新激光唱片,新电影;新发行的东西', NULL, 'vt.释放;松开;免除,解除;公开;放出;开放;放开;发泄;放走;宣泄;使自由移动(或飞翔, 降落等);使不紧张', 'released', 'released', 'releasing', 'releases', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (533, 0, 'wage', '/weɪdʒ/', '工钱;继续战斗或竞选', 'n.短工工钱', 'wages', 'v.开始,发动,进行;继续战斗或竞选', 'waged', 'waged', 'waging', 'wages', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (534, 0, 'desperate', '/ˈdespərət/', '拼命的;孤注一掷的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.(因绝望而)不惜冒险的,不顾一切的,拼命的;绝望的;渴望;孤注一掷的;铤而走险的;非常需要;极想;极严重的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (535, 0, 'adaptive', '/əˈdæptɪv/', '适应能力强的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.适应的;有适应能力的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (536, 0, 'adapter', '/əˈdæptər/', '转换接头', 'n.电子设备的适配器;改编者;改写者', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (537, 0, 'shred', '/ʃred/', '撕碎', 'n.(撕或切的)细条,碎片;些许;一丁点;极少量', 'shreds', 'v.切碎;撕碎', 'shredded', 'shredded', 'shredding', 'shreds', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (538, 0, 'for good', NULL, '永远;永久', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adv.永久地;永远地', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (539, 0, 'feline', '/ˈfiːlaɪn/', '猫科动物', 'n.猫;猫科动物', 'felines', NULL, NULL, NULL, NULL, NULL, 'adj.猫科动物的;猫似的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (540, 0, 'company', '/ˈkʌmpəni/', '公司;陪伴', 'n.公司;陪伴;剧团;商号;连队;商行;做伴;宾客;演出团;在一起的一群人', 'companies', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (541, 0, 'life', '/laɪf/', '生活;生命', 'n.生活;生命,性命;一生,寿命;生活方式;生物,活物;活力,活跃,生气;无期徒刑,终身监禁;生机;人命;(物的)使用期,有效期;弹性;传记;(绘画的)模特儿,实物,实景;人生阶段;(酒等的)起泡;活力的源泉,活跃气氛的人(或事物);<宗>(肉体死亡后的)灵魂存在;(新鲜食物等的)浓烈风味,辛辣味;玩游戏者出局前几次机会中的)一次机会', 'lives', NULL, NULL, NULL, NULL, NULL, 'adj.一生的, 终身的;生命的,生物的;采用活体模型的,照实物画(或雕塑)的;人寿保险的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (543, 0, 'furniture', '/ˈfɜːrnɪtʃər/', '家具', 'n.家具', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (544, 0, 'scratch', '/skrætʃ/', '挠;抓', 'n.划痕;(皮肤或物体表面上的)划伤;搔痒;挠痒;刮(或擦, 抓)的刺耳声', 'scratches', 'v.挠(痒处);抓伤(皮肤);划破;刮坏;(尤指意外地)擦破;取消;勉强维持生活;刮出(或刮去)痕迹;刮(或擦, 抓)出刺耳声', 'scratched', 'scratched', 'scratching', 'scratches', 'adj.仓促拼凑的;无让步的;无让杆的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (545, 0, 'delve', '/delv/', '挖掘;深入研究', 'n.坑;井;凹地;沟槽', NULL, 'v.挖掘;深入研究', 'delved', 'delved', 'delving', 'delves', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (546, 0, 'household', '/ˈhaʊshoʊld/', '家;户', 'n.家;户;一家人;同住一所房子的人', 'households', NULL, NULL, NULL, NULL, NULL, 'adj.家庭的,家内的,一家的;家喻户晓的;日常的,家常的,普通的;王室的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (547, 0, 'assess', '/əˈses/', '评估;估算', NULL, NULL, 'v.评估;评定(性质, 质量);估算;估定(数量, 价值)', 'assessed', 'assessed', 'assessing', 'assesses', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (548, 0, 'index', '/ˈɪndeks/', '指数,指标;索引', 'n.物价和工资等的指数,指标;索引;标志;表征;量度', 'indices', 'vt.使指数化;将…编入索引;为…编索引;将(工资等)与(物价水平等)挂钩', 'indexed', 'indexed', 'indexing', 'indexes', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (549, 0, 'qualify', '/ˈkwɑːlɪfaɪ/', '取得资格;具有资格', NULL, NULL, 'v.合格;使合格;符合,配得上;有权,使有权(做某事);具有资格;修饰;使具备资格;达标;取得资格或学历;使所说的话语气减弱(或更具体等)', 'qualified', 'qualified', 'qualifying', 'qualifies', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (550, 0, 'lad', '/læd/', '小伙子;小青年', 'n.小伙子;小青年;少年;伙伴;马夫;男孩儿;哥们儿;男青年;(精力旺盛的)放荡小伙子', 'lads', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (551, 0, 'sneeze', '/sniːz/', '喷嚏;打喷嚏', 'n.喷嚏;喷嚏声', NULL, 'v.打喷嚏', 'sneezed', 'sneezed', 'sneezing', 'sneezes', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (552, 0, 'gangster', '/ˈɡæŋstər/', '流氓;匪徒;黑社会', 'n.歹徒;匪徒;土匪;黑社会;流氓', 'gangsters', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (553, 0, 'fate', '/feɪt/', '天意;定数', 'n.命运;命运的安排;天意;定数;天数;命中注定的坏事', 'fates', 'v.注定', 'fated', 'fated', 'fating', 'fates', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (554, 0, 'violate', '/ˈvaɪəleɪt/', '违反', NULL, NULL, 'v.违反;侵犯(隐私等);违背(法律, 协议等);违犯;强奸;亵渎;污损(神圣之地);搅扰;使人不得安宁', 'violated', 'violated', 'violating', 'violates', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (555, 0, 'oath', '/oʊθ/', '宣誓;誓言', 'n.宣誓;誓言;(表示愤怒, 惊异等的)咒骂,诅咒的话', 'oaths', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (556, 0, 'globefish', NULL, '河豚', 'n.河豚', 'globefishes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (557, 0, 'crayfish', '/ˈkreɪfɪʃ/', '小龙虾', 'n.淡水螯虾;海水大龙虾', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (558, 0, 'beat', '/biːt/', '战胜', 'n.(心脏等的)跳动;(音乐, 诗歌等的)主节奏,节拍;(鼓的)一击;击鼓声;跳动声;管区;振翅声;(翅的)一振;有规律的敲击(声)', NULL, 'v.击败;(用叉等)快速搅拌,打;(在比赛或竞争中)赢,打败(某人);控制;敲打;把(金属等)锤炼,敲打(成…);比…更好;避免;难倒;踏出,踩出(道路);(使)规律作响,作节奏运动', 'beat', 'beaten', 'beating', 'beats', 'adj.疲劳的,颓废的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (559, 0, 'cane', '/keɪn/', '拐杖;棍儿;秸秆', 'n.手杖;(用于制作家具等的)竹竿,藤条;藤杖;竹杖;竹或甘蔗的茎秆;秸秆;拐杖', 'canes', 'v.用藤条鞭打,用藤杖打,鞭笞(作为惩罚)', 'caned', 'caned', 'caning', 'canes', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (560, 0, 'pole', '/poʊl/', '杆子;柱子;极', 'n.极;磁极;电极;杆子;柱子;杖;地极;棍;(对立或相反的)任何一方', 'poles', 'v.用篙撑船;摆船', 'poled', 'poled', 'poling', 'Poles', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (561, 0, 'taunt', '/tɔːnt/', '嘲笑;讽刺', 'n.辱骂;嘲弄;讥讽', NULL, 'v.嘲弄;辱骂;讽刺', 'taunted', 'taunted', 'taunting', 'taunts', 'adj.<海>很高的(桅等)', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (562, 0, 'sibling', '/ˈsɪblɪŋ/', '兄妹', 'n.兄弟姐妹;兄;姐;妹;弟;兄妹', 'siblings', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (563, 0, 'Belarus', '/bɛˈlɑrəs/', '白俄罗斯', 'n.白俄罗斯', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (564, 0, 'daughter', '/ˈdɔːtər/', '女儿', 'n.女儿;(某地, 某国等的)妇女', 'daughters', NULL, NULL, NULL, NULL, NULL, 'adj.女儿(般)的;第一代的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (565, 0, 'rarely', '/ˈrerli/', '鲜有;很少', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adv.很少;罕有;不常;很少地;鲜有', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (566, 0, 'roster', '/ˈrɑːstər/', '名单;名册', 'n.名单;名册;候选名单;值勤名单', NULL, 'v.将(姓名)列入值勤名单', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (567, 0, 'orangutan', '/ɔˈræŋətæn/', '红毛猩猩', 'n.红毛猩猩', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (568, 0, 'beg', '/beɡ/', '乞求;恳求', NULL, NULL, 'v.乞求;乞讨;恳求;祈求;哀求;行乞;(狗蹲坐在后腿上将前爪抬起)等食物', 'begged', 'begged', 'begging', 'begs', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (569, 0, 'grateful', '/ˈɡreɪtfl/', '感激的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.感激的;在书信或正式场合表达感激之意', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (570, 0, 'honor', '/ˈɑːnər/', '荣耀;尊重;纪念', 'n.荣誉;荣幸;尊敬;名誉;荣耀', 'honors', 'v.尊敬;尊重;纪念;接受;给与…的光荣', 'honored', 'honored', 'honoring', 'honors', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (571, 0, 'skull', '/skʌl/', '颅骨;脑袋', 'n.头盖骨;颅骨;脑袋;脑子;脑瓜', 'skulls', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (572, 0, 'proverb', '/ˈprɑːvɜːrb/', '谚语', 'n.谚语;格言', 'proverbs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (573, 0, 'fart', '/fɑːrt/', '放屁', 'n.放屁;(尤指)放响屁;令人厌烦的人;讨厌的人;蠢人', 'farts', 'v.放屁;(尤指)放响屁', 'farted', 'farted', 'farting', 'farts', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (574, 0, 'warehouse', '/ˈwerhaʊs/', '仓库', 'n.仓库;货仓;货栈', 'warehouses', 'v.把…存入仓库;把…存入保税仓库', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (575, 0, 'address', '/əˈdres/', '住址;演讲;定位并解决问题', 'n.住址;地址;演讲;演说;称呼;通信处', 'addresses', 'v.演讲;演说;称呼某人;致函;定位并解决问题;向…说话;写收信人姓名地址', 'addressed', 'addressed', 'addressing', 'addresses', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (576, 0, 'convince', '/kənˈvɪns/', '说服;劝说', NULL, NULL, 'v.说服;使确信;使信服;劝说', 'convinced', 'convinced', 'convincing', 'convinces', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (577, 0, 'celebrate', '/ˈselɪbreɪt/', '歌颂;庆祝', NULL, NULL, 'v.庆祝;庆贺;赞美;颂扬;歌颂;主持宗教仪式(尤指圣餐)', 'celebrated', 'celebrated', 'celebrating', 'celebrates', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (578, 0, 'floor', '/flɔːr/', '地板;地面', 'n.地板;地面;楼层;(车厢内的)底板;(海等的)底;(建筑物内的)场地;(工资或物价的)最低额,底价;议员席', 'floors', 'v.给…安装地板;(尤指体育运动中)击倒,打倒;使惊奇;使困惑;给…铺设地面', 'floored', 'floored', 'flooring', 'floors', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (579, 0, 'comparison', '/kəmˈpærɪsn/', '比较;对比', 'n.比较;对比;相比', 'comparisons', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (580, 0, 'tend', '/tend/', '倾向;趋于', NULL, NULL, 'v.倾向;趋于;趋向;往往会;常常就;招待,侍候,照顾,照料;照料;走向;护理;照管', 'tended', 'tended', 'tending', 'tends', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (581, 0, 'get', '/ɡet/', '达到某种状态', 'n.(煤炭)产量;薪资;赢利;幼畜', NULL, 'v.得到,获得;达到,进入某种状态;(考试)获得,达到;准备,做(饭);开始;到达,离开,沿…移动,艰难地移动;(定期)买,购买;使(某事)发生;抵达,到达(某地或某点);受到;收到;理解;有机会(做…);接(电话);抓住,捉住,逮住;搭乘,乘坐;接到;使烦恼;使困惑;去取(或带来);击中;(卖某物)挣得;与(某人)电话联系;感染上;使,让', 'got', 'got', 'getting', 'gets', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (582, 0, 'embark', '/ɪmˈbɑːrk/', '登船;登机;踏上', NULL, NULL, 'v.开始;上船;登机;装船;踏上', 'embarked', 'embarked', 'embarking', 'embarks', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (583, 0, 'about', '/əˈbaʊt/', '关于;左右;即将的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.即将的,快要的;在附近的;现成的, 能得到的;在起作用的;四处走动的;在流行中的', 'adv.大约;左右;几乎;到处;将近;各处;处处;在某地;闲着;凌乱地;沿反方向', NULL, NULL, 'prep.关于;时间上的前后左右;围绕;为了;在…附近;目的是;从事于;在…到处;在…四处;忙于;涉及…方面', NULL);
INSERT INTO `item` VALUES (584, 0, 'text', '/tekst/', '短信;发短信;文本', 'n.文本;短信;书籍或杂志的正文,本文(并非附注, 图片等);文档;文章;课本,教科书,剧本;文稿;剧本;演讲稿;《圣经》经文', 'texts', 'v.发短信', 'texted', NULL, 'texting', 'texts', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (585, 0, 'offer', '/ˈɔːfər/', '提供,给予;报价', 'n.建议;报价;出价;特价;(通常为短期的)减价,削价;主动提议;处理价', 'offers', 'v.提供,给予;供应;主动提出;奉献,祭献(给上帝)', 'offered', 'offered', 'offering', 'offers', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (586, 0, 'tragedy', '/ˈtrædʒədi/', '悲剧;不幸', 'n.悲剧;灾难;不幸;惨案;悲剧作品;悲惨的事', 'tragedies', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (587, 0, 'prayer', '/prer/', '祈祷', 'n.祈祷,祷告;祈祷文;祈祷会;经文;企盼的事', 'prayers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (588, 0, 'retirement', '/rɪˈtaɪərmənt/', '退休', 'n.退休;退休年龄;(尤指从体育, 政治等方面的)退出,引退;退休生活;退职', 'retirements', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (589, 0, 'arena', '/əˈriːnə/', '体育场', 'n.竞技场;活动场所;竞争舞台;圆形剧场;斗争场所;圆形运动场', 'arenas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (590, 0, 'globe', '/ɡloʊb/', '球;地球;世界', 'n.地球;世界;地球仪;球体;球状物', 'globes', 'v.使成球状', 'globed', 'globed', 'globing', 'globes', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (591, 0, 'grandparent', '/ˈɡrænperənt/', '爷爷或奶奶', 'n.祖父母;祖父;祖母;外祖父;外祖母;爷爷或奶奶', 'grandparents', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (592, 0, 'conversation', '/ˌkɑːnvərˈseɪʃn/', '非正式的对话', 'n.非正式的对话', 'conversations', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (593, 0, 'ass', '/æs/', '屁股', 'n.屁股;驴;笨蛋;蠢人', 'asses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (594, 0, 'butt', '/bʌt/', '屁股,臀部', 'n.屁股,臀部;烟蒂,烟头;(武器或工具)较粗的一端,柄;(嘲弄等的) 对象, 笑柄;(武器或工具的)粗大的一端;靶,靶墙,靶挡,靶垛;(头的)顶撞;(盛液体的)大桶;(盛液体的)大桶', 'butts', 'v.(使)对头连接, 平接,毗连;插手,干涉;(动物)用头(或角)顶;(人)用头顶撞', 'butted', 'butted', 'butting', 'butts', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (595, 0, 'closet', '/ˈklɑːzɪt/', '衣柜', 'n.壁橱;贮藏室;衣柜', 'closets', 'v.把…关在房间里(尤指为了私下会谈或避免他人打扰)', 'closeted', 'closeted', 'closeting', 'closets', 'adj.隐藏(身份等)的;不公开(个人信息)的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (596, 0, 'live', '/lɪv , laɪv/', '生活;居住;现场直播的', NULL, NULL, 'v.生存,活着,生活;居住;继续存在;享受充实而令人兴奋的生活', 'lived', 'lived', 'living', 'lives', 'adj.活的;有效的;现场直播的;现场演出的;实况转播的;燃烧着的;仍可爆炸的;连着电源的;含乳酸菌的;当前所关心的', 'adv.在现场直播;在现场表演(或录制)', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (597, 0, 'luxury', '/ˈlʌkʃəri/', '奢侈', 'n.奢侈;奢华;奢侈品;奢侈的享受;不常有的乐趣(或享受, 优势)', 'luxuries', NULL, NULL, NULL, NULL, NULL, 'adj.奢华的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (598, 0, 'political', '/pəˈlɪtɪkl/', '政治的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.政治的;政府的;政党的;政权的;党派的;关心政治的;政治上活跃的;争权夺利的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (599, 0, 'portrait', '/ˈpɔːrtrət/', '画像', 'n.肖像;描绘;半身照;画像;详细的描述', 'portraits', NULL, NULL, NULL, NULL, NULL, 'adj.竖向的;纵向打印格式的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (600, 0, 'supreme', '/suːˈpriːm/', '最高的', 'n.地位(或权力, 权威)最高的人;至高无上,极度;高脚浅杯(或碗),盛在高脚浅杯(或碗)中的开胃品(或甜点心);奶油沙司(或白汁),浇有奶油沙司(或白汁)的菜肴', NULL, NULL, NULL, NULL, NULL, NULL, 'adj.级别或地位最高的;最重要的,决定性的;终极的,(刑罚等)涉及死亡的;极大的,极度的;(政府, 司法或军事机构)拥有最高权力的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (601, 0, 'hell', '/hel/', '地狱', 'n.地狱;该死,见鬼;地狱中的人;恣意的玩闹;苦难的经历;悲惨的境况', 'hells', 'v.<口>(用于诅咒或表示恼怒, 惊讶, 厌恶, 不耐烦, 失望等)见鬼,该死;(车辆)急驰,飞驰;过放荡生活,欢闹,花天酒地', 'helled', 'helled', 'helling', 'hells', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (602, 0, 'wallet', '/ˈwɑːlɪt/', '钱包', 'n.钱包;(携带文件用的)皮夹,塑料夹,硬纸夹;(放钞票, 信用卡的)皮夹子', 'wallets', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (603, 0, 'parade', '/pəˈreɪd/', '游行', 'n.游行;阅兵;检阅;一系列(人或事);夸示;有一排小商店的街道', 'parades', 'v.游行;展示;展览;(使)列队行进,接受检阅;游行示威;招摇过市;游行庆祝;(使)冒充,伪装,打扮成;大摇大摆', 'paraded', 'paraded', 'parading', 'parades', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (604, 0, 'centimeter', '/ˈsɛntəˌmitər/', '厘米', 'n.厘米;公分', 'centimeters', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (605, 0, 'engage', '/ɪnˈɡeɪdʒ/', '参与;订婚;吸引', NULL, NULL, 'v.参与;从事;使衔接,啮合;聘用;雇用;与某人交战;吸引注意力;与…建立密切关系;尽力理解;订婚', 'engaged', 'engaged', 'engaging', 'engages', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (606, 0, 'claim', '/kleɪm/', '声称', 'n.(尤指向公司, 政府等)索款,索赔;宣称;声明;(尤指对财产, 土地等要求拥有的)所有权;断言', 'claims', 'v.宣称;声称;获得;要求(拥有);引起(注意);索取;认领;断言;索要;夺走,夺去(生命)', 'claimed', 'claimed', 'claiming', 'claims', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (607, 0, 'annotate', '/ˈænəteɪt/', '批注', NULL, NULL, 'v.注释;批注', 'annotated', 'annotated', 'annotating', 'annotates', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (608, 0, 'swap', '/swɑːp/', '交换;替换', 'n.交换;掉换;交换物;被掉换者', 'swaps', 'v.交换;把…换成;掉换;替换', 'swapped', 'swapped', 'swapping', 'swaps', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (609, 0, 'frankly', '/ˈfræŋkli/', '坦率地;老实说', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adv.坦率地;老实说;坦白地说;直率地', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (610, 0, 'contest', '/ˈkɑːntest , kənˈtest/', '比赛;竞赛', 'n.比赛;竞赛;(控制权或权力的)争夺,竞争', 'contests', 'v.就…提出异议;争辩;争取赢得(比赛, 选举等)', 'contested', 'contested', 'contesting', 'contests', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (611, 0, 'elite', '/eɪˈliːt/', '精英;上层人士', 'n.精英;精华;上层人士,掌权人物;出类拔萃的人', 'elites', NULL, NULL, NULL, NULL, NULL, 'adj.杰出的,精英的;精锐的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (612, 0, 'camp', '/kæmp/', '营地', 'n.营地;阵营;(尤指政府让人长时间住宿的)营房,营帐;兵营;度假营', 'camps', 'vi.露营;(尤指在假日)野营;宿营;暂住;借住;借宿', 'camped', 'camped', 'camping', 'camps', 'adj.夸张的,滑稽可笑的(尤指故意逗笑);做作的;故意带女子气的,女性化的(被某些人认为是典型同性恋的特征)', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (613, 0, 'submarine', '/ˌsʌbməˈriːn/', '潜艇', 'n.潜艇;潜艇三明治,长卷三明治(用长卷面包纵向切开,内夹各种食物)', 'submarines', 'vi.用潜艇攻击驾驶潜艇;划入底下', 'submarined', 'submarined', 'submarining', 'submarines', 'adj.水下的;海底的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (614, 0, 'cocaine', '/koʊˈkeɪn/', '可卡因', 'n.可卡因;古柯碱', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (615, 0, 'bucket', '/ˈbʌkɪt/', '桶;投篮得分', 'n.水桶;桶;挖土机的铲斗;一桶的量;起重机的吊斗;大量;大桶状物;篮球投篮得分', 'buckets', 'v.挑流鼻坎;挖掘铲斗;拼命划桨', 'bucketed', 'bucketed', 'bucketing', 'buckets', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (616, 0, 'manner', '/ˈmænər/', '方式;礼貌', 'n.方式;方法;态度;举止;礼貌;礼仪;规矩', 'manners', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (617, 0, 'charity', '/ˈtʃærəti/', '慈善', 'n.慈善;慈善机构(或组织);施舍;仁爱;宽容;赈济;宽厚', 'charities', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (618, 0, 'enhance', '/ɪnˈhæns/', '增强', NULL, NULL, 'v.增强;提高;增进', 'enhanced', 'enhanced', 'enhancing', 'enhances', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (619, 0, 'cock', '/kɑːk/', '公鸡;屌', 'n.公鸡;雄鸡;老兄,家伙,伙计;雄禽', 'cocks', 'v.立起,竖起,翘起(身体部位);扣(或扳)上扳机准备射击', 'cocked', 'cocked', 'cocking', 'cocks', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (620, 0, 'cheat', '/tʃiːt/', '欺骗;不忠', 'n.(尤指游戏中的)作弊者,骗子;欺诈行为;(电脑游戏的)秘技,欺骗程序,作弊软件;欺骗手段', 'cheats', 'v.欺骗;作弊;蒙骗;不忠或不贞;与他人有秘密性关系', 'cheated', 'cheated', 'cheating', 'cheats', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (621, 0, 'powder', '/ˈpaʊdər/', '粉;火药', 'n.粉;粉末;扑面粉;美容粉;细面;火药', 'powders', 'v.搽粉;抹粉', 'powdered', NULL, 'powdering', 'powders', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (622, 0, 'drill', '/drɪl/', '钻,打孔', 'n.钻;钻头;钻机;(应对紧急情况的)演习;训练;钻床;练习;军事训练;条播机;粗斜纹布;正确的步骤', 'drills', 'v.钻,打孔;训练;培训;操练;作…演习', 'drilled', 'drilled', 'drilling', 'drills', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (623, 0, 'lineup', '/ˈlaɪˌnʌp/', '阵容', 'n.阵容;一组人;电视节目时间表', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (624, 0, 'present', '/ˈpreznt/;v-/prɪˈzent/', '展现;目前;礼物', 'n.目前;现在;礼物;礼品;展现', 'presents', 'v.提出;出现;展现;呈现;表达,表示;提交;使发生;颁发;交付;授予;把…交给;上演;正式介绍;突然出现;主持播放;正式出席', 'presented', 'presented', 'presenting', 'presents', 'adj.存在;当前的;出现;出席;在场;现存的', NULL, NULL, NULL, NULL, '从暗处拿到明处');
INSERT INTO `item` VALUES (625, 0, 'represent', '/ˌreprɪˈzent/', '表示', NULL, NULL, 'v.代表,表示;(在竞赛或体育赛事中)代表(国家或地区);(标志或符号)意味着,代表着,标志着;描绘,(形象地)表现,描写;代理(个人或团体);代表(个人或团体)出席;使有代表性,使有代表作;使呈现;陈述,诉说;象征;展示;相当于,相等于;作为……的代表(代言人);表述;想象,设想;演出,扮演;提出异议,提出抗议;维护……的利益;回想;再提出;作为……的象征;典型地反映;成为……实例,成为典型;再呈现;抗议说;再递交;再上演,再演出;集中地体现;再赠送', 'represented', 'represented', 'representing', 'represents', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (626, 0, 'dribble', '/ˈdrɪbl/', '运球', 'n.运球;带球;口水;盘球;细流;小滴', 'dribbles', 'v.运(球);流(口水);细流;垂(涎);一点一滴地落下;使成细流;使滴出', 'dribbled', 'dribbled', 'dribbling', 'dribbles', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (627, 0, 'pole vault', NULL, '撑杆跳', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (628, 0, 'ever', '/ˈevər/', '任何时候', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adv.任何时候;曾经;(进行比较时用以加强语气)以往任何时候;总是;始终;究竟,到底;不断地;(用于否定句和疑问句,或与if连用的句子)在任何时候', NULL, NULL, NULL, '是every的变体');
INSERT INTO `item` VALUES (629, 0, 'squirrel', '/ˈskwɜːrəl/', '松鼠', 'n.松鼠', 'squirrels', 'v.把…作为因素计入;代理经营;把…分解成', 'squirrelled', 'squirrelled', 'squirrelling', 'squirrels', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (630, 0, 'president', '/ˈprezɪdənt/', '总统', 'n.总统;(机构, 俱乐部, 学院等的)会长,院长,主席;总裁;国家主席;董事长;总经理;银行行长', 'presidents', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (631, 0, 'deer', '/dɪr/', '鹿', 'n.鹿', 'deer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (632, 0, 'tongue', '/tʌŋ/', '舌头', 'n.舌头;舌;语言;鞋舌;舌状物;口条;说话方式;有…说话方式的', 'tongues', 'v.吹奏(管乐器);舔', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (633, 0, 'dear', '/dɪr/', '亲爱的', 'n.(称呼所爱的人)亲爱的;(对较年轻的人或孩子说话时用)亲爱的,乖乖;可爱的人;仁慈的人', NULL, NULL, NULL, NULL, NULL, NULL, 'adj.亲爱的;珍视的;宝贵的;昂贵;价格高', 'adv.高价地;昂贵地', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (634, 0, 'thief', '/θiːf/', '小偷', 'n.小偷;贼;窃贼', 'thieves', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (635, 0, 'fracture', '/ˈfræktʃər/', '骨折', 'n.骨折;断裂', NULL, 'v.使断裂;破裂;(使)分裂', 'fractured', 'fractured', 'fracturing', 'fractures', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (636, 0, 'sniper', '/ˈsnaɪpər/', '狙击手', 'n.狙击手', 'snipers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (637, 0, 'assassination', '/əˌsæsɪ\'neɪʃ(ə)n/', '暗杀', 'n.暗杀;刺杀', 'assassinations', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (638, 0, 'crawl', '/krɔːl/', '爬行', 'n.爬泳;自由泳;缓慢的速度', NULL, 'v.爬行;缓慢行进;卑躬屈膝;匍匐行进', 'crawled', 'crawled', 'crawling', 'crawls', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (639, 0, 'deliberate', '/dɪˈlɪbərət , dɪˈlɪbəreɪt/', '故意的', NULL, NULL, 'v.仔细考虑;深思熟虑;反复思考', 'deliberated', 'deliberated', 'deliberating', 'deliberates', 'adj.故意的;蓄意的;从容不迫的;存心的;不慌不忙的;小心翼翼的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (640, 0, 'marrow', '/ˈmæroʊ/', '骨髓', 'n.骨髓,髓;精华,活力;西葫芦', 'marrows', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (641, 0, 'lamb', '/læm/', '羔羊', 'n.羔羊;小羊;羊羔肉;(慈爱或怜悯地描述或称呼某人)宝贝,乖乖', 'lambs', 'v.产羊羔', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (642, 0, 'mutton', '/ˈmʌtn/', '羊肉', 'n.羊肉', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (643, 0, 'gummy', '/ˈɡʌmi/', '软糯的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.软糯的;像软糖口感一样的;黏性的;露齿龈的;涂有黏胶的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (644, 0, 'cream', '/kriːm/', '奶油;护肤霜', 'n.奶油;乳脂;护肤霜;精英;洁净剂;清洗液;奶油夹心糖', 'creams', 'v.彻底打败;把…搅成糊状(或奶油状)混合物;狠揍', 'creamed', 'creamed', 'creaming', 'creams', 'adj.奶油色的;米色的;淡黄色的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (645, 0, 'moist', '/mɔɪst/', '湿润的;多汁的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.潮湿的;湿润的;微湿的;多汁的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (646, 0, 'rib', '/rɪb/', '肋骨', 'n.肋骨;(织物的)凸条花纹,罗纹;排骨;(船或屋顶等的)肋拱,肋材', 'ribs', 'v.开(某人的)玩笑;嘲笑;逗弄', 'ribbed', 'ribbed', 'ribbing', 'ribs', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (647, 0, 'take', '/teɪk/', '接管', 'n.意见;看法;镜头;(不停机一次连续拍摄的)场景;收入额;进项', NULL, 'v.拿;接管;接受;采取(措施);吃;使达到;记录;需要…时间;乘坐,搭乘(交通工具);拍照;携带;遭受;夺取;引领;取走;容纳;把…推向;减去;运走', 'took', 'taken', 'taking', 'takes', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (648, 0, 'slip', '/slɪp/', '滑倒', 'n.滑倒;纸条;差错;衬裙;疏漏;便条;失脚;小纸片;滑跤;纰漏;(击球员后侧的)守场员', NULL, 'v.滑倒;溜;滑落;陷入,进入;下降;(迅速且容易地)穿上,脱下;脱落;摆脱;滑离;滑跤;悄悄疾行;迅速放置', 'slipped', 'slipped', 'slipping', 'slips', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (649, 0, 'ruin', '/ˈruːɪn/', '毁灭', 'n.破坏;毁灭;破产;毁坏;残垣断壁;祸根;失去工作(或地位等);一无所有;破产(或丢掉工作等)的根源', 'ruins', 'v.破坏;毁灭;使破产(或失去地位等);毁坏;糟蹋', 'ruined', 'ruined', 'ruining', 'ruins', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (650, 0, 'vagina', '/vəˈdʒaɪnə/', '阴道', 'n.阴道', 'vaginas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (651, 0, 'wilt', '/wɪlt/', '枯萎', 'n.枯萎,凋谢;(棉花)枯萎病;萎缩,衰退;(毛虫的)虫体液化病', NULL, 'v.(使)枯萎,凋谢,蔫;(经济等)萎缩;畏缩,退缩;变得委靡不振,发蔫,变得又累又乏;支撑不住;把(割下的草)晾干;失去自信;(衣服等)变得软垂而不挺括;同一个人谈话时用,即you will', 'wilted', 'wilted', 'wilting', 'wilts', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (652, 0, 'constipation', '/ˌkɑːnstɪˈpeɪʃn/', '便秘', 'n.便秘', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (653, 0, 'mercy', '/ˈmɜːrsi/', '怜悯', 'n.怜悯;仁慈,慈悲;宽恕;(神的)恩惠;幸运,侥幸;(对犯有死罪者的)宽大处理(指改判死刑为徒刑);(从痛苦等中的)解脱;仁慈行为,善行', 'mercies', NULL, NULL, NULL, NULL, NULL, 'adj.慈善的;救援的;出于怜悯的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (654, 0, 'peek', '/piːk/', '偷看', 'n.偷看;窥视;一瞥,看一眼', 'peeks', 'v.偷看;窥视;探出;微露出', 'peeked', 'peeked', 'peeking', 'peeks', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (655, 0, 'tickle', '/ˈtɪkl/', '胳肢', 'n.痒;胳肢;呵痒;痒感', NULL, 'v.挠痒痒;胳肢;(使)发痒;使高兴;逗乐;使满足;使感兴趣;呵痒', 'tickled', 'tickled', 'tickling', 'tickles', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (656, 0, 'rally', '/ˈræli/', '集会', 'n.集会;(汽车, 摩托车等的)拉力赛;群众大会(尤指支持某信念或政党的);对打;止跌回升;(争夺一分的)往返拍击', 'rallies', 'v.召集;集合;复原;价格回升;振作精神;跌后回升;恢复健康', 'rallied', 'rallied', 'rallying', 'rallies', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (657, 0, 'settle', '/ˈsetl/', '平息;安顿', 'n.高背长椅(老式木家具,有扶手,座下多带柜)', 'settles', 'v.平息;安顿;解决分歧, 纠纷等;定居;(使)沉降,下陷,变得密实;(最终)决定,确定,安排好;结束(争论, 争端等);付清(欠款);(使)平静下来,安静下来,定下心来;殖民;降落;把…放好;使处于舒适的位置', 'settled', NULL, 'settling', 'settles', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (658, 0, 'tortoise', '/ˈtɔːrtəs/', '乌龟', 'n.乌龟;龟;陆龟', 'tortoises', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (659, 0, 'peak', '/piːk/', '顶峰', 'n.高峰;顶峰;山峰;尖端;峰峦;帽舌;尖头;尖形', 'peaks', 'v.达到高峰;达到最高值', 'peaked', NULL, 'peaking', 'peaks', 'adj.高峰时期的;巅峰状态的;最高度的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (660, 0, 'chief', '/tʃiːf/', '上司;首领', 'n.(公司或机构的)最高领导人;酋长;首领;族长;<口>上司,头头;(表示客气的称呼)老板,先生;主要部分,最有价值的部分;纹章的上段,纹章上段的图记', 'chiefs', NULL, NULL, NULL, NULL, NULL, 'adj.(用于职位头衔)首席的;主要的;总的;首要的;最重要的;为首的;最高级别的', 'adv.主要地;首要地', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (661, 0, 'mangosteen', '/ˈmæŋɡəstiːn/', '山竹', 'n.山竹;莽吉柿;倒捻子(热带水果,肉白,多汁)', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (662, 0, 'carat', '/ˈkærət/', '克拉', 'n.克拉;开(黄金成色单位,纯金为24开)', 'carats', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (663, 0, 'surpass', '/sərˈpæs/', '超过', NULL, NULL, 'v.超过;超越;优于;胜过', 'surpassed', 'surpassed', 'surpassing', 'surpasses', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (664, 0, 'cop', '/kɑːp/', '警察', 'n.警察', 'cops', 'v.注意到;遭受;忍受', 'copped', 'copped', 'copping', 'cops', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (665, 0, 'bless', '/bles/', '祝福;保佑', NULL, NULL, 'v.祝福;保佑;赞美上帝;祝圣;称颂上帝;(表示惊奇);求上帝降福于', 'blessed', 'blessed', 'blessing', 'blesses', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (666, 0, 'convention', '/kənˈvenʃn/', '政党大会', 'n.国家或首脑间的公约,协定,协议;常规;政党大会,集会;惯例;习俗;传统手法,传统风格', 'conventions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (667, 0, 'behalf', '/bɪˈhæf/', '代表', 'n.代表;利益', 'behalves', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (668, 0, 'prosper', '/ˈprɑːspər/', '繁荣;昌盛', NULL, NULL, 'v.繁荣;昌盛;成功;兴旺;发达', 'prospered', 'prospered', 'prospering', 'prospers', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (669, 0, 'supposed', NULL, '理应的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.理应的;应该的;假想的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (670, 0, 'damn', '/dæm/', '该死的;强烈指责', 'n.一点点;些微', 'damns', 'v.警告;谴责;强烈指责;狠狠批评;令某人下地狱', 'damned', 'damned', 'damning', 'damns', 'adj.该死的;可恶的;完全的', 'adv.非常;十足;极其', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (671, 0, 'casualty', '/ˈkæʒuəlti/', '伤亡', 'n.战争或事故的伤亡;受害者;急诊室;损坏物;毁坏物', 'casualties', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (672, 0, 'erase', '/ɪˈreɪs/', '擦除', NULL, NULL, 'v.擦除;清除;消除;抹去,清洗(磁带上的录音或存储器中的信息);擦掉,抹掉(笔迹等);消灭', 'erased', 'erased', 'erasing', 'erases', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (680, 0, 'labor', '/ˈleɪbər/', '劳动,工作', 'n.劳动, 工作;工会;工人, 劳工;工人阶级, 体力劳动者;努力;活计, 劳动果实;分娩;(分娩时的)阵痛;英国工党', NULL, 'v.使疲倦, 使厌烦;使辛勤地劳动(或工作);劳动, 工作;努力争取(for);苦干;(船)前后左右颠簸, 浪中挣扎;苦恼, 痛苦;过分精工制作, 过分详尽阐述;分娩;误以为, 为……所蒙蔽;详细分析(指引擎)缓慢而困难地运转;<古><诗>耕作(土地)', NULL, NULL, NULL, NULL, 'adj.劳工的;工会的;劳动条件的;劳资关系的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (681, 0, 'startup', '/ˈstɑrˌtʌp/', '初创公司', 'n.初创公司', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (682, 0, 'manual', '/ˈmænjuəl/', '手册;手动的;体力的', 'n.手册;说明书;指南', 'manuals', NULL, NULL, NULL, NULL, NULL, 'adj.手动的;手工的;体力的;用手的;手控的;用手操作的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (683, 0, 'chaos', '/ˈkeɪɑːs/', '混乱', 'n.混乱;紊乱;杂乱', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (684, 0, 'warm', '/wɔːrm/', '暖和的', 'n.加热;取暖', NULL, 'v.使温暖,变暖和;使变得更友好,变得更温情', 'warmed', 'warmed', 'warming', 'warms', 'adj.温暖的;暖和的;保暖的;友好的;保温的;热心的;暖色调的;温情的;即将猜中', 'adv.使人暖和地;温暖地', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (685, 0, 'worm', '/wɜːrm/', '蠕虫;蠕动', 'n.蠕虫;寄生虫;幼虫;肠虫;懦夫', 'worms', 'v.蠕动;在狭窄或拥挤的地方曲折行进;给动物驱肠虫', 'wormed', 'wormed', 'worming', 'worms', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (688, 0, 'fog', '/fɑːɡ/', '雾;雾气笼罩', 'n.雾;困惑;迷惘', NULL, 'v.使困惑;雾气笼罩;使迷惘;使混淆不清', 'fogged', 'fogged', 'fogging', 'fogs', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (689, 0, 'sandal', '/ˈsændl/', '凉鞋;拖鞋', 'n.凉鞋', 'sandals', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (690, 0, 'sour', '/ˈsaʊər/', '变馊;酸的', 'n.酸味;痛苦;讨厌的东西;酸味饮料', NULL, 'v.使变坏,恶化;牛奶等变味,酸腐', 'soured', 'soured', 'souring', 'sours', 'adj.酸的;有酸味的;酸腐的;馊的;阴郁的;闷闷不乐的;没好气的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (691, 0, 'radish', '/ˈrædɪʃ/', '萝卜', 'n.萝卜', 'radishes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (692, 0, 'generality', '/ˌdʒenəˈræləti/', '大概;笼统', 'n.一般性;概述;主体;大多数;大部分;通则;笼统;普遍性;概括性;概论', 'generalities', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (693, 0, 'issue', '/ˈɪʃuː/', '问题', 'n.问题;发行;一期;子女;(有关某事的)担忧;重要议题;期号;一次发行额(或一套)', 'issues', 'v.发出;发行(新的一批);(正式)发给;公布;宣布;出版;供给;(尤指通过正式文件)将…诉诸法律', 'issued', 'issued', 'issuing', 'issues', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (694, 0, 'miner', '/ˈmaɪnər/', '采矿工;采矿车', 'n.采矿工;采矿车', 'miners', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (695, 0, 'ore', '/ɔːr/', '矿石', 'n.矿石;矿;矿砂', 'ores', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (696, 0, 'in', '/ɪn/', '以某种方式;在场所里面', 'n.在朝派,执政者;门路;(与重要人物的)交情;影响;知情者;(网球等运动中的)界内球', 'ins', NULL, NULL, NULL, NULL, NULL, 'adj.流行的,时髦的', 'adv.进,入;朝里,向(或至)某地,向某一方向;在里面;在附近,接近;在里面;(加)人,(搀)入;在屋里,在家,在办公室;(运气等)在好转;(潮)在上涨;在朝,当致,当选;(火等)燃烧着,(灯)亮着;〈板〉轮到击球;〈网〉(球)在界内;同意;一致;相称;在工作单位;在车站;收到', NULL, NULL, 'prep.以某种方式;在某段时间内;在地点或场所里面;在……上;(表示时间)在……期间,在……过程中,在(一段时间)之内,过……之久;(表示领域, 范围)在……之内,在……方面,关于;(表示状态, 情况)处于……中;(表示职业, 活动等)从事于;(表示表达方式, 手段和原材料等)用;(表示服饰)穿着,戴着,带着;(表示数量, 程度, 比例)以,按;(表示能力, 性格, 含量等)在……之中,在……身上;(表示同一性)即,就是;(表示方向)向,朝;(表示动作的方向或结果)入……中,成为;(表示原因, 目的)由于,为了,作为;(表示动作的对象)于;在(某范围或空间内的)某一点;在(某物的形体或范围)中;进入;构成……的整体(或部分);带着,充满(某种情感或愿望);参与,参加(演出, 比赛等);做……时;(裂缝或洞)在……表面上;(表示排列或形状)成一排,呈球形;以(……颜色)的', NULL);
INSERT INTO `item` VALUES (697, 0, 'morning', '/ˈmɔːrnɪŋ/', '早晨', 'n.早晨;上午;<口>晨报;<诗>破晓,黎明;次日早晨(或上午);初期,早期;午夜至正午的时间', 'mornings', NULL, NULL, NULL, NULL, NULL, 'adj.(在)早晨的;(在)上午的;初期的,早期的;早晨(或上午)发生的;适合于早晨的', 'adv.<口>在早晨,在上午,在每天早晨(或上午)', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (698, 0, 'promote', '/prəˈmoʊt/', '升级;提升', NULL, NULL, 'v.升级;提升;促进;推动;提升;促销;晋升;推销;体育运动队晋级', 'promoted', 'promoted', 'promoting', 'promotes', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (699, 0, 'yard', '/jɑːrd/', '长度单位码', 'n.院子;(某种用途的)区域,场地;帆桁;长度单位码', 'yards', 'v.把(家畜)赶进栏里', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1码=0.91米');
INSERT INTO `item` VALUES (700, 0, 'vulnerability', '/ˌvʌlnərə\'bɪləti/', '漏洞;弱点', 'n.漏洞;弱点;易伤性;可捕性', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (701, 0, 'colossal', '/kəˈlɑːsl/', '巨型;超级大的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.巨大的;庞大的;超级大的;巨型', NULL, NULL, NULL, NULL, '比 enormous 程度更深');
INSERT INTO `item` VALUES (702, 0, 'tour', '/tʊr/', '旅游;参观', 'n.旅游;参观;旅行;游览;观光;巡视;巡回比赛(或演出等)', 'tours', 'v.旅游;在…巡回演出(或做宣传广告等)', 'toured', 'toured', 'touring', 'tours', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (703, 0, 'obviously', '/ˈɑːbviəsli/', '明显地', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adv.(用于陈述认为别人已知道或希望别人同意的事)显然;明显地;(用于说明某种情况或事实)显而易见;不言而喻', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (704, 0, 'penetration', '/ˌpenəˈtreɪʃn/', '进入;渗透', 'n.渗透;穿透;进入;男人阴茎的插入', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (705, 0, 'grill', '/ɡrɪl/', '烤架;烧烤', 'n.烤架;烤肉;烤肉餐馆', 'grills', 'v.烧烤;炙烤;盘问;追问;审问;责问', 'grilled', 'grilled', 'grilling', 'grills', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (706, 0, 'skewer', '/ˈskjuːər/', '串肉扦;扦子', 'n.串肉扦;扦子', 'skewers', 'v.用扦子串住', 'skewered', 'skewered', 'skewering', 'skewers', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (707, 0, 'heal', '/hiːl/', '治愈', NULL, NULL, 'v.治愈病;使康复,复原;使结束,较容易忍受;使又愉快起来', 'healed', 'healed', 'healing', 'heals', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (708, 0, 'root', '/ruːt/', '根源;跟随,撑持', 'n.根;根源,根由,原因;根部;根本;基础;方根;根茎,地下茎;词根;核心;块根;底部,基部;起源;须根;祖先;实质;根苗,苗裔(基督教《圣经》用语);〈俚〉阴茎;〈粗〉性交;根状物;〈英〉根用作物;作为性交对象的女人;(常春藤等的)攀缘茎;子孙多的人(或家庭)', 'roots', 'v.(使)生根,扎根;使(思想, 信仰, 感情等)扎根,使牢固树立;跟随,撑持;根除,铲除,根绝;起源于,起因于;〈诗〉(从某处)拔掉(眼中钉等);发掘;连根拔,连根挖;翻寻,翻找,搜寻;〈美〉(为参赛者)鼓气,捧场,欢呼,喝彩;〈美〉(为生计等)努力工作,苦干;使受挫;(与某人)性交;使精疲力竭;(猪等)用鼻(或嘴)拱土(觅食);使像生了根似地固定不动', 'rooted', 'rooted', 'rooting', 'roots', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (709, 0, 'big time', NULL, '重要时刻', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (710, 0, 'exhibition', '/ˌeksɪˈbɪʃn/', '表演;展览', 'n.展览;表演;展览品;奖学金', 'exhibitions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (711, 0, 'sausage', '/ˈsɔːsɪdʒ/', '香肠', 'n.香肠', 'sausages', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (712, 0, 'bowl', '/boʊl/', '碗', 'n.碗;一碗,一钵,一盆(的量);盆;钵;木球;季后赛;草地滚球游戏;物体的碗状部分;露天圆形剧场', 'bowls', 'v.(草地滚球戏或保龄球运动中)滚球,投球;把(球)投给击球员;(向某处)迅速移动;击中三柱门把(击球员)杀出局', 'bowled', 'bowled', 'bowling', 'bowls', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (713, 0, 'squid', '/skwɪd/', '鱿鱼', 'n.鱿鱼', 'squids', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (714, 0, 'old head', NULL, '老哥', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '常见于黑人口语，表示尊敬，并无冒犯。');
INSERT INTO `item` VALUES (715, 0, 'kimchi', NULL, '韩国泡菜', 'n.韩国泡菜', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (716, 0, 'cucumber', '/ˈkjuːkʌmbər/', '黄瓜', 'n.黄瓜', 'cucumbers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (717, 0, 'cabbage', '/ˈkæbɪdʒ/', '卷心菜', 'n.卷心菜', 'cabbages', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '大白菜，甘蓝，紫甘蓝的统称');
INSERT INTO `item` VALUES (718, 0, 'salt', '/sɔːlt/', '盐', 'n.食盐;盐;形状(或味道)像盐的物质', NULL, 'v.在(食物)中放盐;用盐腌制(食物);把盐撒在路面上(以使冰雪融化)', 'salted', 'salted', 'salting', 'salts', 'adj.咸的;含盐的;用盐腌制的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (719, 0, 'leaf', '/liːf/', '叶', 'n.叶;叶片;叶子;(纸)页,张;(尤指书的)页;有…片叶的;活动桌板;薄金属片;有…状叶的', 'leaves', 'v.翻…的页,匆匆翻阅', 'leafed', 'leafed', 'leafing', 'leaves', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (720, 0, 'instant', '/ˈɪnstənt/', '瞬间;立即的;速食的', 'n.瞬间,瞬息,顷刻,刹那;某一时刻;当时;〈口〉速溶饮料(尤指速溶咖啡)', 'instants', NULL, NULL, NULL, NULL, NULL, 'adj.立即的,即刻的;速溶的;速食的;紧急的,急迫的,迫在眉睫的;短暂的;现时的,目下的,此刻的;坚持的,不屈不挠的;瞬间产生(或发生)的;事先未准备(或考虑)的,即兴的,当场完成任务的;节奏太快的,瞬息万变的;本月的(商业及正式函件用语);(东西)使用方便的;效果快速的;顷刻间可以得到的;纠缠不休的', 'adv.〈诗〉立即,立刻', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (721, 0, 'redemption', '/rɪˈdempʃn/', '赎', 'n.赎回;救赎;拯救', 'redemptions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (722, 0, 'boil', '/bɔɪl/', '煮;火疖子', 'n.沸点;沸腾;疖;皮下脓肿;黄水疮', NULL, 'v.煮;煮沸;怒火中烧;用沸水煮(或烫洗);(把壶, 锅等)里面的水烧开', 'boiled', 'boiled', 'boiling', 'boils', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (723, 0, 'heat', '/hiːt/', '预赛;热度', 'n.热;温度;高温,热的环境;压力;炉灶;预赛;炎热天气;强烈感情', 'heats', 'v.加热;变热;使变暖', 'heated', 'heated', 'heating', 'heats', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (724, 0, 'spoiler', '/ˈspɔɪlər/', '剧透', 'n.剧透', 'spoilers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (725, 0, 'copyright', '/ˈkɑːpiraɪt/', '版权', 'n.版权;著作权', 'copyrights', 'v.获得…的版权', 'copyrighted', 'copyrighted', 'copyrighting', 'copyrights', 'adj.受版权保护的;未经准许不得复制的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (726, 0, 'Serbia', '/ˈsɜrbiə/', '塞尔维亚', 'n.塞尔维亚', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (727, 0, 'saturate', '/ˈsætʃəreɪt/', '饱和化合物;饱和的', 'n.饱和化合物;饱和脂肪', NULL, 'v.使湿透;使市场饱和;浸透,渗透;使充满;〈化〉使饱和;〈军〉对(目标)进行饱和轰炸;〈物〉使(物质)磁化达饱和点;使饱享,使享受过度;〈生理〉(饱和潜水时)使(身体组织)保持惰性气体饱和', 'saturated', 'saturated', 'saturating', 'saturates', 'adj.饱和的;浸透的;颜色深的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (728, 0, 'hold', '/hoʊld/', '保持;控制', 'n.控制;持;影响;支撑;拿;抓;抱;握;货舱;支撑点;(尤指摔跤, 拳击中的)擒拿法;左右力', NULL, 'v.持有;保持;控制;怀有,持有(信念, 意见);认为;拥有;捂住,按住(受伤的身体部位等);召开;保存;获得;容纳;担任;抓住;拿着;(打电话时)等待,不挂断;延长,继续唱(某音符);抱住;托住;顶住;保持不变;监禁;停下;守卫;支撑…的重量;(船或飞机)保持航线;平稳行驶;使保持同样程度;使(注意力或兴趣)持续不减', 'held', 'held', 'holding', 'holds', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (729, 0, 'leave', '/liːv/', '离开;忘带', 'n.休假;假期;准许', NULL, 'v.离开;忘带;使保留,让…处于;使发生;剩余;去世时遗赠,遗留;丢弃;遗下家人;遗弃;把…留交;递送;留下备用或销售等;不立刻做', 'left', 'left', 'leaving', 'leaves', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (730, 0, 'basketball', '/ˈbæskɪtbɔːl/', '篮球', 'n.篮球', 'basketballs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '发音时：basketBall t有爆破 B是紧音');
INSERT INTO `item` VALUES (731, 0, 'computer', '/kəmˈpjuːtər/', '计算机', 'n.计算机', 'computers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '发音时：是kemPiuder m先闭嘴P再爆破, 这个单词读对了会很有节奏感');
INSERT INTO `item` VALUES (732, 0, 'ultimately', '/ˈʌltɪmətli/', '最终', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adv.最终;最后;根本上;终归;最基本地', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (733, 0, 'straight', '/streɪt/', '直接', 'n.直道;异性恋者', NULL, NULL, NULL, NULL, NULL, NULL, 'adj.直的;连续的;异性恋的;纯的;准的;严肃的,正统的;坦诚的;整洁;简单明了的;平正的;直筒型(非紧身)的;正中目标的;规矩老实的', 'adv.直;直接;正;径直;笔直地;立即;成直线;坦率地;连续不断地;平正地', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (734, 0, 'expect', '/ɪkˈspekt/', '指望', NULL, NULL, 'v.预料;预计;期待;要求;指望;预期;期望;等待;盼望;猜想', 'expected', 'expected', 'expecting', 'expects', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (735, 0, 'foot', '/fʊt/', '脚;英尺', 'n.脚,足;英尺;基础,底部;<文>步态,步伐;袜底;袜底;(缝纫机的)压脚板', 'feet', 'v.<非正式>支付(尤指大额或不合理账单)', 'footed', 'footed', 'footing', 'foots', 'adj.(刹车或泵)用脚操作的,脚踏的;(巡逻队)步行的,步(兵)的', NULL, NULL, NULL, NULL, '1英尺=一只脚的长度=30厘米');
INSERT INTO `item` VALUES (736, 0, 'across', '/əˈkrɔːs/', '横跨', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adv.横跨;在对过;在对面;宽;从一边到另一边;从…的一边向…;横写的', NULL, NULL, 'prep.穿过;在(身体某部位)上;在…对过;在…对面;横过;在…各处;从…一边到另一边', NULL);
INSERT INTO `item` VALUES (737, 0, 'decision', '/dɪˈsɪʒn/', '决定', 'n.决定;抉择;决策', 'decisions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (738, 0, 'decide', '/dɪˈsaɪd/', '决定', NULL, NULL, 'v.决定;裁决;判决;选定;对…作出抉择;影响(或决定)…的结果;成为(某人)做某事的原因', 'decided', 'decided', 'deciding', 'decides', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (739, 0, ' in front of', NULL, '在XXX的前面', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'prep.在…前', NULL);
INSERT INTO `item` VALUES (740, 0, 'inside', '/ˌɪnˈsaɪd/', '向里面', 'n.内部;内侧;(道路或跑道拐弯处的)内侧,里道,内圈;里面;(人的)肠胃,内脏;(靠近路边的)慢车道', 'insides', NULL, NULL, NULL, NULL, NULL, 'adj.内部的;里面的;从内部了解到的;内线干的', 'adv.向里面;在监狱里;被监禁', NULL, NULL, 'prep.在(或向)…内;在(或向)…里;少于(某时间)', NULL);
INSERT INTO `item` VALUES (741, 0, 'Crimea', '/kraɪˈmiə/', '克里米亚', 'n.克里米亚', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (742, 0, 'Ukraine', '/juˈkreɪn/', '乌克兰', 'n.乌克兰', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (743, 0, 'wonderful', '/ˈwʌndərfl/', '精彩的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.精彩的;绝妙的;令人惊奇的;令人赞叹的;令人高兴的;使人愉快的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (744, 0, 'symbol', '/ˈsɪmbl/', '符号;象征', 'n.符号;象征;记号;代号', 'symbols', 'v.用符号代表', 'symbolled', 'symbolled', 'symbolling', 'symbols', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (745, 0, 'picture', '/ˈpɪktʃər/', '图片', 'n.图片;照片;电影;图画;描绘;相片;状况;绘画;电视图像;电影院;头脑中的情景', 'pictures', 'v.描述;想象;设想;描写;忆起;显示在照片上;用图片显示', 'pictured', 'pictured', 'picturing', 'pictures', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (746, 0, 'young', '/jʌŋ/', '年轻的;年轻人', 'n.年轻人;幼崽;幼鸟;幼兽', 'youngs', NULL, NULL, NULL, NULL, NULL, 'adj.年轻的;年轻人的;青年的;幼小的;相对年轻的;未成熟的;适合青年人的;由年轻人(或儿童)构成的;岁数不大的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (747, 0, 'rise', '/raɪz/', '升起;上升', 'n.上升;(数量或水平的)增加,提高;增强;加薪;斜坡;工资增长', NULL, 'v.上升;(数量)增加,增长,提高;提高;升起;攀升;增强;站起来;起床;复活;起立;耸立;发酵;起义;凸起;竖起;起源;休会;脸红;刮起来;达到较高水平(或位置);变得更加成功', 'rose', 'risen', 'rising', 'rises', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (748, 0, 'alley', '/ˈæli/', '胡同', 'n.小巷;胡同;(建筑群中间或后面的)小街', 'alleys', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (749, 0, 'neighborhood', '/\'neɪbərˌhʊd/', '街道', 'n.街区;街道', 'neighborhoods', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (750, 0, 'thirst', '/θɜːrst/', '口渴', 'n.口渴;渴望;渴;渴求;干渴;干渴感', 'thirsts', 'v.渴;想喝水', 'thirsted', 'thirsted', 'thirsting', 'thirsts', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (751, 0, 'hawk', '/hɔːk/', '鹰;隼;鹰派', 'n.鹰;隼;主战分子;鹰派分子', 'hawks', 'v.沿街叫卖;咳痰', 'hawked', 'hawked', 'hawking', 'hawks', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (752, 0, 'diet', '/ˈdaɪət/', '饮食', 'n.日常饮食;特种饮食,规定饮食;日常大量接触的东西', 'diets', 'v.进特种饮食,节食', 'dieted', 'dieted', 'dieting', 'diets', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (753, 0, 'willow', '/ˈwɪloʊ/', '柳树', 'n.柳树;柳;柳木;柳木制品', 'willows', 'v.用打棉机打开和清理', 'willowed', 'willowed', 'willowing', 'willows', 'adj.柳的,柳树的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (754, 0, 'strip', '/strɪp/', '条形或条状', 'n.条形或条状;脱衣舞;(报刊上的)连环画;简易机场, 简易跑道;商业街;队服;带状地带(或森林, 水面等);<英>(总称)(尤指足球队员穿的)彩条球衣;航摄带, 条幅式侦察照片;<英>[矿]捣矿机排矿沉淀槽;<英>定期播出的节目;抽掉中脉和大叶脉的烟叶;(美国缅因州的)地方行政小区;<美>减重短程高速汽车赛场(或跑道)', 'strips', 'v.剥夺,夺走;剥去,除去,剥光(或除去)……的外皮;拆开,拆卸;剥去(一层);脱光,脱光……的衣服;(尤指)剥光;(使)(螺丝或齿轮)受损;挤干(牛等)的奶,挤(奶);表演脱衣舞;除去……的不必要细节, 使精练;(子弹出膛时因表面磨损而)不旋转;使变得空无一物,搬走(室内)的家具;为(烟草)去梗,为(烟叶)去中肋;从(某处)拿走所有东西', 'stripped', 'stripped', 'stripping', 'strips', 'adj.脱衣舞的,以脱衣舞招徕的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (755, 0, 'pin', '/pɪn/', '针;固定住', 'n.大头针,别针;(插头的)管脚;(尤指接骨用的)钉,楔,销,栓;(有别针的)徽章;胸针,饰针;<棋>牵制;发夹, 发叉;(高尔夫球场上用以标示洞口的)旗杆;(接骨用的)钢钉;个人身份识别号码,私人密码;(保龄球等的)木瓶,瓶柱;(弦乐器上调弦用的)弦轴,琴轸;小东西,无价值的东西;(手榴弹上的)保险栓,保险针;(人的)双腿;<英旧>(容量为4.5加仑的)小啤酒桶', 'pins', 'v.钉住;使依附于,使系于;<棋>牵制;使不能动弹,按住,钳住;把…归罪于,把…归咎于', 'pinned', 'pinned', 'pinning', 'pins', 'adj.大头针的,别针的,针的;销子的,钉子的,闩的;(皮革)有针头似小点的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (756, 0, 'with', '/wɪð/', '有着', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'prep.具有;和;用;有;以;跟;同;带有;使用;和…在一起;借;与…对立;关于;包括;因为;由于;与…方向一致;由…持有;为…工作;虽然;作为…的成员,为…所雇用;具有,有,带有;在…身上,在…身边;由于,因;在…那里,在…看来', NULL);
INSERT INTO `item` VALUES (757, 0, 'persuade', '/pərˈsweɪd/', '劝说', NULL, NULL, 'v.说服;劝说;使相信;使信服', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (758, 0, 'hydrogen', '/ˈhaɪdrədʒən/', '氢气', 'n.氢气', 'hydrogens', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (759, 0, 'battery', '/ˈbætəri/', '电池', 'n.电池;一组,一系列,一群,一套;殴打罪;排炮;(常用作形容词)层架式鸡笼;(棒球队的)投手和接手', 'batteries', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (760, 0, 'ride', '/raɪd/', '骑马;骑车', 'n.(乘车或骑车的)短途旅程;(乘坐汽车等的)旅行;供乘骑的游乐设施', NULL, 'v.骑;骑马;驾驶;搭乘;穿越,翻越;漂浮;数落;驾驭马匹', 'rode', 'ridden', 'riding', 'rides', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (761, 0, 'put up with', NULL, '忍受', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (762, 0, 'scare', '/sker/', '使害怕;害怕', 'n.恐惧;恐慌;惊吓;惊恐', NULL, 'v.害怕;使害怕;恐惧;使恐惧;惊吓;受惊吓', 'scared', 'scared', 'scaring', 'scares', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (763, 0, 'shake', '/ʃeɪk/', '摇动;握手', 'n.抖动;摇动;颤抖;颤动;哆嗦;战栗', NULL, 'v.摇;握手;摇动;抖动;摇头;动摇;颤抖;抖(掉);(使)颤动;去除;挥拳(威胁);使非常震惊(或烦恼)', 'shook', 'shaken', 'shaking', 'shakes', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (764, 0, 'stress', '/stres/', '强调;使有压力', 'n.应力;强调;压力;重要性;加强(音);紧张;重音;精神压力;心理负担;环境恶劣引起的疾病', 'stresses', 'v.强调;着重;重读;焦虑不安;用重音读', 'stressed', 'stressed', 'stressing', 'stresses', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (765, 0, 'withdraw', '/wɪðˈdrɔː/', '撤回;提款', NULL, NULL, 'v.撤回,撤销;撤回,撤离;(使)退出;撤退;提取;脱离(社会);停止提供;不再给予', 'withdrew', 'withdrawn', 'withdrawing', 'withdraws', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (766, 0, 'hesitate', '/ˈhezɪteɪt/', '犹豫', NULL, NULL, 'v.犹豫;(对某事)迟疑不决;疑虑;顾虑', 'hesitated', 'hesitated', 'hesitating', 'hesitates', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (767, 0, 'bum', '/bʌm/', '废物', 'n.屁股;无业游民;懒汉;流浪乞丐;游手好闲者', 'bums', 'v.乞讨;使灰心;使不安;提出要', 'bummed', 'bummed', 'bumming', 'bums', 'adj.错误的;没用的;劣质的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (768, 0, 'resign', '/rɪˈzaɪn/', '辞职', NULL, NULL, 'v.辞职', 'resigned', 'resigned', 'resigning', 'resigns', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (769, 0, 'incompetence', '/ɪnˈkɑːmpɪtəns/', '不称职;不胜任', 'n.无能;不称职;不胜任', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (770, 0, 'more than', NULL, '大于', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (771, 0, 'less than', NULL, '小于', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (772, 0, 'specification', '/ˌspesɪfɪˈkeɪʃn/', '说明书;细节', 'n.规格;规范;说明书;明细单', 'specifications', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (773, 0, 'look into', NULL, '调查', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (774, 0, 'extreme', '/ɪkˈstriːm/', '极度的', 'n.极端;极度;极限;完全相反的事物;极端不同的感情(或境况, 行为方式等)', 'extremes', NULL, NULL, NULL, NULL, NULL, 'adj.极端的;极度的;严重的;极大的;偏激的;过分的;严厉的;异乎寻常的;远离中心的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (775, 0, 'secret', '/ˈsiːkrət/', '秘密', 'n.秘密;机密;秘诀;奥秘;诀窍;奥妙', 'secrets', NULL, NULL, NULL, NULL, NULL, 'adj.秘密的;保密的;神秘;(指行为与习惯)暗中进行的,未公开的,隐秘的;诡秘;外人不得而知的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (776, 0, 'Secret Service', NULL, '美国特勤局', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (777, 0, 'private', '/ˈpraɪvɪt/', '私有的;普通士兵', 'n.普通士兵', 'privates', NULL, NULL, NULL, NULL, NULL, 'adj.私人的;私有的;私立的;私下的;秘密的;私用的;隐秘的;内心的;僻静的;与工作(或官职)无关的;为一部分人的;不愿吐露心思的;由财产增溢的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (778, 0, 'dedication', '/ˌdedɪˈkeɪʃn/', '献身', 'n.奉献;献身', 'dedications', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (779, 0, 'chief of staff', NULL, '参谋长', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (780, 0, 'Truman', NULL, '杜鲁门', 'n.杜鲁门', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (781, 0, 'Marshall', '/ˈmɑrʃəl/', '马歇尔', '', '', '', '', '', '', '', '', '', '', NULL, '', '');
INSERT INTO `item` VALUES (785, 0, 'The Great Lakes', NULL, '五大湖', 'n.北美五大湖', NULL, '', NULL, NULL, NULL, NULL, '', '', '', NULL, '', NULL);
INSERT INTO `item` VALUES (786, 0, 'autograph', NULL, '亲笔签名', 'n.亲笔签名', 'autographs', 'v.签名', NULL, NULL, NULL, NULL, 'adj.亲笔的', '', '', NULL, '', NULL);
INSERT INTO `item` VALUES (788, 0, 'boilerplate', '/ˈbɔɪlərpleɪt/', '样板;范文', 'n.样板;范文', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (789, 0, 'supervisor', '/ˈsuːpərvaɪzər/', '主管人', 'n.监督人;主管人;指导者', 'supervisors', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (790, 0, 'record', '/ˈrekərd , rɪˈkɔːrd/', '录像;记录', 'n.记录,记载;〈计〉记录(指作为一个单位来处理的一组相连的数据);〈报刊〉纪事,纪录;履历,历史,成绩;案卷,档案;唱片,录制品;(有关过去的)事实;(尤指体育运动中)最高纪录,最佳成绩;审判记录,议事录,记录凭证;明证,纪念品;前科记录;公文书', 'records', 'v.记录,记载;标志,显示,表明,记明;录制,录(音),录(像);(尤指体育上)获得(好成绩);登录,登记,提交(契据等)备案;(自动仪器, 仪表等)自动记录表明,标示;演奏音乐供录制,灌(唱片);〈古〉吟唱,(鸟)啭鸣;发表正式(或法律方面的)声明', 'recorded', 'recorded', 'recording', 'records', 'adj.创纪录的,空前的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (791, 0, 'profound', '/prəˈfaʊnd/', '深切的', 'n.<诗>(空间, 时间等的)深邃;<古>海,深海,海洋;(灵魂的)深处;深奥的事物', NULL, NULL, NULL, NULL, NULL, NULL, 'adj.深切的;深刻的;意义深远的;深邃的;重大的;完全的;彻底的;知识渊博的;玄奥的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (792, 0, 'joy', '/dʒɔɪ/', '喜悦', 'n.快乐;喜悦;乐趣', 'joys', 'v.欢乐', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (793, 0, 'well', '/wel/', '情况良好', 'n.井;水井;电梯井道;楼梯井;(法庭中的)律师席', NULL, 'v.流出;溢出;涌出;冒出;迸发;涌起', NULL, NULL, NULL, NULL, 'adj.状态良好;健康;明智;情况良好', 'adv.好;很可能;相当;容易地;有充分理由;完全地;大大地;彻底地;令人满意地;远远地;全部地;很;对', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (794, 0, 'inform', '/ɪnˈfɔːrm/', '通知', NULL, NULL, 'v.知会;通知;告知;报告;', 'informed', 'informed', 'informing', 'informs', 'adj.不成形的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (795, 0, 'battlefield', '/ˈbætlfiːld/', '战场', 'n.战场;斗争领域;争论主题', 'battlefields', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (796, 0, 'steadfast', '/ˈstedfæst/', '坚定不移的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adj.坚定不移的', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (797, 0, 'tyranny', '/ˈtɪrəni/', '暴政', 'n.暴政;苛政;专政', 'tyrannies', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (798, 0, 'oppression', '/əˈpreʃn/', '压迫', 'n.压迫', 'oppressions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES (799, 0, 'rid', '/rɪd/', '摆脱;消除', NULL, NULL, 'v.摆脱;消除;去掉', 'rid', 'rid', 'ridding', 'rids', 'adj.得到解脱的;摆脱…的', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for item_example
-- ----------------------------
DROP TABLE IF EXISTS `item_example`;
CREATE TABLE `item_example`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'name',
  `examples` varchar(10240) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'examples',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `item_example_ibfk_1`(`name` ASC) USING BTREE,
  CONSTRAINT `item_example_ibfk_1` FOREIGN KEY (`name`) REFERENCES `item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 775 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'item example' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of item_example
-- ----------------------------
INSERT INTO `item_example` VALUES (1, 'prick', '[{\"key\":\"v.扎,扎破\",\"value\":\"Pricking a balloon with a pin.\\n用针[]气球。\"},{\"key\":\"n.混蛋\",\"value\":\"You prick!\\n你这个[]！\"}]');
INSERT INTO `item_example` VALUES (2, 'hit', '[{\"key\":\"v.击中\",\"value\":\"Youtube视频，美国警察执法与匪徒枪战，有警察中弹倒地，求助同事：\\nI\'ve been hit\\n我中弹了\"},{\"key\":\"v.情感上触动和震撼\",\"value\":\"The picture of that one young man in front of tank in Tiananmen Square that to me means Chinese dictatorship. That\'s a wonderful symbol that [hits] me in my heart.\\n天安门广场上那位年轻人站在坦克前的照片对我来说意味着中国独裁。那是一个象征, 它[??]了我。\"},{\"key\":\"v.攻击打击\",\"value\":\"Ukraine hits 15 Russian air defense systems in Crimea.\\n乌克兰[??]了克里米亚15处俄罗斯防空系统.\"},{\"key\":\"v.触碰\",\"value\":\"奥尼尔在全明星赛罚球时，恶搞打板暴扣，其实这违例了，于是主持人说: \\n\\\"You gotta hit the rim\\\"\\n\\\"你的球得[??]篮筐啊\\\"\"}]');
INSERT INTO `item_example` VALUES (3, 'estimate', '[{\"key\":\"v.估计\",\"value\":\"The global ebike market is [estimated] to grow in value to almost US$120 billion by 2030.\\n到2030年，全球电动自行车市场的价值[??]将增长到近1200亿美元。\"}]');
INSERT INTO `item_example` VALUES (4, 'while', '[{\"key\":\"conj.虽然\",\"value\":\"[While] most ebikes on the road today will come with a battery pack, some are riding down the hydrogen fuel-cell cycle path. \\n[??]大多数电动自行车使用的是电池供电，但也有一些电动自行车开始采用氢燃料电池技术。\"}]');
INSERT INTO `item_example` VALUES (5, 'tip', '[{\"key\":\"v.点拨\",\"value\":\"Yao tips it inside.\\n姚明将球点进.\"},{\"key\":\"n.提示\",\"value\":\"quick tip\\n小建议\"},{\"key\":\"n.小费\",\"value\":\"big tipper\\n[??]给得多的人. 例如: 奥尼尔给饭店服务员4000美金[??]\"},{\"key\":\"v.点拨\",\"value\":\"tip-off\\n篮球开球. 意思是双方球员在中线, 同时挑起用手指尖将球[??]到自己一方.\"}]');
INSERT INTO `item_example` VALUES (6, 'regret', '[{\"key\":\"v.后悔\",\"value\":\"I regrets making that decision for the rest of my life.\\n我一生都为这个决定感到[??]。\"}]');
INSERT INTO `item_example` VALUES (7, 'nail', '[{\"key\":\"v.获得,赢得,击中,搞定,完成\",\"value\":\"nailed it!\\n[??]了\"}]');
INSERT INTO `item_example` VALUES (8, 'prime', '[{\"key\":\"adj.优质的\",\"value\":\"prime rib\\n优质牛排\"},{\"key\":\"v.打底漆以增强防护效果\",\"value\":\"Before painting, we need to prime the surface first.\\n在涂漆之前，我们需要先对表面进行[???]处理。\"}]');
INSERT INTO `item_example` VALUES (9, 'down', '[{\"key\":\"adv.向下\",\"value\":\"please sit [down]\\n请坐下\"},{\"key\":\"prep.沿着,顺着,朝着\",\"value\":\"While most ebikes on the road today will come with a battery pack, some are riding [down] the hydrogen fuel-cell cycle path. \\n虽然大多数电动自行车使用的是电池供电，但也有一些电动自行车[??]氢燃料电池赛道\\\"骑行\\\"。(采用氢燃料电池技术)\"}]');
INSERT INTO `item_example` VALUES (10, 'champion', '[{\"key\":\"v.为…而斗争\",\"value\":\"He has always [championed] the cause of gay rights. \\n他一直在[?]争取同性恋者的权利而[??]。\"}]');
INSERT INTO `item_example` VALUES (11, 'tank', '[{\"key\":\"n.存放气液体的箱,槽,罐等大型存储设备\",\"value\":\"In the game of basketball, in life, as a parent – Kobe left nothing in the [tank]. He left it all on the floor.\\n在篮球比赛中，在生活中，作为父母，科比的[??]里没剩下什么(已经竭尽全力了)。他把一切都奉献给了球场。\"},{\"key\":\"n.思想容器\",\"value\":\"think tank\\n智囊[团], 智[库]. 最早出现在20世纪40年代的美国，指代政策研究和战略分析机构\"},{\"key\":\"n.坦克\",\"value\":\"The Leopard 2 is a third generation German main battle [tank].\\n豹 2 是第三代德国主战[坦克]。\"}]');
INSERT INTO `item_example` VALUES (12, 'weave', '[{\"key\":\"v.穿行\",\"value\":\"Though the sun has long risen, \\nsome alleys remain pitch dark as she [weaves] through the slum where she lives in Mumbai’s Goregaon West neighborhood.\\n尽管太阳早已升起，\\n但当她[??]她所住的孟买戈雷甘西区贫民窟时，一些小巷仍然漆黑一片.\"},{\"key\":\"v.编织\",\"value\":\"The strips of willow are [woven] into baskets. \\n用柳条[??]成篮子。\"},{\"key\":\"v.编纂\",\"value\":\"He tried to weave a story that would captivate his audience.\\n他试图编织一个能够吸引观众的故事。\"}]');
INSERT INTO `item_example` VALUES (13, 'pitch', '[{\"key\":\"n.沥青\",\"value\":\"pitch black\\n漆黑;[??]黑\"},{\"key\":\"n.推销\",\"value\":\"What have you thought about this process?\\n对于这个过程, 你有着怎么样的想法?\\n\\nThis process has been everything I\'ve thought and more. And that\'s what I did a few years ago; \\n这个过程是我所想的一切，甚至更多. 我几年前经历过。\\n\\nI put myself in a position to have this process where I can hear teams\' [pitches] and figure out what was the best possible chance for me to ultimately win and to ultimately be happy.\\n我让自己处在一个能听见球队的声音([??]策略)的位置\"}]');
INSERT INTO `item_example` VALUES (14, 'pity', '[{\"key\":\"v.同情\",\"value\":\"I [pity] these two dogs for having to put up with their owners.\\n我很[??]这两只狗，它们不得不忍受它们的主人。\"},{\"key\":\"n.遗憾\",\"value\":\"it\'s a pity.\\n很[??]。\"}]');
INSERT INTO `item_example` VALUES (15, 'give', '[{\"key\":\"v.让步,屈服\",\"value\":\"24年6月普京再次当选总统，受邀访问朝鲜并与金正恩签署《战略互助条约》\\n网友评论道:\\nNo one should [give in to] America\'s pride anymore.\\n没有人应该再[??]于美国的傲慢\"}]');
INSERT INTO `item_example` VALUES (16, 'general', '[{\"key\":\"adj.核心含义:事物内部占多数的\",\"value\":\"general public\\n公众\"},{\"key\":\"adj.核心含义:事物内部占多数的\",\"value\":\"in general\\n一般情况下, 多数情况下\"},{\"key\":\"n.将军\",\"value\":\"金正恩视察军事装备展览会\\n网友评论: \\nLook at his scared generals\\n看看他那些受惊的[??]\"}]');
INSERT INTO `item_example` VALUES (17, 'suspect', '[{\"key\":\"v.怀疑\",\"value\":\"stackoverflow上的一个提问: Video.js - loadeddata event never fires - loadeddata 事件在IOS浏览器上失效.\\n回答者:\\nI suspect you ran into the same issue I did.\\n我怀疑你遇到了和我一样的问题.\"}]');
INSERT INTO `item_example` VALUES (18, 'custody', NULL);
INSERT INTO `item_example` VALUES (19, 'insane', NULL);
INSERT INTO `item_example` VALUES (20, 'polite', NULL);
INSERT INTO `item_example` VALUES (21, 'crush', '[{\"key\":\"v.镇压\",\"value\":\"How China crushed Hong Kong\\n中国是如何镇压香港的\"}]');
INSERT INTO `item_example` VALUES (22, 'attendant', '[{\"key\":\"n.服务人员\",\"value\":\"2024年6月，普京时隔20年再次访问朝鲜，飞机抵达平壤后，普京出仓时有风度地与舱门旁的空乘人员握手。\\n网友：\\nEven shook the flight attendant\'s hand.\\n甚至和空姐握手。\"}]');
INSERT INTO `item_example` VALUES (23, 'waiter', NULL);
INSERT INTO `item_example` VALUES (24, 'whereas', NULL);
INSERT INTO `item_example` VALUES (25, 'gonna', NULL);
INSERT INTO `item_example` VALUES (26, 'dictator', NULL);
INSERT INTO `item_example` VALUES (27, 'dictatorship', NULL);
INSERT INTO `item_example` VALUES (28, 'wag', '[{\"key\":\"v.摇头或手指常表示不赞成\",\"value\":\"美国知名主持人华莱士有摇手指和指人的习惯，在采访江泽民时，风趣地自嘲道：“我正朝着中国总统摇手指”\\nI\'m wagging my finger at the presiden of China.\"}]');
INSERT INTO `item_example` VALUES (29, 'corruption', NULL);
INSERT INTO `item_example` VALUES (30, 'Christian', NULL);
INSERT INTO `item_example` VALUES (31, 'Christianity', NULL);
INSERT INTO `item_example` VALUES (32, 'press', '[{\"key\":\"n.新闻报道\",\"value\":\"freedom of the press\\n新闻自由\"}]');
INSERT INTO `item_example` VALUES (33, 'convinced', NULL);
INSERT INTO `item_example` VALUES (34, 'addict', '[{\"key\":\"v.迷上\",\"value\":\"Youtube 达美乐披萨美女派送员给司机送披萨，一段有意思的对话。\\n网友：\\nI am addicted to this girl. So funny, happy, sexy, beautiful.\\n我迷上了这个女孩。如此有趣、快乐、性感、美丽\"}]');
INSERT INTO `item_example` VALUES (35, 'sail', NULL);
INSERT INTO `item_example` VALUES (36, 'raft', NULL);
INSERT INTO `item_example` VALUES (37, 'craft', '[{\"key\":\"n.技能\",\"value\":\"Youtube视频: 梅威瑟场边观看湖人队比赛，老对手曼尼帕奎奥从其后走过，二位肢体寒暄一二。\\n网友评论道：\\nThese men are both kings of their crafts. RESPECT.\\n这些人都是各自领域的佼佼者。尊重.\"}]');
INSERT INTO `item_example` VALUES (38, 'pack', NULL);
INSERT INTO `item_example` VALUES (39, 'paper', NULL);
INSERT INTO `item_example` VALUES (40, 'specific', NULL);
INSERT INTO `item_example` VALUES (41, 'special', NULL);
INSERT INTO `item_example` VALUES (42, 'staff', '[{\"key\":\"n.军队的全体参谋人员\",\"value\":\"chief of staff\\n总参谋长\"}]');
INSERT INTO `item_example` VALUES (43, 'snake', NULL);
INSERT INTO `item_example` VALUES (44, 'patient', NULL);
INSERT INTO `item_example` VALUES (45, 'parent', NULL);
INSERT INTO `item_example` VALUES (46, 'violent', NULL);
INSERT INTO `item_example` VALUES (47, 'complete', NULL);
INSERT INTO `item_example` VALUES (48, 'rat', NULL);
INSERT INTO `item_example` VALUES (49, 'asset', NULL);
INSERT INTO `item_example` VALUES (50, 'split', '[{\"key\":\"n.下叉\",\"value\":\"Do a Split Exercise.\\n做下劈叉练习\"}]');
INSERT INTO `item_example` VALUES (51, 'much', NULL);
INSERT INTO `item_example` VALUES (52, 'bit', NULL);
INSERT INTO `item_example` VALUES (53, 'leg', NULL);
INSERT INTO `item_example` VALUES (54, 'temp', NULL);
INSERT INTO `item_example` VALUES (55, 'stack', NULL);
INSERT INTO `item_example` VALUES (56, 'tape', NULL);
INSERT INTO `item_example` VALUES (57, 'double', NULL);
INSERT INTO `item_example` VALUES (58, 'concern', NULL);
INSERT INTO `item_example` VALUES (59, 'principle', NULL);
INSERT INTO `item_example` VALUES (60, 'row', NULL);
INSERT INTO `item_example` VALUES (61, 'prove', NULL);
INSERT INTO `item_example` VALUES (62, 'property', NULL);
INSERT INTO `item_example` VALUES (63, 'grape', NULL);
INSERT INTO `item_example` VALUES (64, 'slam', NULL);
INSERT INTO `item_example` VALUES (65, 'certain', NULL);
INSERT INTO `item_example` VALUES (66, 'tip off', NULL);
INSERT INTO `item_example` VALUES (67, 'invite', NULL);
INSERT INTO `item_example` VALUES (68, 'crew', '[{\"key\":\"v.作为船或飞机上的工作人员\",\"value\":\"next-generation crewed fighter.\\n下一代载人战斗机.\"}]');
INSERT INTO `item_example` VALUES (69, 'crowd', NULL);
INSERT INTO `item_example` VALUES (70, 'admin', NULL);
INSERT INTO `item_example` VALUES (71, 'own', NULL);
INSERT INTO `item_example` VALUES (72, 'message', NULL);
INSERT INTO `item_example` VALUES (73, 'perspective', NULL);
INSERT INTO `item_example` VALUES (74, 'tap', NULL);
INSERT INTO `item_example` VALUES (75, 'stab', NULL);
INSERT INTO `item_example` VALUES (76, 'penis', NULL);
INSERT INTO `item_example` VALUES (77, 'yet', NULL);
INSERT INTO `item_example` VALUES (78, 'cheetah', NULL);
INSERT INTO `item_example` VALUES (79, 'as', NULL);
INSERT INTO `item_example` VALUES (80, 'pact', NULL);
INSERT INTO `item_example` VALUES (81, 'crafty', NULL);
INSERT INTO `item_example` VALUES (82, 'cunning', NULL);
INSERT INTO `item_example` VALUES (83, 'would', NULL);
INSERT INTO `item_example` VALUES (84, 'cell', NULL);
INSERT INTO `item_example` VALUES (85, 'fuel-cell', NULL);
INSERT INTO `item_example` VALUES (86, 'ginger', NULL);
INSERT INTO `item_example` VALUES (87, 'garlic', NULL);
INSERT INTO `item_example` VALUES (88, 'green pepper', NULL);
INSERT INTO `item_example` VALUES (89, 'pepper', NULL);
INSERT INTO `item_example` VALUES (90, 'rinse', NULL);
INSERT INTO `item_example` VALUES (91, 'broth', NULL);
INSERT INTO `item_example` VALUES (92, 'spoil', NULL);
INSERT INTO `item_example` VALUES (93, 'stand', NULL);
INSERT INTO `item_example` VALUES (94, 'giraffe', NULL);
INSERT INTO `item_example` VALUES (95, 'insect', NULL);
INSERT INTO `item_example` VALUES (96, 'species', NULL);
INSERT INTO `item_example` VALUES (97, 'kick', NULL);
INSERT INTO `item_example` VALUES (98, 'catfish', NULL);
INSERT INTO `item_example` VALUES (99, 'leopard', NULL);
INSERT INTO `item_example` VALUES (100, 'mountain range', NULL);
INSERT INTO `item_example` VALUES (101, 'chance', NULL);
INSERT INTO `item_example` VALUES (102, 'witness', NULL);
INSERT INTO `item_example` VALUES (103, 'sweep', NULL);
INSERT INTO `item_example` VALUES (104, 'essential', NULL);
INSERT INTO `item_example` VALUES (105, 'one off', NULL);
INSERT INTO `item_example` VALUES (106, 'exorbitant', NULL);
INSERT INTO `item_example` VALUES (107, 'civil', NULL);
INSERT INTO `item_example` VALUES (108, 'lobby', NULL);
INSERT INTO `item_example` VALUES (109, 'massive', NULL);
INSERT INTO `item_example` VALUES (110, 'saddle', NULL);
INSERT INTO `item_example` VALUES (111, 'protein', NULL);
INSERT INTO `item_example` VALUES (112, 'stationary', NULL);
INSERT INTO `item_example` VALUES (113, 'defeat', NULL);
INSERT INTO `item_example` VALUES (114, 'surrender', NULL);
INSERT INTO `item_example` VALUES (115, 'quail', NULL);
INSERT INTO `item_example` VALUES (116, 'venison', NULL);
INSERT INTO `item_example` VALUES (117, 'metrics', NULL);
INSERT INTO `item_example` VALUES (118, 'obesity', NULL);
INSERT INTO `item_example` VALUES (119, 'moderate', NULL);
INSERT INTO `item_example` VALUES (120, 'vast', NULL);
INSERT INTO `item_example` VALUES (121, 'obese', NULL);
INSERT INTO `item_example` VALUES (122, 'the vast majority of', NULL);
INSERT INTO `item_example` VALUES (123, 'satellite', NULL);
INSERT INTO `item_example` VALUES (124, 'sword', NULL);
INSERT INTO `item_example` VALUES (125, 'commentator', NULL);
INSERT INTO `item_example` VALUES (126, 'orbit', NULL);
INSERT INTO `item_example` VALUES (127, 'crucial', NULL);
INSERT INTO `item_example` VALUES (128, 'revenge', NULL);
INSERT INTO `item_example` VALUES (129, 'massage', NULL);
INSERT INTO `item_example` VALUES (130, 'homelessness', NULL);
INSERT INTO `item_example` VALUES (131, 'period', NULL);
INSERT INTO `item_example` VALUES (132, 'sink', NULL);
INSERT INTO `item_example` VALUES (133, 'rock bottom', NULL);
INSERT INTO `item_example` VALUES (134, 'lay', NULL);
INSERT INTO `item_example` VALUES (135, 'prospective', NULL);
INSERT INTO `item_example` VALUES (136, 'admit', '[{\"key\":\"v.认错\",\"value\":\"Youtube 2024 美国民主党大会：\\nI made a mistake that is hard to admit.\\n我犯了一个难以承认的错误.\"}]');
INSERT INTO `item_example` VALUES (137, 'beyond', NULL);
INSERT INTO `item_example` VALUES (138, 'brainwash', NULL);
INSERT INTO `item_example` VALUES (139, 'scam', NULL);
INSERT INTO `item_example` VALUES (140, 'lift', NULL);
INSERT INTO `item_example` VALUES (141, 'hold up', NULL);
INSERT INTO `item_example` VALUES (142, 'exploit', NULL);
INSERT INTO `item_example` VALUES (143, 'owe', NULL);
INSERT INTO `item_example` VALUES (144, 'divorce', NULL);
INSERT INTO `item_example` VALUES (145, 'charm', NULL);
INSERT INTO `item_example` VALUES (146, 'coerce', NULL);
INSERT INTO `item_example` VALUES (147, 'double figures', NULL);
INSERT INTO `item_example` VALUES (148, 'crow', NULL);
INSERT INTO `item_example` VALUES (149, 'nailed it', NULL);
INSERT INTO `item_example` VALUES (150, 'Ip Man', NULL);
INSERT INTO `item_example` VALUES (151, 'ridiculous', NULL);
INSERT INTO `item_example` VALUES (152, 'aid', NULL);
INSERT INTO `item_example` VALUES (153, 'hold on', NULL);
INSERT INTO `item_example` VALUES (154, 'master', NULL);
INSERT INTO `item_example` VALUES (155, 'clutch', NULL);
INSERT INTO `item_example` VALUES (156, 'melt', NULL);
INSERT INTO `item_example` VALUES (157, 'rattlesnake', NULL);
INSERT INTO `item_example` VALUES (158, 'pitbull', NULL);
INSERT INTO `item_example` VALUES (159, 'take off', NULL);
INSERT INTO `item_example` VALUES (160, 'in heat', NULL);
INSERT INTO `item_example` VALUES (161, 'invent', NULL);
INSERT INTO `item_example` VALUES (162, 'obligation', NULL);
INSERT INTO `item_example` VALUES (163, 'Normandy', NULL);
INSERT INTO `item_example` VALUES (164, 'invasion', NULL);
INSERT INTO `item_example` VALUES (165, 'serve', NULL);
INSERT INTO `item_example` VALUES (166, 'anniversary', NULL);
INSERT INTO `item_example` VALUES (167, 'veteran', '[{\"key\":\"adj.老手的\",\"value\":\"People born at North Korea is like starting a game with veteran difficulty.\\n出生在朝鲜的人就像开始一场老手难度的游戏.\"}]');
INSERT INTO `item_example` VALUES (168, 'salute', NULL);
INSERT INTO `item_example` VALUES (169, 'stifle', NULL);
INSERT INTO `item_example` VALUES (170, 'rural', NULL);
INSERT INTO `item_example` VALUES (171, 'persist', NULL);
INSERT INTO `item_example` VALUES (172, 'humbling', NULL);
INSERT INTO `item_example` VALUES (173, 'irony', NULL);
INSERT INTO `item_example` VALUES (174, 'serve as', NULL);
INSERT INTO `item_example` VALUES (175, 'jam', NULL);
INSERT INTO `item_example` VALUES (176, 'blockbuster', NULL);
INSERT INTO `item_example` VALUES (177, 'blitz', NULL);
INSERT INTO `item_example` VALUES (178, 'scrounge', NULL);
INSERT INTO `item_example` VALUES (179, 'wizard', NULL);
INSERT INTO `item_example` VALUES (180, 'bid', NULL);
INSERT INTO `item_example` VALUES (181, 'rock', NULL);
INSERT INTO `item_example` VALUES (182, 'prospect', NULL);
INSERT INTO `item_example` VALUES (183, 'miracle', NULL);
INSERT INTO `item_example` VALUES (184, 'deter', NULL);
INSERT INTO `item_example` VALUES (185, 'occupy', NULL);
INSERT INTO `item_example` VALUES (186, 'annex', NULL);
INSERT INTO `item_example` VALUES (187, 'taboo', NULL);
INSERT INTO `item_example` VALUES (188, 'depot', NULL);
INSERT INTO `item_example` VALUES (189, 'munition', NULL);
INSERT INTO `item_example` VALUES (190, 'tentative', NULL);
INSERT INTO `item_example` VALUES (191, 'grant', NULL);
INSERT INTO `item_example` VALUES (192, 'aerial', NULL);
INSERT INTO `item_example` VALUES (193, 'assault', NULL);
INSERT INTO `item_example` VALUES (194, 'curtain', NULL);
INSERT INTO `item_example` VALUES (195, 'marble', NULL);
INSERT INTO `item_example` VALUES (196, 'heel', NULL);
INSERT INTO `item_example` VALUES (197, 'throw on', NULL);
INSERT INTO `item_example` VALUES (198, 'blazer', NULL);
INSERT INTO `item_example` VALUES (199, 'kilometer', NULL);
INSERT INTO `item_example` VALUES (200, 'shift', NULL);
INSERT INTO `item_example` VALUES (201, 'communal toilet', NULL);
INSERT INTO `item_example` VALUES (202, 'pitch black', NULL);
INSERT INTO `item_example` VALUES (203, 'slum', NULL);
INSERT INTO `item_example` VALUES (204, 'poverty', NULL);
INSERT INTO `item_example` VALUES (205, 'roe', NULL);
INSERT INTO `item_example` VALUES (206, 'crispy', NULL);
INSERT INTO `item_example` VALUES (207, 'legendary', NULL);
INSERT INTO `item_example` VALUES (208, 'legend', NULL);
INSERT INTO `item_example` VALUES (209, 'ammunition', NULL);
INSERT INTO `item_example` VALUES (210, 'logistics', NULL);
INSERT INTO `item_example` VALUES (211, 'rape', NULL);
INSERT INTO `item_example` VALUES (213, 'revolution', NULL);
INSERT INTO `item_example` VALUES (214, 'freeze', NULL);
INSERT INTO `item_example` VALUES (215, 'concrete', NULL);
INSERT INTO `item_example` VALUES (216, 'cobra', NULL);
INSERT INTO `item_example` VALUES (218, 'gotta', NULL);
INSERT INTO `item_example` VALUES (219, 'rifle', NULL);
INSERT INTO `item_example` VALUES (220, 'Cambodia', NULL);
INSERT INTO `item_example` VALUES (221, 'commonplace', NULL);
INSERT INTO `item_example` VALUES (222, 'interest', NULL);
INSERT INTO `item_example` VALUES (223, 'billionaire', NULL);
INSERT INTO `item_example` VALUES (224, 'dump', NULL);
INSERT INTO `item_example` VALUES (225, 'trash', NULL);
INSERT INTO `item_example` VALUES (226, 'balloon', NULL);
INSERT INTO `item_example` VALUES (227, 'destiny', NULL);
INSERT INTO `item_example` VALUES (228, 'Vietnam', NULL);
INSERT INTO `item_example` VALUES (229, 'tits', NULL);
INSERT INTO `item_example` VALUES (230, 'shrimp', NULL);
INSERT INTO `item_example` VALUES (231, 'principal', NULL);
INSERT INTO `item_example` VALUES (232, 'chili', NULL);
INSERT INTO `item_example` VALUES (233, 'despite', NULL);
INSERT INTO `item_example` VALUES (234, 'regime', NULL);
INSERT INTO `item_example` VALUES (235, 'concert', NULL);
INSERT INTO `item_example` VALUES (236, 'conduct', NULL);
INSERT INTO `item_example` VALUES (237, 'punishment', NULL);
INSERT INTO `item_example` VALUES (238, 'campaign', '[{\"key\":\"n.战役\",\"value\":\"The Great patriotic War was one of the important campaigns of World War 2.\\n卫国战争是第二次世界大战的重要战役之一\"}]');
INSERT INTO `item_example` VALUES (239, 'negotiate', NULL);
INSERT INTO `item_example` VALUES (240, 'bruise', NULL);
INSERT INTO `item_example` VALUES (241, 'abduct', NULL);
INSERT INTO `item_example` VALUES (242, 'domestic flight', NULL);
INSERT INTO `item_example` VALUES (243, 'domestic', NULL);
INSERT INTO `item_example` VALUES (244, 'intimidate', NULL);
INSERT INTO `item_example` VALUES (245, 'kick off', NULL);
INSERT INTO `item_example` VALUES (246, 'unselfish', NULL);
INSERT INTO `item_example` VALUES (247, 'headliner', NULL);
INSERT INTO `item_example` VALUES (248, 'turn down', NULL);
INSERT INTO `item_example` VALUES (249, 'franchise', NULL);
INSERT INTO `item_example` VALUES (250, 'look forward to', NULL);
INSERT INTO `item_example` VALUES (251, 'of late', NULL);
INSERT INTO `item_example` VALUES (252, 'doubt', NULL);
INSERT INTO `item_example` VALUES (253, 'punch', NULL);
INSERT INTO `item_example` VALUES (254, 'stick', '[{\"key\":\"v.伸出\",\"value\":\"Please [stick out] your tongue.\\n医生：请[伸出]你的舌头\"},{\"key\":\"v.坚持\",\"value\":\"Youtube视频，在野外，一只豹子朝着一个博主扑来。\\n网友：\\nThe lion heard that round was over and said I will [stick to] my normal diet.\\n狮子听到了那阵枪声，说我会[坚持]我的正常饮食。\"}]');
INSERT INTO `item_example` VALUES (255, 'mimic', NULL);
INSERT INTO `item_example` VALUES (256, 'kitty', NULL);
INSERT INTO `item_example` VALUES (257, 'heaven', NULL);
INSERT INTO `item_example` VALUES (258, 'swift', NULL);
INSERT INTO `item_example` VALUES (259, 'slap', NULL);
INSERT INTO `item_example` VALUES (260, 'delegation', NULL);
INSERT INTO `item_example` VALUES (261, 'fabulous', NULL);
INSERT INTO `item_example` VALUES (262, 'victim', NULL);
INSERT INTO `item_example` VALUES (263, 'shield', NULL);
INSERT INTO `item_example` VALUES (264, 'hostage', NULL);
INSERT INTO `item_example` VALUES (265, 'nonviolent', NULL);
INSERT INTO `item_example` VALUES (266, 'silent', NULL);
INSERT INTO `item_example` VALUES (267, 'tout', NULL);
INSERT INTO `item_example` VALUES (268, 'predict', NULL);
INSERT INTO `item_example` VALUES (269, 'rig', NULL);
INSERT INTO `item_example` VALUES (270, 'acknowledge', NULL);
INSERT INTO `item_example` VALUES (271, 'maverick', NULL);
INSERT INTO `item_example` VALUES (272, 'Arab', NULL);
INSERT INTO `item_example` VALUES (273, 'overlook', NULL);
INSERT INTO `item_example` VALUES (274, 'lag', NULL);
INSERT INTO `item_example` VALUES (275, 'democracy', NULL);
INSERT INTO `item_example` VALUES (276, 'archeologist', NULL);
INSERT INTO `item_example` VALUES (277, 'aspire', NULL);
INSERT INTO `item_example` VALUES (278, 'set out to', NULL);
INSERT INTO `item_example` VALUES (279, 'Moscow', NULL);
INSERT INTO `item_example` VALUES (280, 'ramp', NULL);
INSERT INTO `item_example` VALUES (281, 'pedestrian', NULL);
INSERT INTO `item_example` VALUES (282, 'iceberg', NULL);
INSERT INTO `item_example` VALUES (283, 'bite', NULL);
INSERT INTO `item_example` VALUES (284, 'rescue', NULL);
INSERT INTO `item_example` VALUES (285, 'insurance', NULL);
INSERT INTO `item_example` VALUES (286, 'stamina', NULL);
INSERT INTO `item_example` VALUES (287, 'seal', NULL);
INSERT INTO `item_example` VALUES (288, 'vigorous', NULL);
INSERT INTO `item_example` VALUES (289, 'durian', NULL);
INSERT INTO `item_example` VALUES (290, 'ram', NULL);
INSERT INTO `item_example` VALUES (291, 'leap', NULL);
INSERT INTO `item_example` VALUES (292, 'leap year', NULL);
INSERT INTO `item_example` VALUES (293, 'panorama', NULL);
INSERT INTO `item_example` VALUES (294, 'munch', NULL);
INSERT INTO `item_example` VALUES (295, 'scaffold', NULL);
INSERT INTO `item_example` VALUES (296, 'ramen', '[{\"key\":\"n.拉面\",\"value\":\"instant ramen\\n方便面\"}]');
INSERT INTO `item_example` VALUES (297, 'cuteness', NULL);
INSERT INTO `item_example` VALUES (298, 'bamboo', NULL);
INSERT INTO `item_example` VALUES (299, 'Cambrian Explosion', NULL);
INSERT INTO `item_example` VALUES (300, 'ivy', NULL);
INSERT INTO `item_example` VALUES (301, 'toxin', NULL);
INSERT INTO `item_example` VALUES (302, 'fossil', NULL);
INSERT INTO `item_example` VALUES (303, 'nude', NULL);
INSERT INTO `item_example` VALUES (304, 'naive', NULL);
INSERT INTO `item_example` VALUES (305, 'sauce', NULL);
INSERT INTO `item_example` VALUES (306, 'gear', NULL);
INSERT INTO `item_example` VALUES (307, 'blade', NULL);
INSERT INTO `item_example` VALUES (308, 'earthworm', NULL);
INSERT INTO `item_example` VALUES (309, 'chill', NULL);
INSERT INTO `item_example` VALUES (310, 'as fuck', NULL);
INSERT INTO `item_example` VALUES (311, 'creature', NULL);
INSERT INTO `item_example` VALUES (312, 'immaculate', NULL);
INSERT INTO `item_example` VALUES (313, 'peel', NULL);
INSERT INTO `item_example` VALUES (314, 'wear', NULL);
INSERT INTO `item_example` VALUES (315, 'chainsaw', NULL);
INSERT INTO `item_example` VALUES (316, 'coconut', NULL);
INSERT INTO `item_example` VALUES (317, 'rag', NULL);
INSERT INTO `item_example` VALUES (318, 'grab', NULL);
INSERT INTO `item_example` VALUES (319, 'creepy', NULL);
INSERT INTO `item_example` VALUES (320, 'plumber', NULL);
INSERT INTO `item_example` VALUES (321, 'gorilla', NULL);
INSERT INTO `item_example` VALUES (322, 'mess with', '[{\"key\":\"v.招惹\",\"value\":\"Youtube视频, 乌鸦在鹰的窝里攻击小鹰, 老鹰突然回来, 最终逮到了乌鸦并将其在空中撕碎.\\n网友评论:\\nThis is the fate of anyone who messes with Hawks.\\n这是任何与招惹鹰的人的下场\"}]');
INSERT INTO `item_example` VALUES (323, 'chase', NULL);
INSERT INTO `item_example` VALUES (324, 'fluff', NULL);
INSERT INTO `item_example` VALUES (325, 'keeper', NULL);
INSERT INTO `item_example` VALUES (326, 'penguin', NULL);
INSERT INTO `item_example` VALUES (327, 'smash', NULL);
INSERT INTO `item_example` VALUES (329, 'die', '[{\"key\":\"v.死\",\"value\":\"I\'m dying of thirst.\\n我快渴死了.\"}]');
INSERT INTO `item_example` VALUES (330, 'crossbow', NULL);
INSERT INTO `item_example` VALUES (331, 'slingshot', NULL);
INSERT INTO `item_example` VALUES (332, 'Volkswagen', NULL);
INSERT INTO `item_example` VALUES (333, 'tease', NULL);
INSERT INTO `item_example` VALUES (334, 'strawberry', NULL);
INSERT INTO `item_example` VALUES (335, 'carpenter', NULL);
INSERT INTO `item_example` VALUES (336, 'screw', NULL);
INSERT INTO `item_example` VALUES (337, 'rot', NULL);
INSERT INTO `item_example` VALUES (338, 'hose', NULL);
INSERT INTO `item_example` VALUES (339, 'spit', NULL);
INSERT INTO `item_example` VALUES (340, 'take offense', NULL);
INSERT INTO `item_example` VALUES (341, 'Saudi Arabia', NULL);
INSERT INTO `item_example` VALUES (342, 'warthog', NULL);
INSERT INTO `item_example` VALUES (343, 'zebra', NULL);
INSERT INTO `item_example` VALUES (344, 'kangaroo', NULL);
INSERT INTO `item_example` VALUES (345, 'seagull', NULL);
INSERT INTO `item_example` VALUES (346, 'hypnic jerk', NULL);
INSERT INTO `item_example` VALUES (347, 'bugs', NULL);
INSERT INTO `item_example` VALUES (348, 'the hell', NULL);
INSERT INTO `item_example` VALUES (349, 'hilarious', NULL);
INSERT INTO `item_example` VALUES (350, 'anthem', NULL);
INSERT INTO `item_example` VALUES (351, 'German Shepherd', NULL);
INSERT INTO `item_example` VALUES (352, 'shepherd', NULL);
INSERT INTO `item_example` VALUES (353, 'Hitler', NULL);
INSERT INTO `item_example` VALUES (354, 'Drawing Sword', NULL);
INSERT INTO `item_example` VALUES (355, 'sensation', NULL);
INSERT INTO `item_example` VALUES (356, 'adorable', NULL);
INSERT INTO `item_example` VALUES (357, 'predator', NULL);
INSERT INTO `item_example` VALUES (358, 'wild', NULL);
INSERT INTO `item_example` VALUES (359, 'survivor', NULL);
INSERT INTO `item_example` VALUES (360, 'humble', NULL);
INSERT INTO `item_example` VALUES (361, 'recruit', NULL);
INSERT INTO `item_example` VALUES (362, 'cavalier', NULL);
INSERT INTO `item_example` VALUES (363, 'celebrity', NULL);
INSERT INTO `item_example` VALUES (364, 'Heart Disease', NULL);
INSERT INTO `item_example` VALUES (365, 'cavalry battalion', NULL);
INSERT INTO `item_example` VALUES (366, 'cavalry', NULL);
INSERT INTO `item_example` VALUES (367, 'infantry', NULL);
INSERT INTO `item_example` VALUES (368, 'Bering Strait', NULL);
INSERT INTO `item_example` VALUES (369, 'assert', NULL);
INSERT INTO `item_example` VALUES (370, 'viper', NULL);
INSERT INTO `item_example` VALUES (371, 'ranger', NULL);
INSERT INTO `item_example` VALUES (372, 'compete', NULL);
INSERT INTO `item_example` VALUES (373, 'deserve', NULL);
INSERT INTO `item_example` VALUES (374, 'violet', NULL);
INSERT INTO `item_example` VALUES (375, 'salmon', NULL);
INSERT INTO `item_example` VALUES (376, 'tuna', NULL);
INSERT INTO `item_example` VALUES (377, 'clutch moment', NULL);
INSERT INTO `item_example` VALUES (378, 'a raft of', NULL);
INSERT INTO `item_example` VALUES (379, 'on pins and needles', NULL);
INSERT INTO `item_example` VALUES (380, 'enormous', '[{\"key\":\"adj.巨大的\",\"value\":\"enormous tragedy\\n巨大的悲剧\"}]');
INSERT INTO `item_example` VALUES (381, 'dumb', NULL);
INSERT INTO `item_example` VALUES (382, 'condolence', NULL);
INSERT INTO `item_example` VALUES (383, 'adversary', NULL);
INSERT INTO `item_example` VALUES (384, 'to live in the moment', NULL);
INSERT INTO `item_example` VALUES (385, 'a couple months ago', NULL);
INSERT INTO `item_example` VALUES (386, 'work on', NULL);
INSERT INTO `item_example` VALUES (387, 'admire', NULL);
INSERT INTO `item_example` VALUES (388, 'inspire', NULL);
INSERT INTO `item_example` VALUES (389, 'aggravation', NULL);
INSERT INTO `item_example` VALUES (390, 'inspiration', NULL);
INSERT INTO `item_example` VALUES (391, 'fruit', NULL);
INSERT INTO `item_example` VALUES (392, 'figure', '[{\"key\":\"v.弄清楚\",\"value\":\"I need to figure out how to solve this problem.\\n我需要弄清楚如何解决这个问题。\"},{\"key\":\"n.数字\",\"value\":\"double figures\\n两位数\"},{\"key\":\"n.人或动物的雕像,塑像\",\"value\":\"Giant Godzilla Figure\\n巨型哥斯拉模型\"},{\"key\":\"n.身材\",\"value\":\"nice figure\\n好身材\"}]');
INSERT INTO `item_example` VALUES (393, 'client', NULL);
INSERT INTO `item_example` VALUES (394, 'dedicate himself to', NULL);
INSERT INTO `item_example` VALUES (395, 'hypnotize', NULL);
INSERT INTO `item_example` VALUES (396, 'milkshake', NULL);
INSERT INTO `item_example` VALUES (397, 'rule a country', NULL);
INSERT INTO `item_example` VALUES (398, 'patent', NULL);
INSERT INTO `item_example` VALUES (399, 'nightmare', NULL);
INSERT INTO `item_example` VALUES (400, 'snack', NULL);
INSERT INTO `item_example` VALUES (401, 'closure', NULL);
INSERT INTO `item_example` VALUES (402, 'pudding', NULL);
INSERT INTO `item_example` VALUES (403, 'puzzle', NULL);
INSERT INTO `item_example` VALUES (404, 'bully', NULL);
INSERT INTO `item_example` VALUES (405, 'nerd', NULL);
INSERT INTO `item_example` VALUES (406, 'Santa', NULL);
INSERT INTO `item_example` VALUES (407, 'umbrella', NULL);
INSERT INTO `item_example` VALUES (408, 'euro', NULL);
INSERT INTO `item_example` VALUES (409, 'electric vehicle', NULL);
INSERT INTO `item_example` VALUES (410, 'slash', NULL);
INSERT INTO `item_example` VALUES (411, 'executive', NULL);
INSERT INTO `item_example` VALUES (412, 'diabetes', NULL);
INSERT INTO `item_example` VALUES (413, 'cab', NULL);
INSERT INTO `item_example` VALUES (414, 'manufacturing', NULL);
INSERT INTO `item_example` VALUES (415, 'cherry blossom', NULL);
INSERT INTO `item_example` VALUES (416, 'peninsula', NULL);
INSERT INTO `item_example` VALUES (417, 'money talks bullshit walks', NULL);
INSERT INTO `item_example` VALUES (418, 'powder keg', NULL);
INSERT INTO `item_example` VALUES (419, 'draw charge', NULL);
INSERT INTO `item_example` VALUES (420, 'ballistic missile', NULL);
INSERT INTO `item_example` VALUES (421, 'Iranian', NULL);
INSERT INTO `item_example` VALUES (422, 'Iran', NULL);
INSERT INTO `item_example` VALUES (423, 'locker room', NULL);
INSERT INTO `item_example` VALUES (424, 'mankind', NULL);
INSERT INTO `item_example` VALUES (425, 'ceasefire', NULL);
INSERT INTO `item_example` VALUES (426, 'religion', NULL);
INSERT INTO `item_example` VALUES (427, 'Jew', NULL);
INSERT INTO `item_example` VALUES (428, 'excusable', NULL);
INSERT INTO `item_example` VALUES (429, 'chuck', NULL);
INSERT INTO `item_example` VALUES (430, 'underestimate', NULL);
INSERT INTO `item_example` VALUES (431, 'astronaut', NULL);
INSERT INTO `item_example` VALUES (432, 'mutual respect', NULL);
INSERT INTO `item_example` VALUES (433, 'adult', NULL);
INSERT INTO `item_example` VALUES (434, 'over-reliant', NULL);
INSERT INTO `item_example` VALUES (435, 'decouple from', NULL);
INSERT INTO `item_example` VALUES (437, 'chubby', NULL);
INSERT INTO `item_example` VALUES (439, 'dont panic', NULL);
INSERT INTO `item_example` VALUES (440, 'blue collar', NULL);
INSERT INTO `item_example` VALUES (441, 'glucose', NULL);
INSERT INTO `item_example` VALUES (442, 'Belt and Road', NULL);
INSERT INTO `item_example` VALUES (443, 'mess up', NULL);
INSERT INTO `item_example` VALUES (444, 'abstain from alcohol', NULL);
INSERT INTO `item_example` VALUES (445, 'puppy', NULL);
INSERT INTO `item_example` VALUES (446, 'nuisance', '[{\"key\":\"n.骚扰\",\"value\":\"nuisance call\\n骚扰电话\"}]');
INSERT INTO `item_example` VALUES (447, 'continent', NULL);
INSERT INTO `item_example` VALUES (448, 'lettuce', NULL);
INSERT INTO `item_example` VALUES (449, 'Roman', NULL);
INSERT INTO `item_example` VALUES (450, 'military', NULL);
INSERT INTO `item_example` VALUES (451, 'infrastructure', NULL);
INSERT INTO `item_example` VALUES (453, 'big deal', NULL);
INSERT INTO `item_example` VALUES (454, 'betray', NULL);
INSERT INTO `item_example` VALUES (455, 'collar', NULL);
INSERT INTO `item_example` VALUES (456, 'belt', NULL);
INSERT INTO `item_example` VALUES (457, 'stuff', NULL);
INSERT INTO `item_example` VALUES (458, 'billboard', NULL);
INSERT INTO `item_example` VALUES (459, 'panic', NULL);
INSERT INTO `item_example` VALUES (460, 'shoal', NULL);
INSERT INTO `item_example` VALUES (461, 'alternative', NULL);
INSERT INTO `item_example` VALUES (462, 'deaf', NULL);
INSERT INTO `item_example` VALUES (463, 'bodyguard', NULL);
INSERT INTO `item_example` VALUES (464, 'Jesus', NULL);
INSERT INTO `item_example` VALUES (465, 'stroke', '[{\"key\":\"v.摩挲(头, 脸, 皮毛)\",\"value\":\"stroke a cat\\n撸猫\"}]');
INSERT INTO `item_example` VALUES (466, 'mess', NULL);
INSERT INTO `item_example` VALUES (468, 'integral', NULL);
INSERT INTO `item_example` VALUES (469, 'exclusive', NULL);
INSERT INTO `item_example` VALUES (470, 'vessel', NULL);
INSERT INTO `item_example` VALUES (471, 'decouple', NULL);
INSERT INTO `item_example` VALUES (472, 'reliant', NULL);
INSERT INTO `item_example` VALUES (473, 'Philippines', NULL);
INSERT INTO `item_example` VALUES (474, 'Philippine', NULL);
INSERT INTO `item_example` VALUES (475, 'reef', NULL);
INSERT INTO `item_example` VALUES (476, 'shoreline', NULL);
INSERT INTO `item_example` VALUES (477, 'Manila', NULL);
INSERT INTO `item_example` VALUES (478, 'abstain', NULL);
INSERT INTO `item_example` VALUES (479, 'sailor', NULL);
INSERT INTO `item_example` VALUES (480, 'resupply', NULL);
INSERT INTO `item_example` VALUES (481, 'draw', NULL);
INSERT INTO `item_example` VALUES (482, 'drone', NULL);
INSERT INTO `item_example` VALUES (483, 'waitress', NULL);
INSERT INTO `item_example` VALUES (484, 'school', '[{\"key\":\"n.学派,流派\",\"value\":\"一段Youtube篮球训练视频中，前森林狼球星，现凯尔特主教，人称三头怪的卡塞尔，正在向杰伦布朗传授技巧:\\n网友评论道:\\nThis is why you should not underestimate [old school].\\nLots of current players learn from them.\\n这就是为什么你不应该低估老派球员。\\n许多现役球员都向他们学习。\"}]');
INSERT INTO `item_example` VALUES (485, 'board', NULL);
INSERT INTO `item_example` VALUES (486, 'vinegar', NULL);
INSERT INTO `item_example` VALUES (487, 'crack', '[{\"key\":\"v.使大笑\",\"value\":\"Youtube搞笑视频，中国两条金毛，一条总是四脚朝天躺在沙发上睡觉。\\n网友：\\nDog in the background [cracks] me up every time.\\n背景里的狗每次都让我开怀大笑\"}]');
INSERT INTO `item_example` VALUES (488, 'propose', '[{\"key\":\"v.求婚\",\"value\":\"Youtube视频，美国街头篮球斗牛，一人差点给另一个晃倒。\\n网友评论:\\nBro almost got down on his knees and proposed to someone in the crowd.\\n兄弟差点跪下向人群中的某人求婚的。\"}]');
INSERT INTO `item_example` VALUES (489, 'on', '[{\"key\":\"prep.就…或关于…\",\"value\":\"President Biden on Trump rally shooting addresses the nation.\\n拜登总统就特朗普集会枪击事件发表全国讲话\"},{\"key\":\"prep.由…支撑着\",\"value\":\"Youtube视频，美国街头篮球斗牛，一人差点给另一个晃倒。\\n网友评论:\\nBro almost got down [on] his knees and proposed to someone in the crowd.\\n兄弟差点跪下向人群中的某人求婚的。\"}]');
INSERT INTO `item_example` VALUES (490, 'destabilize', NULL);
INSERT INTO `item_example` VALUES (491, 'restraint', NULL);
INSERT INTO `item_example` VALUES (493, 'restrict', NULL);
INSERT INTO `item_example` VALUES (494, 'frog', NULL);
INSERT INTO `item_example` VALUES (495, 'aside', '[{\"key\":\"adv.用于名词后,除…以外,抛开...不说\",\"value\":\"Jackie Chan is underappreciated as a martial artist. All his acting aside, that dude is a dynamo.\\n成龙作为武术家被低估了。除了演技之外，他是个精力充沛的人。\"}]');
INSERT INTO `item_example` VALUES (496, 'hardy', NULL);
INSERT INTO `item_example` VALUES (497, 'dude', NULL);
INSERT INTO `item_example` VALUES (498, 'grandson', NULL);
INSERT INTO `item_example` VALUES (499, 'baboon', NULL);
INSERT INTO `item_example` VALUES (500, 'spot', NULL);
INSERT INTO `item_example` VALUES (501, 'spotty', '[{\"key\":\"adj.劣迹斑斑的\",\"value\":\"Joe Biden’s spotty debate performance immediately triggered new questions from worried Democrats about whether he would leave the presidential race.\\n乔·拜登在辩论中表现不佳，立即引发了民主党人的担忧，他们质疑他是否会退出总统竞选。\"}]');
INSERT INTO `item_example` VALUES (502, 'debate', NULL);
INSERT INTO `item_example` VALUES (503, 'overwhelm', NULL);
INSERT INTO `item_example` VALUES (504, 'overwhelmed', '[{\"key\":\"adj.压力山大的;不知所措的\",\"value\":\"Tips for feeling overwhelmed and stressed.\\n应对不知所措和压力的技巧.\"}]');
INSERT INTO `item_example` VALUES (505, 'overwhelming', NULL);
INSERT INTO `item_example` VALUES (506, 'nominate', NULL);
INSERT INTO `item_example` VALUES (507, 'even', NULL);
INSERT INTO `item_example` VALUES (508, 'bow', '[{\"key\":\"v.让出,让步,屈服\",\"value\":\"Even after President Lyndon Johnson [bowed out of] the presidential race that year, recognizing his fading popularity and opposition to the war in Vietnam, Humphrey represented a continuation of Johnson’s Vietnam policy.\\n即使在林登·约翰逊总统退出当年的总统竞选后，他意识到自己人气下降，并反对越南战争，汉弗莱仍然代表着约翰逊越南政策的延续.\"}]');
INSERT INTO `item_example` VALUES (509, 'clash', '[{\"key\":\"v.冲突\",\"value\":\"Violence broke out when protesters clashed with police as Humphrey accepted the nomination.\\n当汉弗莱接受提名时，抗议者与警察发生了冲突，引发了暴力事件。\"}]');
INSERT INTO `item_example` VALUES (510, 'lesson', NULL);
INSERT INTO `item_example` VALUES (511, 'rival', NULL);
INSERT INTO `item_example` VALUES (512, 'just', '[{\"key\":\"adv.时间-刚刚\",\"value\":\"Youtube 四川一个博主拿出一块黑乎乎的腊肉，煮了切了吃了一块。\\n外国网友评论：\\nBro just ate petrified wood.\\n兄弟刚刚吃了木化石.\"}]');
INSERT INTO `item_example` VALUES (513, 'prank', NULL);
INSERT INTO `item_example` VALUES (514, 'uppercut', NULL);
INSERT INTO `item_example` VALUES (515, 'jab', NULL);
INSERT INTO `item_example` VALUES (516, 'release', NULL);
INSERT INTO `item_example` VALUES (517, 'wage', '[{\"key\":\"v.继续战斗或竞选\",\"value\":\"Biden [wages] desperate bid to save his campaign.\\n拜登拼命挽救竞选活动.\"}]');
INSERT INTO `item_example` VALUES (518, 'desperate', '[{\"key\":\"adj.孤注一掷的\",\"value\":\"Biden [wages] desperate bid to save his campaign.\\n拜登拼命挽救竞选活动.\"}]');
INSERT INTO `item_example` VALUES (519, 'adaptive', NULL);
INSERT INTO `item_example` VALUES (520, 'adapter', NULL);
INSERT INTO `item_example` VALUES (521, 'shred', NULL);
INSERT INTO `item_example` VALUES (522, 'for good', '[{\"key\":\"adv.永远地\",\"value\":\"Why your cat shreds the sofa – and how to get them to stop for good.\\n为什么你的猫会撕碎沙发——以及如何让它们永远停止这种行为\"}]');
INSERT INTO `item_example` VALUES (523, 'feline', NULL);
INSERT INTO `item_example` VALUES (524, 'company', '[{\"key\":\"n.陪伴\",\"value\":\"While we may love feline company, there\'s a lot we don\'t understand about their needs.\\n虽然我们可能喜欢猫科动物的陪伴，但我们对它们的需求还有很多不了解。\"}]');
INSERT INTO `item_example` VALUES (525, 'life', NULL);
INSERT INTO `item_example` VALUES (527, 'furniture', NULL);
INSERT INTO `item_example` VALUES (528, 'scratch', NULL);
INSERT INTO `item_example` VALUES (529, 'delve', '[{\"key\":\"v.深入研究\",\"value\":\"Now, a new study delves deep into the domestic lives of cat families to find out just why furniture is being scratched up and how to actually prevent it.\\n现在，一项新的研究深入探讨了猫家庭的家庭生活，以找出家具被刮坏的原因以及如何真正防止这种情况。\"}]');
INSERT INTO `item_example` VALUES (530, 'household', NULL);
INSERT INTO `item_example` VALUES (531, 'assess', '[{\"key\":\"v.评估\",\"value\":\"It also assessed frequency and intensity of unwanted scratching behaviors, which was then evaluated using a combined scratching index and the cats divided into groups based on these behaviors.\\n它还评估了不必要的抓挠行为的频率和强度，然后作为组合抓挠指数进行评估，并根据这些行为将猫分成几组。\"}]');
INSERT INTO `item_example` VALUES (532, 'index', '[{\"key\":\"n.物价和工资等的指数,指标\",\"value\":\"It also assessed frequency and intensity of unwanted scratching behaviors, which was then evaluated using a combined scratching index and the cats divided into groups based on these behaviors.\\n它还评估了不必要的抓挠行为的频率和强度，然后作为组合抓挠指数进行评估，并根据这些行为将猫分成几组。\"},{\"key\":\"n.物价和工资等的指数,指标\",\"value\":\"Producer Price Index (PPI)\\n工业品出厂价格指数\"}]');
INSERT INTO `item_example` VALUES (533, 'qualify', '[{\"key\":\"v.取得资格或学历\",\"value\":\"World Cup Qualifying\\n世界杯资格赛\"},{\"key\":\"v.具有资格\",\"value\":\"Youtube一段视频介绍了普京的保镖专业性:\\n网友:\\nAs Putin used to be KGB chief, you can imagine how qualified he is to choose a bodyguard.\\n普京曾担任过克格勃头子，他非常有资格, 在选保镖方面.\"}]');
INSERT INTO `item_example` VALUES (534, 'lad', NULL);
INSERT INTO `item_example` VALUES (535, 'sneeze', '[{\"key\":\"v.打喷嚏\",\"value\":\"Youtube一段视频介绍了普京的保镖专业性:\\n网友:\\nDon\'t sneeze when this guy is around, you\'ll regret it.\\n当这个家伙在你身边时不要打喷嚏，你会后悔的\"}]');
INSERT INTO `item_example` VALUES (536, 'gangster', '[{\"key\":\"n.黑社会\",\"value\":\"Youbute视频, 普京出席某国际峰会, 落座时向马克龙握手, 却忽视英国国王查尔斯.\\n网友评论:\\nBro is real gangsta.\\n兄弟是真正的黑帮\"}]');
INSERT INTO `item_example` VALUES (537, 'fate', '[{\"key\":\"n.命中注定的坏事\",\"value\":\"Youtube视频, 乌鸦在鹰的窝里攻击小鹰, 老鹰突然回来, 最终逮到了乌鸦并将其在空中撕碎.\\n网友评论:\\nThis is the fate of anyone who messes with Hawks.\\n这是任何与招惹鹰的人的下场\"}]');
INSERT INTO `item_example` VALUES (538, 'violate', '[{\"key\":\"v.违反\",\"value\":\"2024.7.5日 CNN 举办的 特朗普与拜登的辩论会：\\nWhat does Trump say to voters who believe he [violated] his oath of office on January 6 and worry he will do it again?\\n对于那些认为特朗普违背了 1 月 6 日的就职誓言并担心他会再次这么做的选民，特朗普会说些什么呢？\"}]');
INSERT INTO `item_example` VALUES (539, 'oath', '[{\"key\":\"n.誓言\",\"value\":\"2024.7.5日 CNN 举办的 特朗普与拜登的辩论会：\\nWhat does Trump say to voters who believe he violated his [oath of office] on January 6 and worry he will do it again?\\n对于那些认为特朗普违背了 1 月 6 日的[就职誓言]并担心他会再次这么做的选民，特朗普会说些什么呢？\"}]');
INSERT INTO `item_example` VALUES (540, 'globefish', NULL);
INSERT INTO `item_example` VALUES (541, 'crayfish', NULL);
INSERT INTO `item_example` VALUES (542, 'beat', NULL);
INSERT INTO `item_example` VALUES (543, 'cane', '[{\"key\":\"n.竹或甘蔗的茎秆\",\"value\":\"sugar cane\\n甘蔗\"}]');
INSERT INTO `item_example` VALUES (544, 'pole', '[{\"key\":\"n.杆子\",\"value\":\"fishing pole\\n钓鱼竿\"}]');
INSERT INTO `item_example` VALUES (545, 'taunt', '[{\"key\":\"v.讽刺\",\"value\":\"Russ taunts mavericks crowd after flagrant foul.\\n威斯布鲁克在恶意犯规后嘲讽小牛队球迷.\"}]');
INSERT INTO `item_example` VALUES (546, 'sibling', NULL);
INSERT INTO `item_example` VALUES (547, 'Belarus', NULL);
INSERT INTO `item_example` VALUES (548, 'daughter', NULL);
INSERT INTO `item_example` VALUES (549, 'rarely', '[{\"key\":\"adv.很少\",\"value\":\"And I admired him because his passion, you rarely see someone who is looking and trying to improve each and every day, not just in sports,  but as a parent, as a husband.\\n我钦佩他，因为他的热情，你很少看到有人每天都在寻求并努力进步，不仅在运动方面，而且作为父母，作为丈夫。\"}]');
INSERT INTO `item_example` VALUES (550, 'roster', NULL);
INSERT INTO `item_example` VALUES (551, 'orangutan', NULL);
INSERT INTO `item_example` VALUES (552, 'beg', '[{\"key\":\"v.乞求\",\"value\":\"If you have to beg someone, you would go get it.\\n如果你想求人办事，你就得研究怎么去做。\"}]');
INSERT INTO `item_example` VALUES (553, 'grateful', '[{\"key\":\"adj.在书信或正式场合表达感激之意\",\"value\":\"I\'m grateful to Vanessa and the Bryant family for the opportunity to speak today.\\n我很感谢瓦妮莎和科比家族给我今天发言的机会\"}]');
INSERT INTO `item_example` VALUES (554, 'honor', '[{\"key\":\"v.纪念\",\"value\":\"I\'m grateful to be here to honor Gigi and celebrate the gifts that Kobe gave us all .\\n我很感激能在这里纪念吉吉，庆祝科比给我们所有人的礼物.\"}]');
INSERT INTO `item_example` VALUES (555, 'skull', '[{\"key\":\"n.颅骨\",\"value\":\"Youtuber视频，一家人在动物园水池旁喂河马南瓜。\\n\\n网友评论1：\\nthis is simultaneously adorable and absolutely terrifying.\\n这既可爱又令人恐惧。\\n\\n网友评论2：\\nImage he can crush the skull like nothing!\\n想象一下他可以轻而易举地粉碎头骨！\"}]');
INSERT INTO `item_example` VALUES (556, 'proverb', NULL);
INSERT INTO `item_example` VALUES (557, 'fart', '[{\"key\":\"v.放屁\",\"value\":\"Youtube 男子举牌站在女友床边，等她醒来求婚。结果女优醒了就放了个响屁，男子撕碎表白牌子，撅了吉他，转身离开。\\n网友评论：\\nThe dude just walked away like he never farted in his life.\\n那家伙就走开了，就像他这辈子从来没有放过屁一样。\"}]');
INSERT INTO `item_example` VALUES (558, 'warehouse', NULL);
INSERT INTO `item_example` VALUES (559, 'address', '[{\"key\":\"v.定位并解决问题\",\"value\":\"Warning: Please ensure that you address any authorization issues related to the dataset on your own.\\n警告：请确保您自行解决与数据集相关的任何授权问题。\"}]');
INSERT INTO `item_example` VALUES (560, 'convince', NULL);
INSERT INTO `item_example` VALUES (561, 'celebrate', '[{\"key\":\"v.歌颂\",\"value\":\"I\'m grateful to be here to honor Gigi and celebrate the gifts that Kobe gave us all.\\n我很感激能在这里纪念吉吉，歌颂科比给我们所有人的礼物\"}]');
INSERT INTO `item_example` VALUES (562, 'floor', '[{\"key\":\"n.地板\",\"value\":\"In the game of basketball, in life, as a parent – Kobe left nothing in the tank. He left it all on the floor.\\n在篮球比赛中，在生活中，作为父母，科比已经竭尽全力了。他把一切都奉献给了球场。\"}]');
INSERT INTO `item_example` VALUES (563, 'comparison', '[{\"key\":\"n.比较\",\"value\":\"Everyone always wanted to talk about the comparisons between he and I.  I just wanted to talk about Kobe.\\n总有人想拿我和他作比较，我只想谈谈科比。\"}]');
INSERT INTO `item_example` VALUES (564, 'tend', '[{\"key\":\"v.倾向\",\"value\":\"You know all of us have brothers and sisters, little brothers, little sisters,  who for whatever reason always tend to get in your stuff, your closet, your shoes, everything. \\n你知道我们每个人都有兄弟姐妹、弟弟或妹妹，他们无论出于什么原因总是会乱动你的东西，你的衣柜、你的鞋子，所有的东西。\"}]');
INSERT INTO `item_example` VALUES (565, 'get', '[{\"key\":\"v.到达,离开,沿…移动,艰难地移动\",\"value\":\"get over here\\n到这边来\"},{\"key\":\"v.达到,进入某种状态\",\"value\":\"You know all of us have brothers and sisters, little brothers, little sisters,  who for whatever reason always tend to get in your stuff, your closet, your shoes, everything. \\n你知道我们每个人都有兄弟姐妹、弟弟或妹妹，他们无论出于什么原因总是会乱动你的东西，你的衣柜、你的鞋子，所有的东西。\"}]');
INSERT INTO `item_example` VALUES (566, 'embark', '[{\"key\":\"v.踏上\",\"value\":\"they\'re wanting to know every little detail about life that they were about to embark on.\\n他们想知道即将开始的生活的每一个细节。\"}]');
INSERT INTO `item_example` VALUES (567, 'about', '[{\"key\":\"adj.即将的,快要的\",\"value\":\"they\'re wanting to know every little detail about life that they were about to embark on.\\n他们想要了解即将开始的生活的每一个细节。\"}]');
INSERT INTO `item_example` VALUES (568, 'text', '[{\"key\":\"v.发短信\",\"value\":\"He used to call me, text me, 11:30, 2:30, 3 o\'clock in the morning, talking about post-up moves, footwork, and sometimes, the triangle. \\n他常常在上午 11 点半、2 点半、3 点给我打电话、发短信，讨论背身单打动作、脚步动作，有时还有三角进攻。\"}]');
INSERT INTO `item_example` VALUES (569, 'offer', '[{\"key\":\"v.提供,给予\",\"value\":\"I also want to offer our condolences and support to all the families affected by this enormous tragedy.\\n我还想向所有受这场巨大悲剧影响的家庭表示哀悼和支持。\"}]');
INSERT INTO `item_example` VALUES (570, 'tragedy', NULL);
INSERT INTO `item_example` VALUES (571, 'prayer', '[{\"key\":\"n.祈祷,祷告\",\"value\":\"To Vanessa, Natalia, Bianka, Capri, my wife and I will keep you close in our hearts and our prayers.\\n致 Vanessa、Natalia、Bianka、Capri，我和我的妻子将把你们放在我们的心中，为你们祈祷\"}]');
INSERT INTO `item_example` VALUES (572, 'retirement', NULL);
INSERT INTO `item_example` VALUES (573, 'arena', NULL);
INSERT INTO `item_example` VALUES (574, 'globe', NULL);
INSERT INTO `item_example` VALUES (575, 'grandparent', NULL);
INSERT INTO `item_example` VALUES (576, 'conversation', '[{\"key\":\"n.非正式的对话\",\"value\":\"As we grew up in life, we rarely have friends that we can have conversations like that.\\n随着我们逐渐长大，我们很少有可以这样交谈的朋友。\"}]');
INSERT INTO `item_example` VALUES (577, 'ass', NULL);
INSERT INTO `item_example` VALUES (578, 'butt', NULL);
INSERT INTO `item_example` VALUES (579, 'closet', NULL);
INSERT INTO `item_example` VALUES (580, 'live', '[{\"key\":\"v.居住\",\"value\":\"Where do you live?\\n你住在哪?\\n\\nI live in Fengtai District.\\n我住丰台区.\"},{\"key\":\"v.生存,活着,生活\",\"value\":\"I will live with the memories of knowing that I had a little brother and I tried to help in every way I could.\\n我会永远记住我有一个小弟弟，曾经我尽我所能帮过他。\"}]');
INSERT INTO `item_example` VALUES (581, 'luxury', NULL);
INSERT INTO `item_example` VALUES (582, 'political', NULL);
INSERT INTO `item_example` VALUES (583, 'portrait', '[{\"key\":\"n.画像\",\"value\":\"Kim Jong Un Portrait-2.jpg\\n金正恩画像-2.jpg\"}]');
INSERT INTO `item_example` VALUES (584, 'supreme', '[{\"key\":\"adj.级别或地位最高的\",\"value\":\"Supreme Leader of North Korea Kim Jong\\n朝鲜最高领导人金正恩\"}]');
INSERT INTO `item_example` VALUES (585, 'hell', NULL);
INSERT INTO `item_example` VALUES (586, 'wallet', NULL);
INSERT INTO `item_example` VALUES (587, 'parade', '[{\"key\":\"n.游行\",\"value\":\"Putin and Kim Jong Un Ride Through North Korea Military Parade.\\n普京与金正恩乘坐军车参加朝鲜阅兵式\"}]');
INSERT INTO `item_example` VALUES (588, 'centimeter', NULL);
INSERT INTO `item_example` VALUES (589, 'engage', '[{\"key\":\"v.参与\",\"value\":\"红色警戒中的无畏级驱逐舰在移动时，会发出口令：\\nmain engines engaged\\n主发动机运转\"},{\"key\":\"v.订婚\",\"value\":\"an engaged couple\\n订婚夫妇\"}]');
INSERT INTO `item_example` VALUES (590, 'claim', '[{\"key\":\"v.声称\",\"value\":\"I always thought Java uses pass-by-reference. However, I read a blog post which claims that Java uses pass-by-value.\\n我一直以为 Java 使用按引用传递。然而，我读到一篇博客文章声称 Java 使用按值传递。\"}]');
INSERT INTO `item_example` VALUES (591, 'annotate', NULL);
INSERT INTO `item_example` VALUES (592, 'swap', '[{\"key\":\"v.替换\",\"value\":\"Li, 27, is part of a growing base of Chinese workers swapping high-pressure office jobs for flexible blue-collar work.\\n27 岁的李先生是中国越来越多放弃高压办公室工作、选择灵活蓝领工作的工人之一。\"},{\"key\":\"n.交换\",\"value\":\"Wife Swap\\n换妻\"}]');
INSERT INTO `item_example` VALUES (593, 'frankly', NULL);
INSERT INTO `item_example` VALUES (594, 'contest', '[{\"key\":\"n.竞赛\",\"value\":\"Three-Point Contest\\nNBA 三分球大赛\"},{\"key\":\"n.竞赛\",\"value\":\"global maths contest\\n全球数学竞赛\"}]');
INSERT INTO `item_example` VALUES (595, 'elite', NULL);
INSERT INTO `item_example` VALUES (596, 'camp', '[{\"key\":\"n.营地\",\"value\":\"Steve Kerr Reacts to Klay Thompson Leaving Golden State for Dallas Mavs & USA Basketball Camp.\\n史蒂夫·科尔对克莱·汤普森离开金州勇士队前往达拉斯小牛队和美国篮球训练营的回应\"}]');
INSERT INTO `item_example` VALUES (597, 'submarine', NULL);
INSERT INTO `item_example` VALUES (598, 'cocaine', NULL);
INSERT INTO `item_example` VALUES (599, 'bucket', NULL);
INSERT INTO `item_example` VALUES (600, 'manner', '[{\"key\":\"n.礼貌\",\"value\":\"Youtuber Maori Blue的狗狗吃饭很乖，网友评论：\\nThis dog has more manners than most of my friends.\\n这只狗比我的大多数朋友都更有礼貌.\"}]');
INSERT INTO `item_example` VALUES (601, 'charity', NULL);
INSERT INTO `item_example` VALUES (602, 'enhance', NULL);
INSERT INTO `item_example` VALUES (603, 'cock', NULL);
INSERT INTO `item_example` VALUES (604, 'cheat', '[{\"key\":\"v.不忠或不贞\",\"value\":\"cheating with a teammate\'s wife\\n与队友的妻子出轨\"}]');
INSERT INTO `item_example` VALUES (605, 'powder', NULL);
INSERT INTO `item_example` VALUES (606, 'drill', '[{\"key\":\"v.钻,打孔\",\"value\":\"drill it\\n将球打进\"}]');
INSERT INTO `item_example` VALUES (607, 'lineup', NULL);
INSERT INTO `item_example` VALUES (608, 'present', '[{\"key\":\"n.展现\",\"value\":\"Youtube 知名二pitbull博主。\\n网友评论：\\nThe dog doesn\'t care about the presentation, he just wants to eat.\\n这只狗不关系给它吃什么（给它展现什么），它只是想吃。\"},{\"key\":\"v.出现\",\"value\":\"...sport videos present additional challenges caused by camera movement and fast-moving objects and players.\\n描述了AI在处理其他视频的过程，而在体育领域出现了额外的挑战，这些挑战由摄像机移动和快速移动的物体和球员产生的。\"}]');
INSERT INTO `item_example` VALUES (609, 'represent', NULL);
INSERT INTO `item_example` VALUES (610, 'dribble', NULL);
INSERT INTO `item_example` VALUES (611, 'pole vault', NULL);
INSERT INTO `item_example` VALUES (612, 'ever', '[{\"key\":\"adv.任何时候\",\"value\":\"Titanic will always be one of the legendary movie ever.\\n《泰坦尼克号》永远是一部传奇电影之一。\"}]');
INSERT INTO `item_example` VALUES (613, 'squirrel', NULL);
INSERT INTO `item_example` VALUES (614, 'president', NULL);
INSERT INTO `item_example` VALUES (615, 'deer', NULL);
INSERT INTO `item_example` VALUES (616, 'tongue', NULL);
INSERT INTO `item_example` VALUES (617, 'dear', NULL);
INSERT INTO `item_example` VALUES (618, 'thief', '[{\"key\":\"n.小偷\",\"value\":\"Youtube视频，博主放了一个背包，里面装满香蕉和面包，假装走开了。来了许多猴子开始翻包。网友：\\nFirst monkey was an experienced thief.\\n第一只猴子是一个经验丰富的小偷.\"}]');
INSERT INTO `item_example` VALUES (619, 'fracture', NULL);
INSERT INTO `item_example` VALUES (620, 'sniper', NULL);
INSERT INTO `item_example` VALUES (621, 'assassination', '[{\"key\":\"n.暗杀\",\"value\":\"Shooting was an assassination attempt against Trump.\\n枪击事件是针对特朗普的一次暗杀行动。\"}]');
INSERT INTO `item_example` VALUES (622, 'crawl', NULL);
INSERT INTO `item_example` VALUES (623, 'deliberate', '[{\"key\":\"adj.故意的\",\"value\":\"Extreme incompetence or it was deliberate.\\nEither way, the SS leadership must resign.\\n要么是极其无能，要么是故意的。\\n无论如何，中情局领导层必须辞职。\"}]');
INSERT INTO `item_example` VALUES (624, 'marrow', '[{\"key\":\"n.骨髓,髓\",\"value\":\"delicious bone marrow\\n美味的骨髓\"}]');
INSERT INTO `item_example` VALUES (625, 'lamb', NULL);
INSERT INTO `item_example` VALUES (626, 'mutton', NULL);
INSERT INTO `item_example` VALUES (627, 'gummy', '[{\"key\":\"adj.软糯的\",\"value\":\"Youtube视频，一男子摘下一串成熟变黄的香蕉吃了起来，他是这样形容的：\\n\\\"A little gummy, super creamy and moist.\\\"\\n“有点粘，非常滑腻而且富含水分。”\"}]');
INSERT INTO `item_example` VALUES (628, 'cream', NULL);
INSERT INTO `item_example` VALUES (629, 'moist', '[{\"key\":\"adj.湿润的\",\"value\":\"Youtube视频，一男子摘下一串成熟变黄的香蕉吃了起来，他是这样形容的：\\n\\\"A little gummy, super creamy and moist.\\\"\\n“有点粘，非常滑腻而且富含水分。”\"},{\"key\":\"adj.湿润的\",\"value\":\"moist cream\\n保湿霜\"}]');
INSERT INTO `item_example` VALUES (630, 'rib', '[{\"key\":\"n.排骨\",\"value\":\"prime rib\\n优质牛排\"}]');
INSERT INTO `item_example` VALUES (631, 'take', '[{\"key\":\"v.接管\",\"value\":\"6.30 P.M. Trump takes the stage.\\n下午 6 点 30 分，特朗普登台。\"}]');
INSERT INTO `item_example` VALUES (632, 'slip', '[{\"key\":\"v.滑倒\",\"value\":\"泰坦尼克号中，罗丝想条船那段：\\nI was leaning over and I slipped.\\n我当时正倾身，结果滑倒了。\"}]');
INSERT INTO `item_example` VALUES (633, 'ruin', '[{\"key\":\"v.毁灭\",\"value\":\"path to ruin\\n毁灭之路\"}]');
INSERT INTO `item_example` VALUES (634, 'vagina', NULL);
INSERT INTO `item_example` VALUES (635, 'wilt', NULL);
INSERT INTO `item_example` VALUES (636, 'constipation', NULL);
INSERT INTO `item_example` VALUES (637, 'mercy', '[{\"key\":\"n.怜悯\",\"value\":\"The wild knows no mercy.\\n动物没有怜悯之心\"}]');
INSERT INTO `item_example` VALUES (638, 'peek', '[{\"key\":\"v.偷看\",\"value\":\"泰坦尼克号经典桥段：\\nKeep your eyes closed. Don\'t peek.\\n闭上眼。别偷看。\"}]');
INSERT INTO `item_example` VALUES (639, 'tickle', '[{\"key\":\"v.胳肢\",\"value\":\"一段Youtube视频:\\ntickling my girlfriend\\n咯吱我女朋友\"}]');
INSERT INTO `item_example` VALUES (640, 'rally', '[{\"key\":\"n.集会\",\"value\":\"President Biden\'s remarks after shooting at Trump rally.\\n拜登总统在特朗普集会发生枪击事件后发表讲话。\"}]');
INSERT INTO `item_example` VALUES (641, 'settle', '[{\"key\":\"v.平息\",\"value\":\"24年总统大选前，CNN对特朗普的采访问道：“如果你当选，你会继续向乌克兰提供武器和资金吗？”\\n特朗普：\\nI will have that war settled in one day.\\n我会在一天之内解决这场战争。\"}]');
INSERT INTO `item_example` VALUES (642, 'tortoise', NULL);
INSERT INTO `item_example` VALUES (643, 'peak', NULL);
INSERT INTO `item_example` VALUES (644, 'chief', NULL);
INSERT INTO `item_example` VALUES (645, 'mangosteen', NULL);
INSERT INTO `item_example` VALUES (646, 'carat', '[{\"key\":\"n.克拉\",\"value\":\"The Heart Of The Ocean. 56 carats to be exact.\\n海洋之心。确切地说是 56 克拉。\"}]');
INSERT INTO `item_example` VALUES (647, 'surpass', '[{\"key\":\"v.超越\",\"value\":\"No other movie can surpass this Titanic movie. After so many years had passed it\'s still the favorite film movie of our time.\\n没有其他电影可以超越泰坦尼克号这部电影。这么多年过去了，它仍然是我们这个时代最喜爱的电影。\"}]');
INSERT INTO `item_example` VALUES (648, 'cop', NULL);
INSERT INTO `item_example` VALUES (649, 'bless', '[{\"key\":\"v.保佑\",\"value\":\"God bless you.\\n上帝会保佑你\"},{\"key\":\"v.保佑\",\"value\":\"A man who knows how to cook that is a blessing.\\n一个会做饭的男人真是一种福气\"}]');
INSERT INTO `item_example` VALUES (650, 'convention', '[{\"key\":\"n.(某职业, 政党等成员的)大会,集会\",\"value\":\"Republican National Convention\\n共和党全国代表大会\"}]');
INSERT INTO `item_example` VALUES (651, 'behalf', '[{\"key\":\"n.代表\",\"value\":\"A parent can sign forms on behalf of children when they are young.\\n父母可以在孩子年幼时代其签署表格\"}]');
INSERT INTO `item_example` VALUES (652, 'prosper', NULL);
INSERT INTO `item_example` VALUES (653, 'supposed', '[{\"key\":\"adj.应该的\",\"value\":\"Youtube 特朗普遇袭生还 在共和党大会的演讲中回忆道：\\nI\'m not supposed to be here tonight.\\n我今晚不应该在这里。\\n\"}]');
INSERT INTO `item_example` VALUES (654, 'damn', '[{\"key\":\"v.警告\",\"value\":\"泰坦尼克号马上要沉没时，只允许女性上救生艇，男性也往前挤，船警警告人群：\\nNow stand back, damn you!\\n立马往后站，我警告你们！\"}]');
INSERT INTO `item_example` VALUES (655, 'casualty', '[{\"key\":\"n.战争或事故的亡者\",\"value\":\"朝鲜战争四方伤亡情况:\\ncasualties:\\nNorth Korea: 406,000\\nSouth Korea: 217,000\\nAmerica: 26,568\\nChina: 600,000\"}]');
INSERT INTO `item_example` VALUES (656, 'erase', NULL);
INSERT INTO `item_example` VALUES (657, 'labor', '[{\"key\":\"n.劳动, 工作\",\"value\":\"manual labor\\n体力劳动\"}]');
INSERT INTO `item_example` VALUES (658, 'startup', NULL);
INSERT INTO `item_example` VALUES (659, 'manual', '[{\"key\":\"adj.体力的\",\"value\":\"manual labor\\n体力劳动\"}]');
INSERT INTO `item_example` VALUES (660, 'chaos', NULL);
INSERT INTO `item_example` VALUES (661, 'warm', NULL);
INSERT INTO `item_example` VALUES (662, 'worm', NULL);
INSERT INTO `item_example` VALUES (663, 'fog', NULL);
INSERT INTO `item_example` VALUES (664, 'sandal', NULL);
INSERT INTO `item_example` VALUES (665, 'sour', NULL);
INSERT INTO `item_example` VALUES (666, 'radish', NULL);
INSERT INTO `item_example` VALUES (667, 'generality', NULL);
INSERT INTO `item_example` VALUES (668, 'issue', NULL);
INSERT INTO `item_example` VALUES (669, 'miner', '[{\"key\":\"n.采矿车\",\"value\":\"red alert中经常听见的一句话:\\nore miner under attack.\\n采矿车正在遭受攻击。\"}]');
INSERT INTO `item_example` VALUES (670, 'ore', '[{\"key\":\"n.矿石\",\"value\":\"red alert中经常听见的一句话:\\nore miner under attack.\\n采矿车正在遭受攻击。\"}]');
INSERT INTO `item_example` VALUES (671, 'in', '[{\"key\":\"prep.以某种方式\",\"value\":\"川普遭枪击后，中央情报局局长在国会遭盘问：\\n\\n  局长：I can speak to you in generalities.\\n提问者：I want specifications.\\n\\n\\n  局长：我可以大概地跟你讲。\\n提问者：我要具体情况。\"},{\"key\":\"prep.在某段时间内\",\"value\":\"乔丹提到科比经常在半夜向他讨教篮球技术：\\nAnd this is at 2 o\'clock in the morning.\"},{\"key\":\"prep.以某种方式\",\"value\":\"Speak in English.\\n讲英语\"}]');
INSERT INTO `item_example` VALUES (672, 'morning', NULL);
INSERT INTO `item_example` VALUES (673, 'promote', '[{\"key\":\"v.升级\",\"value\":\"红警中的命令：\\nunit promoted\\n作战单位升级了\"}]');
INSERT INTO `item_example` VALUES (674, 'yard', '[{\"key\":\"n.长度单位码\",\"value\":\"特朗普被枪击，据报道，枪手所趴的房子距离特朗普演讲台不足150码:\\nIt\'s no more than 150 yards from the stage.\"}]');
INSERT INTO `item_example` VALUES (675, 'vulnerability', '[{\"key\":\"n.漏洞\",\"value\":\"特朗普被枪击后，中情局局长遭国会盘问。\\n\\n提问议员：\\nin the days before the rally, the secret service had identified the building as a vulnerability that required special attention.\\n在集会前几天，特勤局已将这座建筑认定为需要特别关注的薄弱环节。\\n\\n局长回答：\\nI am still looking into an active investigation.\\n我仍在进行积极的调查。\"}]');
INSERT INTO `item_example` VALUES (676, 'colossal', '[{\"key\":\"adj.巨型\",\"value\":\"colossal squid\\n巨型章鱼\"},{\"key\":\"adj.超级大的\",\"value\":\"A colossal failure\\n一个巨大的失败\"}]');
INSERT INTO `item_example` VALUES (677, 'tour', '[{\"key\":\"v.旅游\",\"value\":\"Stephen Curry tours London\\n库里游览伦敦\"}]');
INSERT INTO `item_example` VALUES (678, 'obviously', NULL);
INSERT INTO `item_example` VALUES (679, 'penetration', NULL);
INSERT INTO `item_example` VALUES (680, 'grill', NULL);
INSERT INTO `item_example` VALUES (681, 'skewer', NULL);
INSERT INTO `item_example` VALUES (682, 'heal', '[{\"key\":\"v.使又愉快起来\",\"value\":\"Hello!.I\'m Korean. I\'m healing while watching this video. Please post a lot of good videos. I\'m always rooting for you.\\n你好！我是韩国人。看这个视频时我正在康复。请发布很多好的视频。我会一直支持你的。\"}]');
INSERT INTO `item_example` VALUES (683, 'root', '[{\"key\":\"v.跟随,撑持\",\"value\":\"Hello!.I\'m Korean. I\'m healing while watching this video. Please post a lot of good videos. I\'m always rooting for you.\\n你好！我是韩国人。看这个视频时我正在康复。请发布很多好的视频。我会一直支持你的。\"}]');
INSERT INTO `item_example` VALUES (684, 'big time', NULL);
INSERT INTO `item_example` VALUES (685, 'exhibition', '[{\"key\":\"n.表演\",\"value\":\"every highlight from USA exhibition games(5-0)\\n美国表演赛的所有精彩瞬间(5-0)\"}]');
INSERT INTO `item_example` VALUES (686, 'sausage', NULL);
INSERT INTO `item_example` VALUES (687, 'bowl', NULL);
INSERT INTO `item_example` VALUES (688, 'squid', NULL);
INSERT INTO `item_example` VALUES (689, 'old head', NULL);
INSERT INTO `item_example` VALUES (690, 'kimchi', NULL);
INSERT INTO `item_example` VALUES (691, 'cucumber', NULL);
INSERT INTO `item_example` VALUES (692, 'cabbage', '[{\"key\":\"n.卷心菜\",\"value\":\"chinese cabbage\\n大白菜\"},{\"key\":\"n.卷心菜\",\"value\":\"red cabbage\\n紫甘蓝\"}]');
INSERT INTO `item_example` VALUES (693, 'salt', NULL);
INSERT INTO `item_example` VALUES (694, 'leaf', NULL);
INSERT INTO `item_example` VALUES (695, 'instant', '[{\"key\":\"adj.速食的\",\"value\":\"instant ramen\\n方便面\"}]');
INSERT INTO `item_example` VALUES (696, 'redemption', '[{\"key\":\"n.救赎\",\"value\":\"The Shawshank Redemption\\n肖申克的救赎\"}]');
INSERT INTO `item_example` VALUES (697, 'boil', NULL);
INSERT INTO `item_example` VALUES (698, 'heat', NULL);
INSERT INTO `item_example` VALUES (699, 'spoiler', NULL);
INSERT INTO `item_example` VALUES (700, 'copyright', NULL);
INSERT INTO `item_example` VALUES (701, 'Serbia', NULL);
INSERT INTO `item_example` VALUES (702, 'saturate', '[{\"key\":\"adj.饱和的\",\"value\":\"saturated fat\\n饱和脂肪（坏脂肪：动物油，奶油，椰子油，棕榈油）\"}]');
INSERT INTO `item_example` VALUES (703, 'hold', NULL);
INSERT INTO `item_example` VALUES (704, 'leave', '[{\"key\":\"v.忘带\",\"value\":\"Are you ready to go LeBron? Where is the powder?\\n勒布朗，你准备好出发了吗？粉末在哪儿？\\n\\nLeft it at home.\\n忘在家里了。\"}]');
INSERT INTO `item_example` VALUES (705, 'basketball', NULL);
INSERT INTO `item_example` VALUES (706, 'computer', NULL);
INSERT INTO `item_example` VALUES (707, 'ultimately', NULL);
INSERT INTO `item_example` VALUES (708, 'straight', '[{\"key\":\"adv.直接\",\"value\":\"You weren\'t able to be recruited because you went straight to the NBA from high school.\\n你之所以没能被招募是因为你高中毕业后就直接进入了 NBA。\"}]');
INSERT INTO `item_example` VALUES (709, 'expect', '[{\"key\":\"v.预期\",\"value\":\"What did you expect? Because we\'ve seen 30-foot billboards. We\'ve seen teams clear out all kinds of cap space. We\'ve seen cartoons made about you and for you in part of their pitch. \\nWhat did you expect from this process?\\n你期望什么？\\n因为我们看到了30英尺的广告牌。我们看到了球队清空各种薪金空间。我们看到了在他们宣传中为你做的漫画。\\n你对这个过程有什么期望？\"}]');
INSERT INTO `item_example` VALUES (710, 'foot', '[{\"key\":\"n.英尺\",\"value\":\"What did you expect? Because we\'ve seen 30-foot billboards. We\'ve seen teams clear out all kinds of cap space.\\n你期望什么？因为我们看到了 30 英尺的广告牌。我们看到了球队清空各种薪金空间。\"}]');
INSERT INTO `item_example` VALUES (711, 'across', NULL);
INSERT INTO `item_example` VALUES (712, 'decision', NULL);
INSERT INTO `item_example` VALUES (713, 'decide', NULL);
INSERT INTO `item_example` VALUES (714, ' in front of', NULL);
INSERT INTO `item_example` VALUES (715, 'inside', NULL);
INSERT INTO `item_example` VALUES (716, 'Crimea', NULL);
INSERT INTO `item_example` VALUES (717, 'Ukraine', NULL);
INSERT INTO `item_example` VALUES (718, 'wonderful', NULL);
INSERT INTO `item_example` VALUES (719, 'symbol', NULL);
INSERT INTO `item_example` VALUES (720, 'picture', NULL);
INSERT INTO `item_example` VALUES (721, 'young', NULL);
INSERT INTO `item_example` VALUES (722, 'rise', NULL);
INSERT INTO `item_example` VALUES (723, 'alley', NULL);
INSERT INTO `item_example` VALUES (724, 'neighborhood', NULL);
INSERT INTO `item_example` VALUES (725, 'thirst', NULL);
INSERT INTO `item_example` VALUES (726, 'hawk', NULL);
INSERT INTO `item_example` VALUES (727, 'diet', NULL);
INSERT INTO `item_example` VALUES (728, 'willow', NULL);
INSERT INTO `item_example` VALUES (729, 'strip', NULL);
INSERT INTO `item_example` VALUES (730, 'pin', NULL);
INSERT INTO `item_example` VALUES (731, 'with', NULL);
INSERT INTO `item_example` VALUES (732, 'persuade', NULL);
INSERT INTO `item_example` VALUES (733, 'hydrogen', NULL);
INSERT INTO `item_example` VALUES (734, 'battery', NULL);
INSERT INTO `item_example` VALUES (735, 'ride', NULL);
INSERT INTO `item_example` VALUES (736, 'put up with', NULL);
INSERT INTO `item_example` VALUES (737, 'scare', NULL);
INSERT INTO `item_example` VALUES (738, 'shake', NULL);
INSERT INTO `item_example` VALUES (739, 'stress', NULL);
INSERT INTO `item_example` VALUES (740, 'withdraw', NULL);
INSERT INTO `item_example` VALUES (741, 'hesitate', NULL);
INSERT INTO `item_example` VALUES (742, 'bum', NULL);
INSERT INTO `item_example` VALUES (743, 'resign', NULL);
INSERT INTO `item_example` VALUES (744, 'incompetence', NULL);
INSERT INTO `item_example` VALUES (745, 'more than', NULL);
INSERT INTO `item_example` VALUES (746, 'less than', NULL);
INSERT INTO `item_example` VALUES (747, 'specification', NULL);
INSERT INTO `item_example` VALUES (748, 'look into', NULL);
INSERT INTO `item_example` VALUES (749, 'extreme', NULL);
INSERT INTO `item_example` VALUES (750, 'secret', NULL);
INSERT INTO `item_example` VALUES (751, 'Secret Service', NULL);
INSERT INTO `item_example` VALUES (752, 'private', NULL);
INSERT INTO `item_example` VALUES (753, 'dedication', NULL);
INSERT INTO `item_example` VALUES (754, 'chief of staff', NULL);
INSERT INTO `item_example` VALUES (755, 'Truman', NULL);
INSERT INTO `item_example` VALUES (756, 'Marshall', NULL);
INSERT INTO `item_example` VALUES (760, 'The Great Lakes', NULL);
INSERT INTO `item_example` VALUES (761, 'autograph', NULL);
INSERT INTO `item_example` VALUES (763, 'boilerplate', NULL);
INSERT INTO `item_example` VALUES (764, 'supervisor', NULL);
INSERT INTO `item_example` VALUES (765, 'record', NULL);
INSERT INTO `item_example` VALUES (766, 'profound', NULL);
INSERT INTO `item_example` VALUES (767, 'joy', NULL);
INSERT INTO `item_example` VALUES (768, 'well', NULL);
INSERT INTO `item_example` VALUES (769, 'inform', NULL);
INSERT INTO `item_example` VALUES (770, 'battlefield', NULL);
INSERT INTO `item_example` VALUES (771, 'steadfast', NULL);
INSERT INTO `item_example` VALUES (772, 'tyranny', NULL);
INSERT INTO `item_example` VALUES (773, 'oppression', NULL);
INSERT INTO `item_example` VALUES (774, 'rid', NULL);

-- ----------------------------
-- Table structure for listening
-- ----------------------------
DROP TABLE IF EXISTS `listening`;
CREATE TABLE `listening`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `sort` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'sort',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'title',
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT 'content',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'listening' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of listening
-- ----------------------------
INSERT INTO `listening` VALUES (1, 0, 'Suitable Fles / 寄人皮下 / 2023', NULL);
INSERT INTO `listening` VALUES (2, 0, 'Drag me to hell / 2009', NULL);
INSERT INTO `listening` VALUES (3, 0, '阿甘正传 / 1994', NULL);
INSERT INTO `listening` VALUES (4, 0, 'The Shawshank Redemption / 肖申克的救赎 / 1994', 'Believe what you want. These walls\nare funny. First you hate \'em, then\nyou get used to \'em. After long\nenough, you get so you depend on\n\'em. That\'s \"institutionalized.\"\nMIND: 所以一定要有希望和行动，才能逃离监狱，重获新生\n\nFear can hold you prisoner, hope can set you free.\n这句话并不是电影台词，而是宣传海报的一句话。\n\n电影了关于希望是安迪说的：Hope is a good thing, maybe the best of things, and no good thing ever dies.');

-- ----------------------------
-- Table structure for reading
-- ----------------------------
DROP TABLE IF EXISTS `reading`;
CREATE TABLE `reading`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `sort` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'sort',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'title',
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT 'content',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'reading' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of reading
-- ----------------------------
INSERT INTO `reading` VALUES (1, 0, 'Michael Jordan remembers his \'little brother\' Kobe Bryant.', '<p>I <strong><span style=\"color: rgb(249, 129, 129)\">would </span></strong>say good morning, but it\'s afternoon. I\'<strong><span style=\"color: rgb(112, 207, 248)\">m grateful to</span></strong> Vanessa and the Bryant family for the opportunity to speak today. I\'<strong><span style=\"color: rgb(112, 207, 248)\">m grateful to</span></strong> be here to honor Gigi and <strong><span style=\"color: rgb(249, 129, 129)\">celebrate </span></strong>the gifts that Kobe gave us all –&nbsp; what he accomplished as a basketball player, as a businessman, and a storyteller and as a father.&nbsp; In the game of basketball, in life, as a parent – Kobe left nothing in the <strong><span style=\"color: rgb(249, 129, 129)\">tank</span></strong>. He left it all on the <strong><span style=\"color: rgb(249, 129, 129)\">floor</span></strong>.</p><p>&nbsp;</p><p>Maybe it surprised people that Kobe and I were very close friends. But we were very close friends.&nbsp; Kobe was my dear friend. He was like a little brother.&nbsp; Everyone always wanted to talk about the <strong><span style=\"color: #F98181\">comparisons </span></strong>between he and I.&nbsp; I just wanted to talk about Kobe.</p><p>&nbsp;</p><p>You know all of us have brothers and sisters, little brothers, little sisters,&nbsp; who for whatever reason always <strong><span style=\"color: rgb(112, 207, 248)\">tend to</span></strong> get in your <strong><span style=\"color: rgb(249, 129, 129)\">stuff</span></strong>, your closet, your shoes, everything.&nbsp; It was a <strong><span style=\"color: rgb(249, 129, 129)\">nuisance</span></strong>– if I can say that word – but that nuisance <strong><span style=\"color: rgb(112, 207, 248)\">turned into</span></strong> love over <strong><span style=\"color: rgb(112, 207, 248)\">a period of time</span></strong>.&nbsp; Just because the <strong><span style=\"color: rgb(249, 129, 129)\">admiration </span></strong>that they have for you as big brothers or big sisters,&nbsp; the questions they\'re wanting to know every little detail about life that they were about to<strong><span style=\"color: rgb(112, 207, 248)\"> embark on</span></strong>.</p><p>&nbsp;</p><p>He <strong><span style=\"color: rgb(112, 207, 248)\">used to</span></strong> call me, <strong><span style=\"color: rgb(249, 129, 129)\">text </span></strong>me, 11:30, 2:30, 3 o\'clock <strong><span style=\"color: rgb(112, 207, 248)\">in the morning</span></strong>, talking about post-up moves, footwork, and sometimes, the triangle.&nbsp; At first, it was an <strong><span style=\"color: rgb(249, 129, 129)\">aggravation</span></strong>. But then it turned into a <strong><span style=\"color: rgb(249, 129, 129)\">certain </span></strong>passion. This kid had passion like you would never know.&nbsp; It\'s an amazing thing about passion. If you love something, if you have a strong passion for something,&nbsp; you would go to the extreme to try to understand or try to get it. <strong><span style=\"color: rgb(249, 129, 129)\">Either </span></strong>ice cream, cokes, hamburgers, whatever you have a love for.&nbsp; If you have to walk, you would go get it. If you have to beg someone, you would go get it.</p><p>&nbsp;</p><p>What Kobe Bryant was to me was the <strong><span style=\"color: rgb(249, 129, 129)\">inspiration</span></strong> that someone truly cared about the way<span style=\"color: rgb(250, 250, 250)\"> </span><strong><span style=\"color: rgb(249, 129, 129)\">either </span></strong>I played the game or the way that he wanted to play the game.&nbsp; He wanted to be the best basketball player that he could be. And as I got to know him, I wanted to be the best big brother that I could be.</p><p>&nbsp;</p><p>To do that, you have to<strong><span style=\"color: rgb(112, 207, 248)\"> put up with</span></strong> the <strong><span style=\"color: rgb(249, 129, 129)\">aggravation</span></strong>, the late-night calls, or the <strong><span style=\"color: rgb(249, 129, 129)\">dumb </span></strong>questions.&nbsp; I <strong><span style=\"color: rgb(112, 207, 248)\">took great pride</span></strong> as I got to know Kobe Bryant that he was just trying to be a better person – a better basketball player.&nbsp; We talked about business, we talked about family, we talked about everything. And he was just trying to be a better person.</p><p>&nbsp;</p><p>Now, he\'s got me and I\'ll have to look at another crying <strong><span style=\"color: rgb(249, 129, 129)\">meme </span></strong>for the next ...&nbsp;</p><p>&nbsp;</p><p>I told my wife I wasn\'t gonna do this cause I didn\'t want to see that for the next three or four years.&nbsp; That is what Kobe Bryant does to me. I\'m pretty sure Vanessa and his friends all can say the same thing –&nbsp; he knows how to get to you in a way that affects you personally, even though he\'s being <strong><span style=\"color: rgb(112, 207, 248)\">a pain in the ass</span></strong>.&nbsp; But you have a sense of love for him and the way that he can <strong><span style=\"color: rgb(112, 207, 248)\">bring out</span></strong> the best in you. And he did that for me.&nbsp;</p><p>&nbsp;</p><p>I remember maybe <strong><span style=\"color: rgb(112, 207, 248)\">a couple months ago</span></strong> he sends me a text and he said, \"I\'m trying to teach my <strong><span style=\"color: rgb(249, 129, 129)\">daughter </span></strong>some moves.&nbsp; And I don\'t know what I was thinking or what I was working on, but what were you thinking about when you were growing up trying to <strong><span style=\"color: rgb(249, 129, 129)\">work on</span></strong> your moves?\"&nbsp;</p><p>I said \"What age?\"</p><p>He says \"12\".</p><p>I said \"12, I was trying to play baseball.\"</p><p>He sends me a text back saying \"Laughing my ass off.\"&nbsp; And this is at 2 o\'clock <strong><span style=\"color: rgb(112, 207, 248)\">in the morning</span></strong>.</p><p>&nbsp;</p><p>But the thing about him was we could talk about anything that related to basketball but we could talk about anything that related to life.&nbsp; And we, as we grew up in life, rarely have friends that we can have conversations like that.&nbsp; Well, it\'s even rarer when you can grow up against <strong><span style=\"color: rgb(249, 129, 129)\">adversaries </span></strong>and have conversations like that.&nbsp;</p><p>&nbsp;</p><p>I went and saw Phil Jackson in 1999, maybe 2000, I don\'t know, when Phil was here in L.A. And I walk in and Kobe\'s sitting there.</p><p>And the first thing,</p><p>Kobe said, \"Did you bring your shoes?\"</p><p>\"No, I wasn\'t thinking about playing.\"</p><p>&nbsp;</p><p>But his attitude to competeand play against someone he felt like he could enhance and <strong><span style=\"color: rgb(249, 129, 129)\">improve </span></strong>his game, that\'s what I loved about the kid.&nbsp; I absolutely loved the kid. No matter where he saw me, it was a challenge.&nbsp; And I <strong><span style=\"color: rgb(249, 129, 129)\">admired </span></strong>him because his passion, you <strong><span style=\"color: rgb(249, 129, 129)\">rarely </span></strong>see someone who is looking and trying to improve each and every day, not just in sports,&nbsp; but as a parent, as a <strong><span style=\"color: rgb(249, 129, 129)\">husband</span></strong>. I am <strong><span style=\"color: rgb(249, 129, 129)\">inspired </span></strong>by what he\'s done, and what he\'s shared with Vanessa, and what he\'s shared with his kids.</p><p>&nbsp;</p><p>I have a daughter who\'s 30 and I became a grandparent. And I have two twins.&nbsp; I have twins at 6. I can\'t wait to get home to become a GirlDad and to hug them and to see the love and smiles that they bring to us as parents.&nbsp; He taught me that just by looking at this tonight, looking at how he responded and reacted with the people he actually loved.&nbsp; These are the things that we will continue to learn from Kobe Bryant.</p><p>&nbsp;</p><p>To Vanessa, Natalia, Bianka, Capri, my wife and I will keep you close in our hearts and our <strong><span style=\"color: rgb(249, 129, 129)\">prayers</span></strong>. We will always be here for you.&nbsp; Always. I also want to offer our <strong><span style=\"color: rgb(249, 129, 129)\">condolences </span></strong>and support to all the families affected by this <strong><span style=\"color: rgb(249, 129, 129)\">enormous tragedy</span></strong>.</p><p>&nbsp;</p><p>Kobe gave every last <strong><span style=\"color: rgb(249, 129, 129)\">ounce </span></strong>of himself to whatever he was doing, After basketball, he showed a creative side to himself that I didn\'t think any of us knew he had.&nbsp; In <strong><span style=\"color: rgb(249, 129, 129)\">retirement</span></strong>, he seemed so happy. He found new passions. And he continued to give back, as a coach, in his community.&nbsp; More importantly, he was an amazing dad, amazing husband, who <strong><span style=\"color: rgb(112, 207, 248)\">dedicated himself to</span></strong> his family and who loved his daughters with all his heart.&nbsp; Kobe never left anything on the court. And I think that\'s what he would want for us to do.</p><p>&nbsp;</p><p>No one knows how much time we have. That\'s why we must live in the momen,&nbsp; we must <strong><span style=\"color: rgb(112, 207, 248)\">enjoy the moment</span></strong>, we must reach and see and spend as much time as we can with our families and friends and the people that we absolutely love.&nbsp;<strong><span style=\"color: rgb(112, 207, 248)\"> </span><em><span style=\"color: rgb(112, 207, 248)\">To live in the moment</span></em><span style=\"color: rgb(112, 207, 248)\"> </span></strong>means to enjoy each and every one that we come in contact with.&nbsp;</p><p>&nbsp;</p><p>When Kobe Bryant died, a piece of me <strong><span style=\"color: rgb(249, 129, 129)\">died</span></strong>. And as I look in this <strong><span style=\"color: rgb(249, 129, 129)\">arena </span></strong>and across the <strong><span style=\"color: rgb(249, 129, 129)\">globe</span></strong>, a piece of you died, or else you wouldn\'t be here.&nbsp; Those are the memories that we have to live with and we learn from.&nbsp;</p><p>&nbsp;</p><p>I promise you from this day forward, I will live with the memories of knowing that I had a little brother and I tried to help in every way I could.</p><p>Please, rest in peace little brother.</p><p></p><hr><p>&nbsp;</p>');
INSERT INTO `reading` VALUES (2, 0, 'LeBron James\' decision', '<p><strong><em>Thank you very much. Everybody <span style=\"color: rgb(249, 129, 129)\">is on pins and needles </span>across the country, particularly those teams who are in the running for LeBron James.</em></strong></p><p>&nbsp;</p><p><strong><em>Are you ready to go LeBron? Where is the <span style=\"color: rgb(249, 129, 129)\">powder</span>?</em></strong></p><p>Left it at home.</p><p>&nbsp;</p><p><strong><em>What\'s new? What\'s been going on with you this summer?</em></strong></p><p>Man, this whole free agent experience. I\'m<strong> <em><span style=\"color: rgb(249, 129, 129)\">looking forward to</span></em> </strong>it.</p><p>&nbsp;</p><p><strong><em>What have you thought about this process?</em></strong></p><p>This process has been everything I\'ve thought and more. And that\'s what I did a few years ago; I put myself in a position to have this process where I can hear teams\' <span style=\"color: rgb(249, 129, 129)\">pitches </span>and figure out what was the best possible chance for me to <strong><em><span style=\"color: rgb(249, 129, 129)\">ultimately</span></em></strong><span style=\"color: rgb(249, 129, 129)\"> </span>win and to ultimately be happy.</p><p>&nbsp;</p><p><strong><em>You weren\'t able to be recruited because you went straight to the NBA from high school. Have you enjoyed this <span style=\"color: rgb(33, 33, 33)\">recruiting </span>process now?</em></strong></p><p>I have enjoyed it. And I want to thank all six teams that I had an opportunity to sit down with and hear what they had to say. And my team, they hear what we had to say also.</p><p>It\'s been an unbelievable experience, a real humbling experience to be even to be in this position.</p><p>&nbsp;</p><p><strong><em>What did you expect? Because we\'ve seen 30-foot billboards. We\'ve seen teams clear out all kinds of cap space. We\'ve seen cartoons made about you and for you in part of their pitch. President Obama, for crying out loud, seven times has commented that he\'d like to see you go to Chicago. What did you expect from this process?</em></strong></p><p>Well, certain things like that is one thing you can\'t control. But I expected to be able to go through this process and be able to sit down with my team and sit across from other teams and hear how they feel with me being a part of their team, could help them win and could ultimately help others win.</p><p>And the process was everything I expected and more. And like I said before, I just thank all those teams that have come to Cleveland and us have those interviews and have that process. It was everything that I\'ve ever expected and more.</p><p>&nbsp;</p><p><strong><em>How many people know your decision right now?</em></strong></p><p>Not many. It\'s a very, very small number. And I probably could count them on my fingers.</p><p>&nbsp;</p><p><strong><em>One hand or two hands?</em></strong></p><p>Let\'s say one.</p><p>&nbsp;</p><p><strong><em>When did you decide?</em></strong></p><p>I think I decided this morning. I mean, I decided this morning I went day to day. I wake up one morning, it\'s this team. I wake up another morning, it\'s this team. And it\'s a process that I felt it was I may feel like this is the best opportunity for me or not the best opportunity for me.</p><p>But this morning I woke up, had a great conversation with my mom. Once I had that conversation with her, I think I was set.</p><p>&nbsp;</p><p><strong><em>So the last time you changed your mind was yesterday?</em></strong></p><p>The last time I changed my mind was probably in my dreams. And when I woke up this morning I knew it was the right decision.</p><p>&nbsp;</p><p><strong><em>So does the team that you\'re going to, that you\'ll announce in a few minutes, do they know your decision?</em></strong></p><p>They just found out.</p><p>&nbsp;</p><p><strong><em>They just found out?</em></strong></p><p>Yeah.</p><p>&nbsp;</p><p><strong><em>So the other five, on pins and needles, they don\'t know; they\'ll be listening to this?</em></strong></p><p>Right.</p><p>&nbsp;</p><p><strong><em>Who in this process, LeBron, have you taken advice from and who has had the biggest influence?</em></strong></p><p>I\'ve taken a lot of advice from my friends and family. My agent, Leon Rose, has been great. A lot of people that I look towards in a time of need or for advice, and ultimately they looked at me and said you ultimately have to live with your decision that you\'re going to make, and you have to do what\'s best for you, for your family and for you to ultimately be happy.</p><p>&nbsp;</p><p><strong><em>What was the major factor, the major reason in your decision?</em></strong></p><p>I think the major factor and the major reason in my decision was the best opportunity for me to win and to win now and to win into the future also.</p><p>And winning is a huge thing for me. Jim, you know ever since I was a rookie or even in high school, we always talked, that was the number one thing for me: Help my teammates get better and just wanting to win. And I\'ve done some great things in my seven years, and I want to continue to do that.</p><p>&nbsp;</p><p><strong><em>How deep of an evaluation do you have to do to go through that to figure out tomorrow, next year and beyond, that equation, that winning?</em></strong></p><p>One thing that you can\'t control is you never know. You never know. You want to put yourself in the position where you feel that it\'s the best opportunity. But saying I can win a championship next year or saying I can win it a year after, those are things that you don\'t know until you go out there and actually play the game. But you have to put yourself in the right position to be able to compete and also accomplish the goals that you set out for.</p><p>&nbsp;</p><p><strong><em>Do you have any doubts about your decision?</em></strong></p><p>No. I don\'t have any doubts at all.</p><p>&nbsp;</p><p><strong><em>Would you like to sleep on it a little longer, or are you ready to make this decision?</em></strong></p><p>I\'ve slept enough. Or the lack of sleep.</p><p>&nbsp;</p><p><strong><em>Are you still a nail biter?</em></strong></p><p>I have a little bit. Not of late.</p><p>&nbsp;</p><p><strong><em>You\'ve had everybody else biting their nails. So I guess it\'s time for them to stop chewing. The answer to the question everybody wants to know: LeBron, what\'s your decision?</em></strong></p><p>In this fall, this is very tough, in this fall I\'m going to take my talents to South Beach and join the Miami Heat.</p><p>&nbsp;</p><p><strong><em>The Miami Heat? That was the conclusion you woke up with this morning?</em></strong></p><p>That was the conclusion I woke up with this morning.</p><p>&nbsp;</p><p><strong><em>Why?</em></strong></p><p>Like I said before, I feel like it\'s going to give me the best opportunity to win and to win for multiple years, and not only just to win in the regular season or just to win five games in a row or three games in a row, I want to be able to win championships. And I feel like I can compete down there.</p><p>&nbsp;</p><p><strong><em>Was it always in your plan to go and play with Dwyane Wade and Chris Bosh?</em></strong></p><p>Well, I mean, I\'m looking forward to it. To say it was always in my plans, I can\'t say it was always in my plans because I never thought it was possible.</p><p>But the things that the Miami Heat franchise have done to be able to free up cap space and to be able to put themselves in a position this summer to have all three of us, it was hard to turn down. Those are two great players, two of the greatest players we have in this game today.</p><p>And, you know, you add me, we\'re going to be a really good team.</p><p>&nbsp;</p><p><strong><em>The three of you will share now the spotlight and the limelight. And in many ways you\'re going to Dwyane Wade\'s team. He\'s been in Miami. He\'s won a championship. How do you think you\'ll be able to fit in and possibly not be the headliner all the time?</em></strong></p><p>For me it\'s not about sharing. You know, it\'s about everybody having their own spotlight and then just doing what\'s best for the team.</p><p>You know, at this point D Wade, he\'s the unselfish guy here. To be able to have Chris Bosh and then LeBron James, to welcome us to his team, it\'s not about an individual here. Because if that was the case, D Wade wouldn\'t have asked us to join him, or we wouldn\'t have asked him if it was okay to come down there. It\'s not about individuals. It\'s about a team, and that\'s what this game is about.</p><p>&nbsp;</p><p><strong><em>How do you explain this to the people in Cleveland?</em></strong></p><p>I mean, it\'s heartfelt for me. You know, it\'s hard to explain, but at the same time my heart, in the seven years I gave to that franchise, to that city, it was everything. I mean, those 20,000 plus fans that came out every night we played, and they seen me grow from an 18 year old kid to a 25 year old man. And I never wanted to leave Cleveland. And my heart will always be around that area. But I also felt like this is the greatest challenge for me is to move on.</p><p>&nbsp;</p><p><strong><em>What was the major reason for leaving the Cavaliers?</em></strong></p><p>I don\'t even see it it\'s not like leaving Cleveland is the whole logistic of it; it\'s about joining forces with the other two guys that I feel like I respect their game the most. And I feel like we have a great chance of winning and winning for multiple years.</p><p>Like I said before, this is a very emotional time for me. I know it\'s emotional for the fans and also for the area. And if it was a perfect world, I would have loved to stay, because I\'ve done so many great things for that team, they\'ve done so many great things for me. But I feel like it\'s time to change.</p><p>&nbsp;</p><p><strong><em>What do you think will be the fans\' reaction back there, and will you still live in Akron?</em></strong></p><p>I\'m not sure. You know, they can have mixed emotions, of course, but it\'s going to be a lot of emotions not understanding why. And then you\'re going to have the real friends who love me for who I am. For me being from Akron, Ohio, and loving Akron, Ohio, it\'s always home for me. I\'m still going to live there, always be home. And Akron, Ohio is always home for me and that area.</p><p>&nbsp;</p><p><strong><em>Erik Spoelstra is the coach. Dwyane Wade, Chris Bosh said he will be the coach. Have you been told he will be your coach, or has Pat Riley, in your meetings, indicated he might come back to the bench?</em></strong></p><p>No. Erik Spoelstra will be the coach. And Pat said that. And Erik is a great young coach. He has a great mentor in Pat.</p><p>If you need something to bounce off of, he has a great person to go through, because Pat has been through everything, been through the highest level to the lowest level. He knows everything about it. But I respect Erik and I respect the coaching staff. I respect Coach Spoelstra and everything he\'s going to do to try to put us in the right position to win it all.</p><p>&nbsp;</p><p><strong><em>Ever want to go through this again?</em></strong></p><p>This is tough. This is very tough, because you feel like you\'ve let a lot of people down. You\'ve raised a lot of people\'s expectations also. But it was a tough decision, because I know how loyal I am.</p><p>And one thing my mother told me when I was going through this process and what ultimately helped me make my decision is you have to do what\'s best for you and what\'s going to make you happy at the end of the day, because no one can live with the consequences or anything that comes with your decision besides you.</p><p>And once I heard that from my mother, the person that I always look to for guidance, it was easy.</p><p>&nbsp;</p><p><strong><em>You told me she had a major influence when you called her this morning. You didn\'t believe the reaction she had would be the one that you got. Could you share with us what she said to you this morning?</em></strong></p><p>Absolutely. Like I said, when I called my mother I thought I would hear a different reaction. When she her reaction was it was a great move, because she felt it was going to ultimately make me happy. It wasn\'t about being in Miami. It wasn\'t about playing alongside Chris, playing alongside Dwyane, who she believes are two great basketball players, because she loves the game. But she felt it was going to make me happy.</p><p>When I heard that from my mother, it was like it was the relief that I was looking for throughout this whole process.</p><p>&nbsp;</p><hr><p>有什么进展？这个夏天你过得怎么样？</p><p></p><p>这个过程中，你有哪些考虑？</p><p></p><p>你没能被招募，因为你从高中直接进入NBA。现在你享受这个招募过程吗？</p><p></p><p>你有什么期待？</p><p></p><p>现在多少人知道你的决定？</p><p></p><p>你什么时候下决定的？</p><p></p><p>那么，你即将要去，你马上要宣布的那只球队，他们知道你的决定吗？</p><p></p><p>他们刚刚知道？</p><p></p><p>所以其他五只球队，坐如针毡，他们不知道，他们会听这个。</p><p></p><p>在这个过程中，你向谁征求意见了。谁对你的影响最大？</p><p></p><p>关于你的决定，什么是主要因素或原因？</p><p></p><p>你对你的有什么疑虑吗？</p><p></p><p>你愿意多睡一会吗？或者说，你准备好下决定了吗？</p><p></p><p>你还是个咬手指的人吗？</p><hr><p><strong><em>1-process 通篇的process指以自由球员身份到被招募的过程</em></strong></p><p>&nbsp;</p><p><strong><em>2-This process has been everything I\'ve thought and more. And that\'s what I did a few years ago;</em></strong></p><p><strong><em>这个过程就是我想要的，或超出我想要的</em></strong></p><p>&nbsp;</p><p><strong><em>3-figure out what was the best possible chance for me to ultimately win and to ultimately be happy.</em></strong></p><p><strong><em>这句话是病句，正确的说法：</em></strong><br><strong><em>Figure out what the best possible chance was for me to ultimately win and to ultimately be happy.</em></strong></p><p>&nbsp;</p><p><strong><em>4-What\'s been going on with you this summer?</em></strong></p><p><strong><em><span style=\"color: rgb(249, 129, 129)\">what has been going on with you 强调以过去视角：（那段时间）怎么回事</span></em></strong></p><p><strong><em><span style=\"color: rgb(249, 129, 129)\">what is going on with you &nbsp;强调以现在视角：（现在）怎么样了</span></em></strong></p><p>&nbsp;</p><p>5-Man, this whole free agent experience. I\'m <strong><em><span style=\"color: rgb(249, 129, 129)\">looking forward to</span></em></strong> it. 我期待</p><p>&nbsp;</p><p>6-where I can hear teams\' <strong><em><span style=\"color: rgb(249, 129, 129)\">pitches&nbsp;</span></em></strong><span style=\"color: rgb(249, 129, 129)\"> </span>本意音高. 这里引申为\"宣传论点\", \"思想基调\", 即各支球队的主张和声音</p><p>&nbsp;</p><p>&nbsp;</p><p>You weren\'t able to be recruited because you went straight to the NBA from high school. Have you enjoyed this recruiting process now?</p><ul><li><p>主持的意思是: 詹姆斯直接从高中进入NBA，没参加过选秀，是否享受这个过程。因为选秀是有招募流程的，例如球队主动招募洽谈，给出自己的方案，试训等等。</p></li></ul><p>It\'s been an unbelievable experience, a real humbling experience to be even to be in this position.</p><ul><li><p>甚至这样的经历使人谦虚</p></li></ul><p>certain things that is one thing you can\'t control.</p><ul><li><p>|有些事|你无法控制</p></li></ul><p>I expected to be able to go through this process and be able to sit down with my team and sit across from other teams and hear how they feel with me being a part of their team, could help them win and could ultimately help others win.</p><ul><li><p>最后一句与前面句子的关系: I expected (to be able ...) and (could help ...)</p></li></ul>');
INSERT INTO `reading` VALUES (3, 0, 'Lebron ', '<p>aaa bbbbb&nbsp;</p><p></p><p><strong><em>Lebron James</em></strong>&nbsp;<span style=\"color: #F98181\">Wade</span>&nbsp;<span style=\"color: rgb(112, 207, 248)\">Bosh</span></p>');
INSERT INTO `reading` VALUES (4, 0, 'Youtube视频标题、内容、评论', '<p>Hello! I\'m Korean.</p><p>I\'m feeling <strong><span style=\"color: #F98181\">healed </span></strong>while watching this video.</p><p>Please post a lot of good videos.</p><p>I\'m always <strong><span style=\"color: rgb(249, 129, 129)\">rooting </span></strong>for you.</p><p></p><hr><p></p><p>你好！我是韩国人。</p><p>看这个视频，我感到<strong><span style=\"color: #F98181\">被</span><span style=\"color: rgb(249, 129, 129)\">治愈</span></strong>。</p><p>请多发好视频。</p><p>我一直<strong><span style=\"color: rgb(249, 129, 129)\">支持</span></strong>你。</p>');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `key` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'key',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'name',
  `created_at` datetime NULL DEFAULT NULL COMMENT 'create time',
  `updated_at` datetime NULL DEFAULT NULL COMMENT 'update time',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT 'status',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `key`(`key` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'role' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (4, 'Editor', 'editor', '2024-04-15 18:16:49', '2024-04-15 18:26:34', 1);

-- ----------------------------
-- Table structure for role_assignment
-- ----------------------------
DROP TABLE IF EXISTS `role_assignment`;
CREATE TABLE `role_assignment`  (
  `user_id` bigint NOT NULL COMMENT 'user ID',
  `role_id` bigint NOT NULL COMMENT 'role ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE,
  INDEX `role_id`(`role_id` ASC) USING BTREE,
  CONSTRAINT `role_assignment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_assignment_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'association between users and roles' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_assignment
-- ----------------------------

-- ----------------------------
-- Table structure for similar
-- ----------------------------
DROP TABLE IF EXISTS `similar`;
CREATE TABLE `similar`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `items` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'item',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `items`(`items` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'similar items' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of similar
-- ----------------------------
INSERT INTO `similar` VALUES (39, 'admit,admin');
INSERT INTO `similar` VALUES (56, 'annotate,nominate');
INSERT INTO `similar` VALUES (64, 'assess,assassination');
INSERT INTO `similar` VALUES (18, 'asset,assert');
INSERT INTO `similar` VALUES (49, 'beat,defeat');
INSERT INTO `similar` VALUES (9, 'belt,melt');
INSERT INTO `similar` VALUES (21, 'bit,bite,bid');
INSERT INTO `similar` VALUES (16, 'bugs,bug');
INSERT INTO `similar` VALUES (67, 'celebrity,celebrate');
INSERT INTO `similar` VALUES (38, 'clutch,pitch');
INSERT INTO `similar` VALUES (15, 'compete,complete');
INSERT INTO `similar` VALUES (27, 'concert,concern');
INSERT INTO `similar` VALUES (4, 'craft,crafty,crispy,raft');
INSERT INTO `similar` VALUES (37, 'crowd,crew,screw');
INSERT INTO `similar` VALUES (34, 'curtain,certain');
INSERT INTO `similar` VALUES (53, 'deer,dear');
INSERT INTO `similar` VALUES (58, 'domestic,democracy');
INSERT INTO `similar` VALUES (26, 'doubt,tout,double');
INSERT INTO `similar` VALUES (13, 'dumb,dump');
INSERT INTO `similar` VALUES (43, 'executive,exclusive,excusable');
INSERT INTO `similar` VALUES (59, 'fabulous,ridiculous');
INSERT INTO `similar` VALUES (63, 'fog,frog');
INSERT INTO `similar` VALUES (66, 'fossil,missile');
INSERT INTO `similar` VALUES (46, 'gonna,gotta');
INSERT INTO `similar` VALUES (50, 'hell,the hell');
INSERT INTO `similar` VALUES (36, 'invent,invite');
INSERT INTO `similar` VALUES (35, 'kick off,tip off');
INSERT INTO `similar` VALUES (22, 'lag,leg');
INSERT INTO `similar` VALUES (48, 'live,lives,life');
INSERT INTO `similar` VALUES (51, 'manufacturing,infrastructure');
INSERT INTO `similar` VALUES (41, 'massage,message');
INSERT INTO `similar` VALUES (20, 'munch,punch,much');
INSERT INTO `similar` VALUES (40, 'owe,own');
INSERT INTO `similar` VALUES (5, 'pack,pact');
INSERT INTO `similar` VALUES (12, 'patent,parent,patient');
INSERT INTO `similar` VALUES (54, 'peak,peek');
INSERT INTO `similar` VALUES (7, 'pepper,paper');
INSERT INTO `similar` VALUES (52, 'present,parent,president,represent');
INSERT INTO `similar` VALUES (28, 'principle,principal');
INSERT INTO `similar` VALUES (42, 'prospective,perspective');
INSERT INTO `similar` VALUES (30, 'prove,poverty,property');
INSERT INTO `similar` VALUES (2, 'rag,rig,grab');
INSERT INTO `similar` VALUES (23, 'ramp,ram,temp');
INSERT INTO `similar` VALUES (31, 'rape,grape,tape');
INSERT INTO `similar` VALUES (24, 'rig,rag');
INSERT INTO `similar` VALUES (29, 'roe,row');
INSERT INTO `similar` VALUES (17, 'rot,rat');
INSERT INTO `similar` VALUES (61, 'settle,saddle,sandal');
INSERT INTO `similar` VALUES (32, 'slam,slum,slap');
INSERT INTO `similar` VALUES (11, 'snack,snake');
INSERT INTO `similar` VALUES (8, 'species,special,specific');
INSERT INTO `similar` VALUES (19, 'split,spit,bite');
INSERT INTO `similar` VALUES (25, 'stack,stick');
INSERT INTO `similar` VALUES (10, 'staff,stuff');
INSERT INTO `similar` VALUES (60, 'stifle,rifle');
INSERT INTO `similar` VALUES (33, 'taboo,bamboo,baboon');
INSERT INTO `similar` VALUES (55, 'thief,chief');
INSERT INTO `similar` VALUES (44, 'tip,tap');
INSERT INTO `similar` VALUES (47, 'tout,taunt');
INSERT INTO `similar` VALUES (6, 'underestimate,estimate');
INSERT INTO `similar` VALUES (62, 'vinegar,vagina');
INSERT INTO `similar` VALUES (14, 'violet,violent,violate');
INSERT INTO `similar` VALUES (65, 'wild,wilt');
INSERT INTO `similar` VALUES (57, 'worm,warm');

-- ----------------------------
-- Table structure for synonym
-- ----------------------------
DROP TABLE IF EXISTS `synonym`;
CREATE TABLE `synonym`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `meaning` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'meaning',
  `items` varchar(10240) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'items',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `meaning`(`meaning` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'synonym items' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of synonym
-- ----------------------------
INSERT INTO `synonym` VALUES (1, '男性生殖器官', '[{\"en\":\"cock\",\"cn\":\"屌. 粗话冒犯\"},{\"en\":\"dick\",\"cn\":\"鸡巴。脏话。有冒犯或攻击性。\"},{\"en\":\"penis\",\"cn\":\"医学术语。中性词。无冒犯之意。\"},{\"en\":\"prick\",\"cn\":\"鸡巴。脏话。强烈的冒犯或攻击性。\"}]');
INSERT INTO `synonym` VALUES (4, '让步', '[{\"en\":\"even\",\"cn\":\"副词. 一般以 Even though, Even if, Even after 的组合出现在句首, 作为连词.\"},{\"en\":\"though\",\"cn\":\"连词. 常用于口语中.\"},{\"en\":\"despite\",\"cn\":\"介词. 常用于正式场合.\"},{\"en\":\"while\",\"cn\":\"连词. 常用在口语中.\"},{\"en\":\"whereas\",\"cn\":\"连词. 常用在律法或政策文件中\"}]');
INSERT INTO `synonym` VALUES (5, '跳跃', '[{\"en\":\"jump\",\"cn\":\"跳; 普通的跳; 口语书面皆可\"},{\"en\":\"leap\",\"cn\":\"跃; 更书面和诗意\"}]');
INSERT INTO `synonym` VALUES (6, '给', '[{\"en\":\"give\",\"cn\":\"普通的给\"},{\"en\":\"grant\",\"cn\":\"授予;赐给; 强调上对下的授权.\"}]');
INSERT INTO `synonym` VALUES (7, '刺;扎;捅;戳', '[{\"en\":\"stick\",\"cn\":\"用一个物体插进另一个物体. 例如将筷子插进玉米, 将筷子插在饭上是忌讳的\"},{\"en\":\"stab\",\"cn\":\"用刀捅人, 强调人身伤害\"},{\"en\":\"prick\",\"cn\":\"用利器扎小孔. 例如在土豆上扎几个眼, 用针扎气球\"}]');
INSERT INTO `synonym` VALUES (8, '服务员', '[{\"en\":\"waitress\",\"cn\":\"专指餐饮业的女服务人员\"},{\"en\":\"waiter\",\"cn\":\"专指餐饮业的男服务人员\"},{\"en\":\"attendant\",\"cn\":\"各行各业的服务人员\"}]');
INSERT INTO `synonym` VALUES (9, '使...碎', '[{\"en\":\"smash\",\"cn\":\"打碎. 强调使用工具敲击使之破碎.\"},{\"en\":\"crush\",\"cn\":\"压碎. 强调用压力使之破碎. 可引申为\\\"镇压\\\"\"}]');
INSERT INTO `synonym` VALUES (10, '转折', '[{\"en\":\"but\",\"cn\":\"常用在口语中\"},{\"en\":\"yet\",\"cn\":\"常用在演讲中\"}]');
INSERT INTO `synonym` VALUES (11, '压', '[{\"en\":\"overwhelm\",\"cn\":\"v.压倒. 压倒或埋没在巨物之下. overwhelming-压倒性的 overwhelmed-压力山大的\"},{\"en\":\"crush\",\"cn\":\"v.暴力挤压;武力镇压. 用力挤压使其破碎, 变形.\"}]');
INSERT INTO `synonym` VALUES (12, '带', '[{\"en\":\"belt\",\"cn\":\"厚且硬的带子. 例如传送带,裤腰带\"},{\"en\":\"tape\",\"cn\":\"软且薄的带子. 例如: 绷带,胶带,录像带\"}]');
INSERT INTO `synonym` VALUES (13, '对手', '[{\"en\":\"adversary\",\"cn\":\"语气较为强烈，是敌对关系，甚至你死我活的关系\"},{\"en\":\"rival\",\"cn\":\"语气较为中性，相对友好的竞争关系\"}]');
INSERT INTO `synonym` VALUES (14, '工资', '[{\"en\":\"salary\",\"cn\":\"按月或年支付的固定工资\"},{\"en\":\"wage\",\"cn\":\"短工的工钱. 日结或周结\"}]');
INSERT INTO `synonym` VALUES (15, '命运', '[{\"en\":\"destiny\",\"cn\":\"命运. 强调个人命运轨迹和特点.\"},{\"en\":\"fate\",\"cn\":\"天道,天意,定数. 强调上天旨意, 个人意志的渺小.\"}]');
INSERT INTO `synonym` VALUES (16, '将,即将', '[{\"en\":\"be going to\",\"cn\":\"将,要. 强调意图和计划. 重点在意图.\\nWe are going to visit our parents next week.\\n我们下周要去看望我们的父母。\"},{\"en\":\"be about to\",\"cn\":\"即将,马上. 强调状态的马上变化. 重点在状态而非意图.\\nThe movie is about to start.\\n电影即将开始.\"}]');
INSERT INTO `synonym` VALUES (17, '屁股', '[{\"en\":\"butt\",\"cn\":\"臀部. 中性词.\"},{\"en\":\"ass\",\"cn\":\"屁股. 粗鲁且冒犯\"}]');
INSERT INTO `synonym` VALUES (18, '羊肉', '[{\"en\":\"lamb\",\"cn\":\"专指羔羊肉\"},{\"en\":\"mutton\",\"cn\":\"泛指羊肉，可以是成年羊，也可以是羔羊。\"}]');
INSERT INTO `synonym` VALUES (19, '大的', '[{\"en\":\"vast\",\"cn\":\"扩阔的, 浩大的\\nvast majority of 绝大多数\"},{\"en\":\"colossal\",\"cn\":\"巨型的 巨物的\\ncolossal failure\"},{\"en\":\"enormous\",\"cn\":\"重大的悲剧\\nenormous tradedy\"}]');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `role_id` bigint NULL DEFAULT NULL COMMENT 'role ID',
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'username',
  `email` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'email',
  `phone` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'phone number',
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'password',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'avatar',
  `last_login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'last login iP',
  `gender` tinyint NULL DEFAULT 0 COMMENT 'gender',
  `last_login_time` datetime NULL DEFAULT NULL COMMENT 'last login time',
  `created_at` datetime NULL DEFAULT NULL COMMENT 'create time',
  `updated_at` datetime NULL DEFAULT NULL COMMENT 'update time',
  `status` tinyint NULL DEFAULT 0 COMMENT 'status',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE,
  INDEX `role_id`(`role_id` ASC) USING BTREE,
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'user' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, NULL, 'admin', 'admin@english.com', '18201553454', '$2a$10$e.eCVc19robe6k7cHsJEFuJMsNyIk3dUe5cvNzmAUnnv957xNuUaW', NULL, '127.0.0.1', 0, '2024-09-03 19:04:23', '2024-03-15 12:11:08', '2024-09-02 06:45:04', 0);

-- ----------------------------
-- Table structure for user_log
-- ----------------------------
DROP TABLE IF EXISTS `user_log`;
CREATE TABLE `user_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'user',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'operation name',
  `ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'IP adress',
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'operation location',
  `browser` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'browser type',
  `os` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'operation system',
  `operation_time` datetime NULL DEFAULT NULL COMMENT 'operation time',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'user operations' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_log
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
