<<<<<<< .merge_file_VjBqSA
<<<<<<< .merge_file_GWMaCG
![doodles](https://www.google.com/logos/doodles/2016/st-georges-day-2016-6574194768740352-hp2x.jpg)
=======
![doodles](https://www.google.com/logos/doodles/2016/teachers-day-2016-us-6296626244091904.2-hp2x.gif)

[English version](https://github.com/racaljk/hosts/wiki/README(en))
>>>>>>> .merge_file_5WtGld
=======
[![doodle]][doodle-story]

<<<<<<< .merge_file_zjxhzS
<<<<<<< HEAD
[doodle]: http://p2.cri.cn/M00/65/09/CqgNOleXGt-AcXnFAAAAAAAAAAA942.980x250.jpg "undefined"
[doodle-story]: http://2016.cctv.com/
>>>>>>> .merge_file_qpbueI
=======
[doodle]: http://www.g20.org/images/logo.png "undefined"
[doodle-story]: http://www.g20.org/
>>>>>>> 8e4d5d69ca5945c67b25d0b01cfc59a31d53497e
=======
[doodle]: https://www.google.com/logos/doodles/2016/googles-18th-birthday-5661535679545344-hp2x.gif "Google 18岁啦"
[doodle-story]: https://www.google.com.hk/search?q=Google
>>>>>>> .merge_file_bDOTSA

**使用本项目之前，请先阅读此 [README](README.md) 及下方的许可协议**

**注意: Google 等网站请通过 https 方式访问，如** https://www.google.com/ncr

|      [聊天室][chat-room]       |    [hosts 格式检测][travis-status]    |  [镜像hosts][mirror_of_hosts]  |  [常见问题解答][faq] |
| :----------------------------: | :-----------------------------------: |  :---------------------------: |  :-----------------: |
|  [![chat-metadata]][chat-room] |  [![travis-metadata]][travis-status]  |  [![coding.net]][coding-link]  |  [![faq-icon]][faq]  |

[chat-metadata]: https://github.com/racaljk/hosts/releases/download/img-bak/gitter-metadata.png "Join the chat"
[chat-room]: https://gitter.im/racaljk/hosts?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge "Gitter chat room"
[travis-metadata]: https://travis-ci.org/racaljk/hosts.svg "Travis CI Metadata"
[travis-status]: https://travis-ci.org/racaljk/hosts "Travis CI Status"
[coding.net]: https://github.com/racaljk/hosts/releases/download/img-bak/coding-icon.png
[coding-link]: https://coding.net/u/scaffrey/p/hosts/git "Coding"
[mirror_of_hosts]: https://coding.net/u/scaffrey/p/hosts/git/raw/master/hosts
[faq-icon]: http://www.easyicon.net/api/resizeApi.php?id=1190784&size=48
[faq]: https://github.com/racaljk/hosts/wiki/The-hosts-FAQ

<<<<<<< .merge_file_zjxhzS
<<<<<<< .merge_file_VjBqSA
<<<<<<< .merge_file_GWMaCG

## 更新 hosts
* 下述指令均可能覆盖现有 hosts ，请先确认是否需要备份。推荐使用本项目的 [**Host Tools**](https://github.com/racaljk/hosts/tree/master/tools) 来自动化 备份/配置 的工作。
=======
## 更新 hosts
* 下面介绍的操作均可能覆盖现有 hosts ，进行操作前请先确认是否需要备份。
* 推荐使用本项目的 [**Host Tools**](https://github.com/racaljk/hosts/tree/master/tools) 来自动化 备份/配置 工作。
>>>>>>> .merge_file_5WtGld
=======
## 如何更新 hosts？
**推荐**使用项目内 [Host Tools](tools) 来**自动地 备份/更新** hosts。
>>>>>>> .merge_file_qpbueI
=======
## 更新 hosts
#### 推荐使用项目内的 [应用/工具](tools) 来自动备份/更新 hosts 文件
>>>>>>> .merge_file_bDOTSA

* **Windows**
   1. 用文本编辑器（如 [Notepad++](https://notepad-plus-plus.org/)）打开：`
  %SystemRoot%\System32\drivers\etc\hosts`
  > ![](https://i.imgur.com/BwW2cft.jpg)

<<<<<<< .merge_file_VjBqSA
### Windows
<<<<<<< .merge_file_GWMaCG
用文本编辑器（如记事本等）打开文件：

    C:\Windows\System32\drivers\etc\hosts

将 [hosts](https://raw.githubusercontent.com/racaljk/hosts/master/hosts) 全文复制到上述文件内并保存
=======
用文本编辑器（如 [Notepad++](https://notepad-plus-plus.org/)）打开文件：
=======
   2. 将 [hosts][github-hosts] 全部内容复制到上面的文件内并保存。
   > 注意：如果遇到无法保存，请右键文件hosts并找到“属性” -> “安全”，然后选择你登陆的用户名，最后点击编辑，勾选“写入”即可。
>>>>>>> .merge_file_qpbueI

* **其他平台**请将 [hosts][github-hosts] 全部内容复制到`/etc/hosts`中并保存。
> 附：[各平台 hosts 位置](https://github.com/racaljk/hosts/wiki/各平台-hosts-文件位置)

<<<<<<< .merge_file_VjBqSA
将 [hosts](https://raw.githubusercontent.com/racaljk/hosts/master/hosts) 全部内容复制到上述文件内并保存
>>>>>>> .merge_file_5WtGld

> 注意：如果遇到无法保存，请右键文件hosts并找到“属性” -> “安全”，然后选择你登陆的用户名，最后点击编辑，勾选“写入”即可。

### Linux
<<<<<<< .merge_file_GWMaCG
将 [hosts](https://raw.githubusercontent.com/racaljk/hosts/master/hosts) 全文复制到`/etc/hosts`中并保存。
=======
将 [hosts](https://raw.githubusercontent.com/racaljk/hosts/master/hosts) 全部内容复制到`/etc/hosts`中并保存。
>>>>>>> .merge_file_5WtGld

或开启终端（快捷键为<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>T</kbd>）输入命令：

    wget https://raw.githubusercontent.com/racaljk/hosts/master/hosts -qO /tmp/hosts && sudo sh -c 'cat /tmp/hosts > /etc/hosts'

### Mac OS
<<<<<<< .merge_file_GWMaCG
将 [hosts](https://raw.githubusercontent.com/racaljk/hosts/master/hosts) 全文复制到 `/etc/hosts`中并保存。

> 可使用 [Gas Mask](http://clockwise.ee/) 工具。

### Android
将 [hosts](https://raw.githubusercontent.com/racaljk/hosts/master/hosts) 全文复制到 `/etc/hosts`中并保存。

### iOS
将 [hosts](https://raw.githubusercontent.com/racaljk/hosts/master/hosts) 全文复制到 `/etc/hosts`中并保存。
=======
将 [hosts](https://raw.githubusercontent.com/racaljk/hosts/master/hosts) 全部内容复制到 `/etc/hosts`中并保存。

### Android
将 [hosts](https://raw.githubusercontent.com/racaljk/hosts/master/hosts) 全部内容复制到 `/etc/hosts`中并保存。

### iOS
将 [hosts](https://raw.githubusercontent.com/racaljk/hosts/master/hosts) 全部内容复制到 `/etc/hosts`中并保存。
>>>>>>> .merge_file_5WtGld
=======
**注意**： 若更新后，hosts 没有立即生效，请重置网络：
>>>>>>> .merge_file_qpbueI

- 在系统设置内开关网络，或启用禁用飞行模式

## 更多
- [关于中国的互联网](https://github.com/racaljk/hosts/wiki/关于中国的互联网)
- 获取更多信息，请访问 [Wiki 页面](https://github.com/racaljk/hosts/wiki) 。如有问题，请开 [Issue](https://github.com/racaljk/hosts/issues) 反馈。


<<<<<<< .merge_file_GWMaCG

## License
- 本项目的所有代码除另有说明外,均按照 [MIT License](https://github.com/racaljk/hosts/blob/master/LICENSE) 发布。
- 本项目的hosts，README.MD，wiki等资源基于[CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
这意味着你可以拷贝、并再发行本项目的内容，但是你将必须同样**提供原作者信息以及协议声明**。同时你也**不能将本项目用于商业用途**，按照我们狭义的理解（增加附属条款），凡是**任何盈利的活动皆属于商业用途**。
- 请在遵守当地相关法律法规的前提下使用本项目。
- 如果您使用了本项目，则您在使用本项目的产品(包括但不限于其衍生产品)过程中产生的法律问题和安全问题，**与本项目无关**。同样，本项目也不承担任何连带法律责任。
- 项目中有规定其他协议的，也适用于本用户协议的最后一条协议。
- **使用/下载本项目中的产品(包括但不限于其衍生产品)则意味着您已经阅读了本协议并愿意遵守本协议规定的有关事项；若你无法遵守上述的责任和义务，请不要拷贝、并再发行本项目；如果您违反本协议使用/下载项目中的产品(包括但不限于其衍生产品)，我们将最大限度地追究您的违约责任。**
=======
## License
- 本项目的所有代码除另有说明外,均按照 [MIT License](LICENSE) 发布。
- 本项目的hosts，README.MD，wiki等资源基于[CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
这意味着你可以拷贝、并再发行本项目的内容，但是你将必须同样**提供原作者信息以及协议声明**。同时你也**不能将本项目用于商业用途**，
按照我们狭义的理解（增加附属条款），凡是**任何盈利的活动皆属于商业用途**。
- 请在遵守当地相关法律法规的前提下使用本项目。
>>>>>>> .merge_file_5WtGld

![img-source-from-https://github.com/docker/dockercraft](https://github.com/docker/dockercraft/raw/master/docs/img/contribute.png?raw=true)

[github-hosts]: https://raw.githubusercontent.com/racaljk/hosts/master/hosts "hosts on Github"
