#!/bin/bash
sleep 5

mysql -h db -u root -proot < /sphinx/seed.sql

rm /sphinx/seed.sql

echo "DB has been seeded."

rm /sphinx/seed.sh