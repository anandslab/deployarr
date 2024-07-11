#!/bin/bash
# All containers (profile "media") that access rclone/MergerFS mounts set to NOT restart automatically at boot time. 
# This is because, rclone can take a few seconds/minutes to mount remote drives.
# This script checks the required mounts every 5 seconds and as soon as required drives are mounted, it starts the "media" containers.

# CHECKING FOR DRIVE MOUNTS
num_drives=1 # number of mounts to check
# Drive 1
drive1="REMOTE-MOUNTPOINT-PLACEHOLDER"
drive1_seconds=0
drive1_status=0
# Drive 2 - not used
# drive2=""
# drive2_seconds=0
# drive2_status=0

mounted=0
rounds=0

while [[ "$mounted" -ne "$num_drives" ]]; do
	if [[ "$(systemctl is-active docker)" == "active" ]]; then
		# Drive 1
		if mount | grep ${drive1} > /dev/null; then
			if [[ "$drive1_status" -eq 0 ]]; then
				mounted=$((mounted+1))
				drive1_seconds=$((rounds * 5))
				drive1_status=1
			fi
		fi

		# Drive 2
		# if mount | grep ${drive2} > /dev/null; then
		# 	if [[ "$drive2_status" -eq 0 ]]; then
		# 		mounted=$((mounted+1))
		# 		drive2_seconds=$((rounds * 5))
		# 		drive2_status=1
		# 	fi
		# fi

		# Timeout if mounting is not successful after 15 min (180x5)
		if [[ $rounds -eq 180 ]]; then
		break
		fi
		sleep 5
		rounds=$((rounds + 1))
	fi
done

STARTSTOP_DATE=$(date)

if [[ "$mounted" -eq "$num_drives" ]]; then
	sudo docker compose --profile media -f COMPOSE-FILE-PLACEHOLDER up -d
	echo "$STARTSTOP_DATE: Media containers started" >> SMAB-LOG-PLACEHOLDER
else
	sudo docker compose --profile media -f COMPOSE-FILE-PLACEHOLDER down
	echo "$STARTSTOP_DATE: Media containers start failed" >> SMAB-ERR-PLACEHOLDER
fi