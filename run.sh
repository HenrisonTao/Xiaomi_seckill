#!/bin/sh
######################
###Setting parameter##
COOKIE="Cookie setting"
NEXT_START_TRY_TIME=1541764790
WAIT_TIME 5 #seconds
######################

# loop while timeup
timestamp=`date +%s`
while [ $timestamp -le $NEXT_START_TRY_TIME ]
do
        timestamp=`date +%s`
        echo "wait ? seconds" 
        sleep $WAIT_TIME
done


while [ 1 ] 
do
# Product 1
echo "Try 4181700046 ..."
curl -X GET \
  'https://fs.buy.mi.com/tw/seckill/do?jsonpcallback=seckill&tag=36&tid=6&goods_id=4170700013' \
  -H 'Cache-Control: no-cache' \
  -H "Cookie: $COOKIE" \
  -H 'Origin: https://event.mi.com' \
  -H 'Referer: https://event.mi.com/tw/sales2018/super-sales-day' &

# Product 2
echo "Try 4171900008 ..."
curl -X GET \
  'https://fs.buy.mi.com/tw/seckill/do?jsonpcallback=seckill&tag=36&tid=6&goods_id=4181600032' \
  -H 'Cache-Control: no-cache' \
  -H "Cookie: $COOKIE" \
  -H 'Origin: https://event.mi.com' \
  -H 'Referer: https://event.mi.com/tw/sales2018/super-sales-day' &
wait

done
