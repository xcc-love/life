#自动化提交
#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd public

# 初始化 Git 仓库
echo "Initializing a new Git repository..."
rm -rf .git  # 清理已有的 Git 仓库（可选）

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.gitee.io/<REPO>
echo "Pushing to GitHub..."
git push -f git@github.com:xcc-love/life.git main:page

echo "Deployment complete!"
cd -