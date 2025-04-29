#!/bin/bash
cd ~/mexc_trade || mkdir ~/mexc_trade && cd ~/mexc_trade

# 匯入 API_KEY 與 SECRET（從 .env 讀取）
source ~/.env

# 刪除舊腳本
rm -f 123.py

# 下載最新版腳本
curl -o 123.py https://raw.githubusercontent.com/a84373564/888/main/123.py

# 自動將 API 金鑰寫入腳本
sed -i "s/你的API_KEY/$API_KEY/" 123.py
sed -i "s/你的API_SECRET/$API_SECRET/" 123.py

# 執行
python3 123.py
