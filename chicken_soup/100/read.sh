#/bin/sh


#split pdf with APDFSplitforMac.dmg
#open pdf each day
#strategy

file_num=`find . -name "*.pdf" | wc -l`
the_seed=`date "+%Y%m%d%H%M%S"`
the_x_num=$(( $the_seed % $file_num ))

file_name=`find . -name "*.pdf" | head -n $the_x_num |tail -n 1`

open $file_name &
