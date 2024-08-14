```markdown
# One-click Control of the Cloud Lighting
## Introduction
This is a script designed for controlling the lighting of the OneCloud device. With this script, you can easily control the LED lights on the device via the command line.
```
[中文版}(https://github.com/TobDeng0/-One-click-control-of-the-cloud-lighting/blob/main/README-zh.md)

![image](https://github.com/user-attachments/assets/f06fd74e-188a-44ea-8b5a-2c52fa33d63a)


## Installation Steps

Follow the steps below to install and use the script:

### Step 1: Download the Script

Use the following command to download the script to the `/usr/local/bin` directory. If the `curl` command fails, use the `wget` command instead.

#### Download using `curl`:
```bash
curl -o /usr/local/bin/wky https://raw.githubusercontent.com/TobDeng0/-One-click-control-of-the-cloud-lighting/main/wky.sh
```

#### Download using `wget`:
```bash
wget -O /usr/local/bin/wky https://raw.githubusercontent.com/TobDeng0/-One-click-control-of-the-cloud-lighting/main/wky.sh
```

### Step 2: Rename the Script File

Rename the downloaded script file to `wky`:

```bash
mv /usr/local/bin/wky.sh /usr/local/bin/wky
```

### Step 3: Make the Script Executable

Grant executable permissions to the script with the following command:

```bash
chmod +x /usr/local/bin/wky
```

## Usage

After installation, you can start the script and display the menu by entering the following command:

```bash
wky
```

Then, follow the menu prompts to select the desired LED lighting settings.

## License

This project is released under an open-source license, and you are welcome to use and modify it freely.
```

This English version of the guide clearly walks users through the installation process and provides instructions on how to use the script. Let me know if any further adjustments are needed!
