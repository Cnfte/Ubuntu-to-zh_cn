#!/bin/bash

# 安装简体中文语言包
echo "更新软件包列表..."
sudo apt-get update
if [ $? -ne 0 ]; then
  echo "错误: 更新软件包列表失败。"
  exit 1
fi

echo "安装简体中文语言包..."
sudo apt-get install -y language-pack-zh-hans
if [ $? -ne 0 ]; then
  echo "错误: 安装简体中文语言包失败。"
  exit 1
fi

# 设置系统语言为简体中文
echo "设置系统语言为简体中文..."
sudo update-locale LANG=zh_CN.UTF-8
if [ $? -ne 0 ]; then
  echo "错误: 设置系统语言失败。"
  exit 1
fi

# 重启系统
echo "重启系统..."
sudo reboot
