#!/bin/bash

# 显示选项菜单
echo "请选择一个选项:"
echo "1) 红色"
echo "2) 蓝色"
echo "3) 绿色"
echo "4) 紫色 (红色 + 蓝色)"
echo "5) 黄色 (红色 + 绿色)"
echo "6) 青色 (蓝色 + 绿色)"
echo "7) 白色 (红色 + 蓝色 + 绿色)"
echo "8) 关闭所有 LED"
echo "9) 退出"
echo "10) 颜色渐变切换"

# 读取用户输入
read -p "输入你的选择 [1-10]: " choice

# 渐变的步长（调整越小，变化越平滑）
step=5

# 等待时间（控制渐变速度）
delay=0.5

# 渐变函数：从start_value到end_value的变化
fade() {
    local start_value=$1
    local end_value=$2
    local color=$3

    if [ "$start_value" -lt "$end_value" ]; then
        for (( i=$start_value; i<=$end_value; i+=step )); do
            echo $i > "/sys/class/leds/onecloud:$color:alive/brightness"
            sleep $delay
        done
    else
        for (( i=$start_value; i>=$end_value; i-=step )); do
            echo $i > "/sys/class/leds/onecloud:$color:alive/brightness"
            sleep $delay
        done
    fi
}

# 根据用户的选择执行相应的命令
case $choice in
    1)
        echo "打开红色 LED..."
        echo 1 > /sys/class/leds/onecloud:red:alive/brightness
        echo 0 > /sys/class/leds/onecloud:blue:alive/brightness
        echo 0 > /sys/class/leds/onecloud:green:alive/brightness
        ;;
    2)
        echo "打开蓝色 LED..."
        echo 0 > /sys/class/leds/onecloud:red:alive/brightness
        echo 1 > /sys/class/leds/onecloud:blue:alive/brightness
        echo 0 > /sys/class/leds/onecloud:green:alive/brightness
        ;;
    3)
        echo "打开绿色 LED..."
        echo 0 > /sys/class/leds/onecloud:red:alive/brightness
        echo 0 > /sys/class/leds/onecloud:blue:alive/brightness
        echo 1 > /sys/class/leds/onecloud:green:alive/brightness
        ;;
    4)
        echo "打开紫色 LED (红色 + 蓝色)..."
        echo 1 > /sys/class/leds/onecloud:red:alive/brightness
        echo 1 > /sys/class/leds/onecloud:blue:alive/brightness
        echo 0 > /sys/class/leds/onecloud:green:alive/brightness
        ;;
    5)
        echo "打开黄色 LED (红色 + 绿色)..."
        echo 1 > /sys/class/leds/onecloud:red:alive/brightness
        echo 0 > /sys/class/leds/onecloud:blue:alive/brightness
        echo 1 > /sys/class/leds/onecloud:green:alive/brightness
        ;;
    6)
        echo "打开青色 LED (蓝色 + 绿色)..."
        echo 0 > /sys/class/leds/onecloud:red:alive/brightness
        echo 1 > /sys/class/leds/onecloud:blue:alive/brightness
        echo 1 > /sys/class/leds/onecloud:green:alive/brightness
        ;;
    7)
        echo "打开白色 LED (红色 + 蓝色 + 绿色)..."
        echo 1 > /sys/class/leds/onecloud:red:alive/brightness
        echo 1 > /sys/class/leds/onecloud:blue:alive/brightness
        echo 1 > /sys/class/leds/onecloud:green:alive/brightness
        ;;
    8)
        echo "关闭所有 LED..."
        echo 0 > /sys/class/leds/onecloud:red:alive/brightness
        echo 0 > /sys/class/leds/onecloud:blue:alive/brightness
        echo 0 > /sys/class/leds/onecloud:green:alive/brightness
        ;;
    9)
        echo "退出..."
        exit 0
        ;;
    10)
        echo "开始颜色渐变切换..."
        while true; do
            # 红 -> 绿
            fade 255 0 red &
            fade 0 255 green &
            wait
            
            # 绿 -> 蓝
            fade 255 0 green &
            fade 0 255 blue &
            wait
            
            # 蓝 -> 红
            fade 255 0 blue &
            fade 0 255 red &
            wait
        done
        ;;
    *)
        echo "无效的选择，请重试。"
        ;;
esac
