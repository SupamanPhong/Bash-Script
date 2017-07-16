limit=100
dt=$(date '+%d/%m/%Y %H:%M:%S');
offsets=$(ntpq -nc peers | tail -n +3 | cut -c 62-66 | tr -d '-')
for offset in ${offsets}; do
    if [ ${offset:-0} -lt ${limit:-100} ]; then
        echo "$dt" >> /var/log/ntpcheck.log
        echo "NTP da toi" >> /var/log/ntpcheck.log
    fi
done

