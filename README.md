```markdown
# 玩客云灯光一键控制 - One-click Control of the Cloud Lighting
## 简介
这是一个用于玩客云设备的灯光控制脚本。通过这个脚本，你可以轻松地通过命令行控制设备的 LED 灯光。

```

## 安装步骤

请按照以下步骤安装并使用该脚本：

### 第一步：下载脚本

使用以下命令将脚本下载到 `/usr/local/bin` 目录中。如果 `curl` 命令无法下载，请使用 `wget` 命令。

#### 使用 `curl` 下载：
```bash
curl -o /usr/local/bin/wky https://raw.githubusercontent.com/TobDeng0/-One-click-control-of-the-cloud-lighting/main/wky.sh
```

#### 使用 `wget` 下载：
```bash
wget -O /usr/local/bin/wky https://raw.githubusercontent.com/TobDeng0/-One-click-control-of-the-cloud-lighting/main/wky.sh
```

### 第二步：重命名脚本文件

将下载的脚本文件重命名为 `wky`：

```bash
mv /usr/local/bin/wky.sh /usr/local/bin/wky
```

### 第三步：赋予脚本执行权限

通过以下命令为脚本添加可执行权限：

```bash
chmod +x /usr/local/bin/wky
```

## 使用方法

安装完成后，您可以通过以下命令启动脚本并呼出菜单：

```bash
wky
```

然后根据菜单提示选择所需的 LED 灯光设置。

## 许可证

该项目基于开源许可证发布，欢迎自由使用和修改。
```

这个教程清晰地引导用户通过三步完成脚本的安装，并提供了脚本的使用说明。如果有需要进一步调整或添加其他内容，请告诉我！
