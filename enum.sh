#!/bin/bash
for i in {1..10}
do
curl localhost/user/"$i"/ >> users.txt
done
sed -e 's/<meta http-equiv="refresh" content="N; URL=\/user\///g' users.txt > users1.txt
rm users.txt
sed -e 's/.html">//g' users1.txt > custompayload.txt
rm users1.txt
