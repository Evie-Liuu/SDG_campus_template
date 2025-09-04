#!/usr/bin/env bash
# 部署到 GitHub Pages (docs/ 模式)

set -e  # 如果有錯就停止執行

echo "開始建置專案..."
npm run build

echo "清理舊的 docs/..."
rm -rf docs

echo "搬移 dist/ -> docs/..."
cp -r dist docs

echo "推送到 GitHub..."
git add docs
git commit -m "deploy to GitHub Pages" || echo "⚠️ 沒有變更需要提交"
git push origin main

echo "部署完成！請稍等 GitHub Pages 更新"