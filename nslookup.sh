# cat .mylookup.sh
while read ADDR
do
nslookup ${ADDR} | tee -a mylookup.log
done < mylookup
