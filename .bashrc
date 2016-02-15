# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
		. /etc/bashrc
fi
alias t="sh ~/start_tmux.sh"
alias mysync="rsync -arzv test.php  forum@cp01-yxtocp037.vm.baidu.com:/home/work/orp001/app/lightapp/service/unittest/test.php"
alias qsync="cd /home/users/zhouping01/workspace/doing/task/bztask/ && find .  -type f -mmin -10 |grep -v \"~\" |sed s/\"^\.\/\"//g | awk '{print \"rsync -arzv \"\$1\"  forum@cq01-hj-clientplatform-frontend03.epc.baidu.com:/home/work/orp/\"\$1}' | sh"
alias qsyncdebug="cd /home/users/zhouping01/workspace/doing/task/bztask/ && find .  -type f -mmin -10 |grep -v \"~\" |sed s/\"^\.\/\"//g | awk '{print \"rsync -arzv \"\$1\"  forum@cq01-hj-clientplatform-frontend03.epc.baidu.com:/home/work/orp/\"\$1}'"
[[ -s "/home/users/zhouping01/.jumbo/etc/bashrc" ]] && source "/home/users/zhouping01/.jumbo/etc/bashrc"
alias clear_swp="find . -name ".*sw*" -exec rm -rf {} \;"
alias clear_2015='find . -name "*2015*" -exec rm -rf {} \;'
alias offline='ssh forum@cp01-hj-platform-frontend01.epc.baidu.com'
alias 1='screen -dr offline'
alias deploy_py='python deploy.py  -h cq01-hj-clientplatform-frontend03.epc.baidu.com -p /home/work/orp/'
