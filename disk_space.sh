#!/bin/bash
filesystems=("/")
for i in ${filesystems[@]}; do
usage=$(df -h $i | tail -n 1 | awk '{print $5}' | cut -d % -f1)
if [ $usage -lt 90 ]; then
alert="Running out of space on $i, Usage is: $usage%"
echo "Sending out a disk space alert email."
echo $alert | mail -s "$i is $usage% full" john.wati.ke@gmail.com
fi
done