#!/bin/bash

# FTP部署脚本
# 适用于大多数共享主机

echo "🚀 开始FTP部署 FlipBottle.net SEO优化文件..."

# 设置FTP变量
FTP_HOST="your-ftp-server.com"
FTP_USER="your-username"
FTP_PASS="your-password"
FTP_PATH="/public_html/"

# 使用lftp进行批量上传
lftp -c "
open -u $FTP_USER,$FTP_PASS $FTP_HOST
cd $FTP_PATH
mkdir -p images
put index.html
put robots.txt
put sitemap.xml
put ms-full.txt
put ai-crawler-optimization.txt
put favicon.svg
put favicon.ico
put site.webmanifest
put .htaccess
put images/og-image.jpg
put images/twitter-image.jpg
bye
"

echo "🎉 FTP部署完成！" 