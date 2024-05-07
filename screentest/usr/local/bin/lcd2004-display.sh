#!/bin/sh
filename=/tmp/blahtest.txt

date +%D\ %r > $filename




cat $filename | awk -F\n '{print "python3 /usr/local/bin/writewords.py \"" $1 "\" \"" $2 "\" \"" $3 "\" \"" $4 "\" "}' | sh
#cat $filename | awk -F\n '{print "python3 /usr/local/bin/writewords.py \"" $1 "\" \"" $2 "\" \"" $3 "\" \"" $4 "\" "}' | sh
#fortune -s -n 80 | fold -s -w 20
