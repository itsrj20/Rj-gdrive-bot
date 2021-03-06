export MAX_DOWNLOAD_SPEED=0
tracker_list=$(curl -Ns https://raw.githubusercontent.com/ngosang/trackerslist/master/trackers_all.txt | awk '$1' | tr '\n' ',')
export MAX_CONCURRENT_DOWNLOADS=7
aria2c --enable-rpc --rpc-listen-all=false --rpc-listen-port 6800 --check-certificate=false \
   --max-connection-per-server=10 --rpc-max-request-size=1024M \
   --bt-tracker="[$tracker_list]" --bt-max-peers=0 --seed-time=0.01 --min-split-size=10M \
   -