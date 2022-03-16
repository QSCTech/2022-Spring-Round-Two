# 背景知识：
## 什么是npm&React？
npm(Node Package Manager)作为和node.js打包出售的世界上最大的包管理器，虽然它存在下载速度超慢，偶尔卡壳等等问题，他的下载量依然不容小觑，通过它我们可以轻松跟踪依赖项和版本，也可以将自己编写的包或命令行程序共享给别人。react是Facebook的一个开源js类库，凭借其较高的性能，简短的逻辑备受人们关注。react的开发者们告诉了我们react的使命：We built React to solve one problem: building large applications with data that changes over time.
## 什么是Wordle？
Wordle是一种猜字游戏，玩家通过下方键盘输入猜测结果后，游戏会给字母方块标上颜色，提示猜测的准确性。

以下是原版初始界面：

![初始界面](/pics/Wordle.jpg)

以下是完成后的界面：

![完成后](/pics/Wordle(completed).png)

灰色背景表示此字母不在答案中出现，黄色表示该字母包含此字母但位置不对，绿色则表示该字母的位置也是正确的。当玩家的输入背景全部变为绿色，说明TA得到了正确答案( •̀ .̫ •́ )✧

显然您能够看出，这并不是一个简单的游戏。现在，我们希望您能够在使用npm安装React package后，用React实现一个简化版的Wordle。

# 题目要求：
## 游戏界面：
原版Wordle需要玩家猜出由5个字母组成的单词，在本题中，我们将其简化为4个——也就是说，您需要在页面中渲染一个由4个格子组成的答题框。

另外，我们取消了原版中的“黄色背景标识”，转而将每次提交中答案包含的字母显示在答题框上方的提示栏中。也就是说，您不需要在页面上保留每次尝试。

同时，我们也取消了尝试次数的限制——可以无限尝试的 Wordle，听起来真棒:D

最后，我们不要求实现虚拟键盘，而是直接在键盘上键入输入答案。这可能需要您进行一些键盘事件监听。

强烈推荐阅读完全文后开始做题。

## 游戏玩法：

与原版Wordle基本一致，除了不限制输入次数&将答案包含的字母直接显示在输入框上方。

答案限制为4个字母长的单词，您可自由选择作为答案的词汇。

![sample1](/pics/sample1.png)

通过键盘输入答案，按Backspace可退格，按Enter提交答案。若答案不满4个字母，则不予提交。（原版Wordle无法提交非单词的答案，形如“wwww”这样的答案是不予通过的，但是本版不做要求。）提交后，位置对的字母留在原地并背景变色，答案中包含而位置不对的字母显示在提示框中，剩余输入框清空。

![sample2](/pics/sample2.png)

![sample3](/pics/sample3.png)

![sample4](/pics/sample4.png)

## CSS要求与bonus：

我们希望游戏的整体布局应在屏幕的正中间，题目中未提及的美化可自由发挥。

bonus: 我们鼓励您在游戏过程中做一些输入反馈，比如当前输入字母框变大等等。同时，在答案完全正确后，可以考虑添加一个小动画：每个字母依次上下移动，形成波浪形动画。

bonus2.0:因为出题人很懒而且她有早八小测qwq希望您能帮她写完一些没实现的功能，比如一键重开，或者还原原作的输入次数限制……

我们制作了一个样品（以上参考图的来源）并录制了效果展示的[小视频](/sample.mp4)，可供各种效果的参考。当然，我们不要求对样品的百分百复刻。样式有不同是完全OK的。

bonus2.0中的部分可自由发挥，但是请进行一些基本的CSS排版。

# Review：

我们希望您在完成（或者部分完成）题目以后，能写下您在完成题目中的感想与收获，附在您提交的仓库之中。

您也可以提供一些对这份题目的评价，比如痛斥出题人的懒惰QAQ。

# 参考资料：

[React官方中文文档](https://react.docschina.org/)

[MDN文档](https://developer.mozilla.org/zh-CN/)

[现代javascript教程](https://zh.javascript.info/)