#/bin/sh

diff_files=`echo "$@" | awk '{print $(NF-1),$NF}'`
vimdiff -f $diff_files

#shift 5
#vimdiff -f "$@"
