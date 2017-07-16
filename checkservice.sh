service=assp
if (( $(ps -ef | grep -v grep | grep $service | wc -l) > 0 ))
then
echo "Now is $(date) and $service is running!!! restart now...."  >> /var/log/checkservice.log
pkill -f $service
#systemctl start $service | head -5 >> /var/log/checkservice.log
else
echo "Now is $(date) and $service is die!!! start now...."  >> /var/log/checkservice.log
systemctl start $service | head -5 >> /var/log/checkservice.log
fi
