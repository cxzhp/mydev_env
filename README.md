# mydev_env
# :set tenc=gbk enc=utf-8
# "100涓熀鏈細鏉炬郸寮ュお閮庣殑浜虹敓淇℃潯"


git add xxx
git commit -a  -m "add xxx"
git diff HEAD | grep diff | awk '{print $3}' | sed s#a/##g
git push origin master
