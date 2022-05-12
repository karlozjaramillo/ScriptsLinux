#!/bin/bash
#Devuelve una lista de id's de los usuarios del sistema
id=$(cat /etc/passwd | awk -F ":" '{print $3}')

echo "Los usuarios con ID mayor a 1000 son:"
echo "========================"
#Recorre la lista de usuarios del sistema y filtra los que tengan id mayor a 1000
for ID in do $id; do
    if [ $ID -gt 1000 > /dev/null 2>&1 ] ; then
                users=$(cat /etc/passwd | cut -d: -f1,3 | grep $ID | cut -d: -f1,2)
                echo "$users"
        fi
done
echo "========================"


