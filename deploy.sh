#!/usr/bin/env bash
# 部署到 GitHub Pages (docs/ 模式)


# 當有錯誤發生時，停止腳本
set -e

# 1. 建置專案 依照 vite.config.js 設定把結果輸出到 docs/
npm run build

# 2. 將 docs/ 加入 git
git add docs -f

# 3. 提交變更
git commit -m "deploy: update GitHub Pages" || true

# 4. 推送到 main 分支
git push origin main

echo "部署完成！請稍等 GitHub Pages 更新"