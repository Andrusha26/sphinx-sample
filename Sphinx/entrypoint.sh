#!/bin/bash

/bin/bash ./seed.sh

echo "Instance has been started."

/bin/bash ./run-indexer.sh
echo "Articles have been indexed."

/bin/bash ./run-searchd.sh
echo "Searchd has been run."

while true; do 
    sleep 3600
done