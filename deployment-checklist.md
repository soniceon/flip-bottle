# FlipBottle.net SEO优化部署检查清单

## 🚀 部署前准备

### 1. 服务器信息
- [ ] 确认服务器地址
- [ ] 确认FTP/SSH凭据
- [ ] 确认网站根目录路径
- [ ] 备份现有文件

### 2. 文件准备
- [ ] index.html (36KB, 965行)
- [ ] robots.txt (464B, 34行)
- [ ] sitemap.xml (1.2KB, 39行)
- [ ] ms-full.txt (186B, 6行)
- [ ] ai-crawler-optimization.txt (950B, 43行)
- [ ] favicon.svg (1.0KB, 23行)
- [ ] favicon.ico (1.0B, 1行)
- [ ] site.webmanifest (597B, 21行)
- [ ] .htaccess (1.6KB, 43行)
- [ ] images/og-image.jpg
- [ ] images/twitter-image.jpg

## 📤 部署步骤

### 方法1: SSH部署
```bash
# 1. 修改deploy.sh中的服务器信息
# 2. 运行部署脚本
chmod +x deploy.sh
./deploy.sh
```

### 方法2: FTP部署
```bash
# 1. 修改deploy-ftp.sh中的FTP信息
# 2. 运行FTP部署脚本
chmod +x deploy-ftp.sh
./deploy-ftp.sh
```

### 方法3: 手动上传
1. 使用FTP客户端连接服务器
2. 上传所有文件到网站根目录
3. 确保images目录存在
4. 设置正确的文件权限

## ✅ 部署后验证

### 1. 文件访问测试
- [ ] https://flipbottle.net/ (主页)
- [ ] https://flipbottle.net/robots.txt
- [ ] https://flipbottle.net/sitemap.xml
- [ ] https://flipbottle.net/ms-full.txt
- [ ] https://flipbottle.net/ai-crawler-optimization.txt
- [ ] https://flipbottle.net/favicon.svg
- [ ] https://flipbottle.net/site.webmanifest
- [ ] https://flipbottle.net/images/og-image.jpg
- [ ] https://flipbottle.net/images/twitter-image.jpg

### 2. SEO工具验证
- [ ] Google Search Console - 提交sitemap
- [ ] AITDK工具 - 重新分析网站
- [ ] 检查favicon是否显示
- [ ] 验证Open Graph图片
- [ ] 验证Twitter Card图片

### 3. 功能测试
- [ ] 游戏iframe正常加载
- [ ] 导航链接正常工作
- [ ] 移动端显示正常
- [ ] 全屏功能正常

## 🔍 监控指标

### 1. 搜索引擎索引
- [ ] Google索引状态
- [ ] Bing索引状态
- [ ] 其他搜索引擎索引

### 2. AI爬虫访问
- [ ] ChatGPT-User访问量
- [ ] Google-Extended访问量
- [ ] PerplexityBot访问量
- [ ] Applebot访问量

### 3. 流量统计
- [ ] 总访问量
- [ ] AI流量占比
- [ ] 搜索引擎流量
- [ ] 直接访问流量

## 📈 预期效果

### 短期目标 (2周内)
- [ ] 获得13K+访问量
- [ ] AI流量占比提升
- [ ] 搜索引擎排名改善
- [ ] 解决所有SEO问题

### 长期目标
- [ ] 持续监控和优化
- [ ] 根据数据调整策略
- [ ] 保持AI友好度
- [ ] 提升用户体验

## 🆘 故障排除

### 常见问题
1. **文件权限问题**: 确保文件权限为644
2. **.htaccess不生效**: 检查Apache配置
3. **图片不显示**: 检查图片路径和权限
4. **SEO工具检测失败**: 等待缓存更新

### 联系支持
- 技术问题: 检查服务器日志
- SEO问题: 使用Google Search Console
- 性能问题: 使用PageSpeed Insights 