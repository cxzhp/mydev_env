#/bin/sh

process_name='gitlab-workhorse'
start_command='nohup sudo gitlab-workhorse -authBackend http://localhost:8080/   >> /home/git/gitlab-workhorse/gitlab-workhorse.log &'
pid=`ps -ef |grep $process_name |grep exec |awk '{print \$2}'`

if [ "$pid" = "" ];
then
	echo "start "$process_name ;
	$($start_command)
	echo "start end";

else
	echo "start fail" $process_name" exists.";
	echo $pid
fi


#if need stop, pls command "kill $pid"
