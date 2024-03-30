#/bin/sh

directory="$HOME/dev/www/website0.2/"
rsync -av $directory me@bengoldey.com:/var/www/website0.2/

cd $directory
git add .
read -p "commit message: " commit

git commit -m "$commit"

git push origin main