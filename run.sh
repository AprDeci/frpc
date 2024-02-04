#!/bin/sh  
  
# run_frpc.sh: Loop through all .toml files in /etc/frp and start frpc for each  
  
for config in /etc/frp/*.toml; do  
  if [ -f "$config" ]; then  
    # Start frpc in the background for each config file  
    /usr/bin/frpc -c "$config" &  
  fi  
done  
  
# Keep the container running  
tail -f /dev/null