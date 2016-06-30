# mydev_env


git add xxx
git commit -a  -m "add xxx"
git diff HEAD | grep diff | awk '{print $3}' | sed s#a/##g
git push origin master
