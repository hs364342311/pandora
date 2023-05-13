# Pandora

潘多拉 (Pandora)，一个让你呼吸顺畅的 ChatGPT。

潘多拉实现了网页版 ChatGPT 的主要操作。后端优化，绕过 Cloudflare，速度喜人。

<!-- PROJECT SHIELDS -->

![Python version](https://img.shields.io/badge/python-%3E%3D3.7-green)
[![Issues](https://img.shields.io/github/issues-raw/pengzhile/pandora)](https://github.com/pengzhile/pandora/issues)
[![Commits](https://img.shields.io/github/last-commit/pengzhile/pandora/master)](https://github.com/pengzhile/pandora/commits/master)
[![PyPi](https://img.shields.io/pypi/v/pandora-chatgpt.svg)](https://pypi.python.org/pypi/pandora-chatgpt)
[![Downloads](https://static.pepy.tech/badge/pandora-chatgpt)](https://pypi.python.org/pypi/pandora-chatgpt)
[![PyPi workflow](https://github.com/pengzhile/pandora/actions/workflows/python-publish.yml/badge.svg)](https://github.com/pengzhile/pandora/actions/workflows/python-publish.yml)
[![Docker workflow](https://github.com/pengzhile/pandora/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/pengzhile/pandora/actions/workflows/docker-publish.yml)
[![Discord](https://img.shields.io/discord/1098772912242163795?label=Discord)](https://discord.gg/QBkd9JAaWa)

## 体验地址
* 点击 <a href="https://chat.zhile.io" target="_blank" title="Pandora Cloud体验地址">https://chat.zhile.io</a>
* 可以访问 [这里](http://ai.fakeopen.com/auth) 拿 `Access Token`
* 也可以官方登录，然后访问 [这里](http://chat.openai.com/api/auth/session) 拿 `Access Token`
* `Access Token` 有效期 `14` 天，期间访问**不需要梯子**。这意味着你在手机上也可随意使用。
* 这个页面上还包含一个共享账号的链接，**没有账号**的可以点进去体验一下。
 
## ChatGPT使用时可能会遇到：

### 1. Please stand by, while we are checking your browser... 
### &nbsp;&nbsp;&nbsp;动不动来一下，有时候还不动或者出人机验证。痛！
![t0](https://github.com/pengzhile/pandora/raw/master/doc/images/t0.png)

### 2. Access denied. You do not have access to chat.openai.com. 
### &nbsp;&nbsp;&nbsp;经典问题，只能到处找可用VPN，费时费力，更费钱。移动端访问更难。痛！
![t1.1](https://github.com/pengzhile/pandora/raw/master/doc/images/t1.1.png)
![t1](https://github.com/pengzhile/pandora/raw/master/doc/images/t1.png)

### 3. ChatGPT is at capacity right now 
### &nbsp;&nbsp;&nbsp;系统负载高，白嫖用户不给用。痛！
![t2](https://github.com/pengzhile/pandora/raw/master/doc/images/t2.png)

### 4. This content may violate our <u>content policy</u>. 
### &nbsp;&nbsp;&nbsp;道德审查，多触发几次可能就封号了。痛！！！
![t3](https://github.com/pengzhile/pandora/raw/master/doc/images/t3.png)

### 5. Something went wrong. 
### &nbsp;&nbsp;&nbsp;吃着火锅唱着歌，突然就出故障了。痛！
![t4](https://github.com/pengzhile/pandora/raw/master/doc/images/t4.png)

### 6. 输出代码时中断，但是却没有一个 `Continue generating` 按钮。痛！
![t5](https://github.com/pengzhile/pandora/raw/master/doc/images/t5.png) <br>
![t6](https://github.com/pengzhile/pandora/raw/master/doc/images/t6.png)

### 7. 蹦字慢吞吞，卡顿不流畅，不知道的甚至想换电脑。痛！
### 8. 想把 `ChatGPT` 接到其他系统，结果只能接个差强人意的 `gpt-3.5-turbo`。痛！

### _一次看完上面的噩梦，血压上来了，拳头硬了！太痛了！！！以上痛点，`Pandora` 一次全部解决。_

## 界面截图

  <details>

  <summary>

  ![alt Screenshot5](https://github.com/pengzhile/pandora/raw/master/doc/images/s05.png)<br>
  ![alt Screenshot10](https://github.com/pengzhile/pandora/raw/master/doc/images/s10.jpeg)

  </summary>

  ![alt Screenshot1](https://github.com/pengzhile/pandora/raw/master/doc/images/s01.png)<br>
  ![alt Screenshot2](https://github.com/pengzhile/pandora/raw/master/doc/images/s02.png)<br>
  ![alt Screenshot3](https://github.com/pengzhile/pandora/raw/master/doc/images/s03.png)<br>
  ![alt Screenshot4](https://github.com/pengzhile/pandora/raw/master/doc/images/s04.png)<br>
  ![alt Screenshot6](https://github.com/pengzhile/pandora/raw/master/doc/images/s06.png)<br>
  ![alt Screenshot11](https://github.com/pengzhile/pandora/raw/master/doc/images/s11.jpeg)

  </details>

<<<<<<< HEAD
## 如何搭建运行
=======
## 如何运行

* Python版本目测起码要`3.7`

* pip安装运行

  ```shell
  pip install pandora-chatgpt
  pandora
  ```
  * 如果你想支持`gpt-3.5-turbo`模式：

    ```shell
    pip install 'pandora-chatgpt[api]'
    pandora
    ```
  * 如果你想启用`cloud`模式：

    ```shell
    pip install 'pandora-chatgpt[cloud]'
    pandora-cloud
    ```

* 编译运行

  ```shell
  pip install .
  pandora
  ```
  
  * 如果你想支持`gpt-3.5-turbo`模式：

    ```shell
    pip install '.[api]'
    pandora
    ```
  
  * 如果你想启用`cloud`模式：

    ```shell
    pip install '.[cloud]'
    pandora-cloud
    ```

* Docker Hub运行

  ```shell
  docker pull pengzhile/pandora
  docker run -it --rm pengzhile/pandora
  ```

* Docker编译运行

  ```shell
  docker build -t pandora .
  docker run -it --rm pandora
  ```

* 输入用户名密码登录即可，登录密码理论上不显示出来，莫慌。
* 简单而粗暴，不失优雅。

## 程序参数

* 可通过 `pandora --help` 查看。
* `-p` 或 `--proxy` 指定代理，格式：`protocol://user:pass@ip:port`。
* `-t` 或 `--token_file` 指定一个存放`Access Token`的文件，使用`Access Token`登录。
* `-s` 或 `--server` 以`http`服务方式启动，格式：`ip:port`。
* `-a` 或 `--api` 使用`gpt-3.5-turbo`API请求，**你可能需要向`OpenAI`支付费用**。
* `--tokens_file` 指定一个存放多`Access Token`的文件，内容为`{"key": "token"}`的形式。
* `--sentry` 启用`sentry`框架来发送错误报告供作者查错，敏感信息**不会被发送**。
* `-v` 或 `--verbose` 显示调试信息，且出错时打印异常堆栈信息，供查错使用。

## Docker环境变量

* `PANDORA_ACCESS_TOKEN` 指定`Access Token`字符串。
* `PANDORA_TOKENS_FILE` 指定一个存放多`Access Token`的文件路径。
* `PANDORA_PROXY` 指定代理，格式：`protocol://user:pass@ip:port`。
* `PANDORA_SERVER` 以`http`服务方式启动，格式：`ip:port`。填写0.0.0.0:port ，使用本机的任何IP可访问
* `PANDORA_API` 使用`gpt-3.5-turbo`API请求，**你可能需要向`OpenAI`支付费用**。
* `PANDORA_SENTRY` 启用`sentry`框架来发送错误报告供作者查错，敏感信息**不会被发送**。
* `PANDORA_VERBOSE` 显示调试信息，且出错时打印异常堆栈信息，供查错使用。
* `USER_CONFIG_DIR` 指定存储AccessToken文件的目录。
* 使用Docker方式，设置环境变量即可，无视上述`程序参数`。
```
containerName=dockerchatgpt #容器名称
imageRegistry=hschatgpt #镜像服务名
version=1.0.4 #镜像版本号
imageName=$imageRegistry:$version #镜像版本
STRING=`docker container ls -a |grep $containerName|wc -L`
if [ $STRING -gt 0 ]
then
 echo "container $containerName is exists"
 docker stop $containerName
 docker container rm $containerName
else
 echo "container $containerName is not exists"
fi
docker run -d -it --name $containerName -p 6100:6100 --privileged=true -e USER_CONFIG_DIR="/data" -e PANDORA_SERVER="0.0.0.0:6100" -v /data/soft/install-images/pandora_data:/data hschatgpt:1.0.4
```

## 关于 Access Token

* 使用`Access Token`方式登录，可以无代理直连。
* [这个服务](https://ai.fakeopen.com/auth) 可以帮你安全有效拿到`Access Token`，无论是否第三方登录。
* 其中`accessToken`字段的那一长串内容即是`Access Token`。
* `Access Token`可以复制保存，其有效期目前为`1个月`。
* 不要泄露你的`Access Token`，使用它可以操纵你的账号。
登录的AccessToken文件存在位置在：
``` shell
cd /Users/huangshun/Library/Application Support/Pandora-ChatGPT/access_token.dat
```  

## HTTP服务文档

* 如果你以`http`服务方式启动，现在你可以打开一个极简版的`ChatGPT`了。通过你指定的`http://ip:port`来访问。
* 通过`http://ip:port/?token=xxx`，传递一个Token的名字，可以切换到对应的`Access Token`。
* API文档见：[doc/HTTP-API.md](https://github.com/pengzhile/pandora/blob/master/doc/HTTP-API.md)

## 操作命令

* 对话界面**连敲两次**`Enter`发送你的输入给`ChatGPT`。
* 对话界面使用`/?`可以打印支持的操作命令。
* `/title` 重新设置当前对话的标题。
* `/select` 回到选择会话界面。
* `/reload` 重新加载当前会话所有内容，`F5`你能懂吧。
* `/regen` 如果对`ChatGPT`当前回答不满意，可以让它重新回答。
* `/continue` 让`ChatGPT`继续输出回复的剩余部分。
* `/edit` 编辑你之前的一个提问。
* `/new` 直接开启一个新会话。
* `/del` 删除当前会话，回到会话选择界面。
* `/token` 打印当前的`Access Token`，也许你用得上，但不要泄露。
* `/copy` 复制`ChatGPT`上一次回复的内容到剪贴板。
* `/copy_code` 复制`ChatGPT`上一次回复的代码到剪贴板
* `/clear` 清屏，应该不用解释。
* `/version` 打印`Pandora`的版本信息。
* `/exit` 退出`潘多拉`。

## 高阶设置

* 本部分内容不理解的朋友，**请勿擅动！**
* 环境变量 `OPENAI_API_PREFIX` 可以替换OpenAI Api的前缀`https://api.openai.com`。
* 环境变量 `CHATGPT_API_PREFIX` 可以替换ChatGPT Api的前缀`https://ai.fakeopen.com`。
* 如果你想持久存储`Docker`中`Pandora`产生的数据，你可以挂载宿主机目录至`/data`。
* 如果你在国内使用`pip`安装缓慢，可以考虑切换至腾讯的源：```pip config set global.index-url https://mirrors.cloud.tencent.com/pypi/simple```
* 镜像同步版本可能不及时，如果出现这种情况建议切换至官方源：```pip config set global.index-url https://pypi.org/simple```
* 默认使用`sqlite3`存储会话数据，如果你希望更换至`mysql`，可以这么做：
  * 执行```pip install PyMySQL```安装驱动。
  * 设置环境变量：`DATABASE_URI`为类似`mysql+pymysql://user:pass@localhost/dbname`的连接字符串。
* 环境变量指定`OPENAI_EMAIL`可以替代登录输入用户名，`OPENAI_PASSWORD`则可以替代输入密码。
* 环境变量`API_SYSTEM_PROMPT`可以替换`api`模式下的系统`prompt`。

## Cloud模式

* 搭建一个跟官方很像的`ChatGPT`服务，不能说很像，只能说一样。
* 该模式使用`pandora-cloud`启动，前提是你如前面所说安装好了。
* Docker环境变量：`PANDORA_CLOUD` 启动`cloud`模式。
* 该模式参数含义与普通模式相同，可`--help`查看。

## 使用Cloudflare Workers代理

* 如果你感觉默认的`https://ai.fakeopen.com`在你那里可能被墙了，可以使用如下方法自行代理。
* 你需要一个`Cloudflare`账号，如果没有，可以[注册](https://dash.cloudflare.com/sign-up)一个。
* 登录后，点击`Workers`，然后点击`Create a Worker`，填入服务名称后点击`创建服务`。
* 点开你刚才创建的服务，点击`快速编辑`按钮，贴入下面的代码，然后点击`保存并部署`。

  ```javascript
  export default {
    async fetch(request, env) {
      const url = new URL(request.url);
      url.host = 'ai.fakeopen.com';
      return fetch(new Request(url, request))
    }
  }
  ```
>>>>>>> master

* 访问 [doc/wiki.md](https://github.com/pengzhile/pandora/blob/master/doc/wiki.md) 获得详细指导。

## 其他说明

* 项目是站在其他巨人的肩膀上，感谢！
* 报错、BUG之类的提出`Issue`，我会修复。
* 因为之后`ChatGPT`的API变动，我可能不会跟进修复。
* 喜欢的可以给颗星，都是老朋友了。
* 不影响`PHP是世界上最好的编程语言！`

## 贡献者们

> 感谢所有让这个项目变得更好的贡献者们！

[![Star History Chart](https://contrib.rocks/image?repo=pengzhile/pandora)](https://github.com/pengzhile/pandora/graphs/contributors)

## Star历史

![Star History Chart](https://api.star-history.com/svg?repos=pengzhile/pandora&type=Date)
