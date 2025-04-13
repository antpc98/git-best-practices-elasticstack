#!/bin/bash

log_dir="./logs"
log_file="$log_dir/simulated_syslog.log"
mkdir -p "$log_dir"
> "$log_file"

# Simulated usernames
users=("admin" "root" "javier" "ana" "guest" "john")

# IP pools
external_ips=("203.0.113.1" "198.51.100.42" "145.23.12.99")
internal_ips=("192.168.1.10" "192.168.1.11" "10.0.0.3")

# Log severities
severities=("INFO" "WARNING" "ERROR")

# Log event templates
events=(
  "sshd[12345]: Accepted password for \$user from \$ip port 22 ssh2"
  "sshd[12346]: Failed password for invalid user \$user from \$ip port 22 ssh2"
  "sudo:   \$user : TTY=pts/0 ; PWD=/home/\$user ; USER=root ; COMMAND=/bin/apt update"
  "iptables: Dropped incoming connection from \$ip"
  "kernel: [UFW BLOCK] IN=eth0 OUT= MAC=ff:ff:ff SRC=\$ip DST=192.168.1.10 LEN=60"
)

# Simulate logs across the last 3 days
for day_offset in {2..0}; do
  date_prefix=$(date --date="$day_offset day ago" "+%b %d")

  for i in {1..50}; do
    # Random time
    hour=$(shuf -i 0-23 -n 1)
    minute=$(shuf -i 0-59 -n 1)
    second=$(shuf -i 0-59 -n 1)

    timestamp=$(printf "%s %02d:%02d:%02d" "$date_prefix" "$hour" "$minute" "$second")

    user=${users[$RANDOM % ${#users[@]}]}
    ip_pool=("${internal_ips[@]}" "${external_ips[@]}")
    ip=${ip_pool[$RANDOM % ${#ip_pool[@]}]}

    severity=${severities[$RANDOM % ${#severities[@]}]}
    raw_event=${events[$RANDOM % ${#events[@]}]}

    # Replace placeholders in the log event
    log_message=$(echo "$raw_event" | sed "s/\\\$user/$user/g" | sed "s/\\\$ip/$ip/g")

    # Simulate log hostname and write to file
    echo "$timestamp myhost [$severity] $log_message" >> "$log_file"
  done
done

echo "✅ Log file generated at: $log_file"
