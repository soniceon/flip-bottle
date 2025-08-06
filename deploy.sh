#!/bin/bash

# FlipBottle.net SEO优化部署脚本
# 基于AI友好度优化的完整部署

echo "🚀 开始部署 FlipBottle.net SEO优化文件..."

# 设置变量
REMOTE_HOST="your-server.com"
REMOTE_USER="your-username"
REMOTE_PATH="/var/www/flipbottle.net/"
LOCAL_PATH="./"

# 创建备份
echo "📦 创建备份..."
ssh $REMOTE_USER@$REMOTE_HOST "cd $REMOTE_PATH && tar -czf backup-$(date +%Y%m%d-%H%M%S).tar.gz *"

# 推送主要文件
echo "📤 推送主要文件..."
scp $LOCAL_PATH/index.html $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH
scp $LOCAL_PATH/robots.txt $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH
scp $LOCAL_PATH/sitemap.xml $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH
scp $LOCAL_PATH/ms-full.txt $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH
scp $LOCAL_PATH/ai-crawler-optimization.txt $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH

# 推送图标文件
echo "🎨 推送图标文件..."
scp $LOCAL_PATH/favicon.svg $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH
scp $LOCAL_PATH/favicon.ico $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH
scp $LOCAL_PATH/site.webmanifest $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH

# 推送服务器配置
echo "⚙️ 推送服务器配置..."
scp $LOCAL_PATH/.htaccess $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH

# 推送图片文件
echo "🖼️ 推送图片文件..."
ssh $REMOTE_USER@$REMOTE_HOST "mkdir -p $REMOTE_PATH/images"
scp $LOCAL_PATH/images/* $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH/images/

# 设置文件权限
echo "🔐 设置文件权限..."
ssh $REMOTE_USER@$REMOTE_HOST "chmod 644 $REMOTE_PATH/*.html $REMOTE_PATH/*.txt $REMOTE_PATH/*.xml $REMOTE_PATH/*.svg $REMOTE_PATH/*.ico $REMOTE_PATH/*.json"
ssh $REMOTE_USER@$REMOTE_HOST "chmod 644 $REMOTE_PATH/images/*"
ssh $REMOTE_USER@$REMOTE_HOST "chmod 644 $REMOTE_PATH/.htaccess"

# 验证部署
echo "✅ 验证部署..."
ssh $REMOTE_USER@$REMOTE_HOST "ls -la $REMOTE_PATH"

echo "🎉 部署完成！"
echo ""
echo "📋 部署的文件包括："
echo "  ✅ index.html - 主页面（SEO优化）"
echo "  ✅ robots.txt - 搜索引擎爬虫指导（含AI爬虫优化）"
echo "  ✅ sitemap.xml - 网站地图"
echo "  ✅ ms-full.txt - 完整URL列表（AI爬虫优化）"
echo "  ✅ ai-crawler-optimization.txt - AI爬虫优化文件"
echo "  ✅ favicon.svg - SVG格式网站图标"
echo "  ✅ favicon.ico - ICO格式网站图标"
echo "  ✅ site.webmanifest - PWA清单"
echo "  ✅ .htaccess - Apache服务器配置（含AI优化头）"
echo "  ✅ images/ - 图片文件目录"
echo ""
echo "🔍 下一步："
echo "  1. 在Google Search Console中提交新的sitemap"
echo "  2. 请求重新索引主页"
echo "  3. 监控AI爬虫访问情况"
echo "  4. 检查robots.txt和sitemap.xml是否可访问" 