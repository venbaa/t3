#!/bin/bash
npm install
git config --global user.name ${GIT_USER_NAME}
git config --global user.email ${GIT_USER_EMAIL}
sed -i'' "s~git@github.com:venbaa/t3.git~https://${GH_TOKEN}:x-oauth-basic@github.com/venbaa/t3.git~" _config.yml
# cp -rf themes/blog_tranquilpeak/* themes/tranquilpeak
# cd themes/tranquilpeak
# npm install
# npm run lint
# npm run prod
# cd ..
hexo clean
# hexo algolia
pwd #to identify present working directory
mkdir public && mkdir public/admin
cp source/admin/config.yml public/admin/config.yml
# cp ../source/admin/netlify.css ../public/admin/netlify.css
# hexo generate
hexo deploy --silent