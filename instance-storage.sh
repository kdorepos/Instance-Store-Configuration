#!/bin/bash

/sbin/pvcreate /dev/nvme0n1 /dev/nvme1n1
/sbin/vgcreate splunk-cache /dev/nvme0n1 /dev/nvme1n1
/sbin/lvcreate -n splunk-cache -l 100%VG splunk-cache
/sbin/mkfs.xfs /dev/splunk-cache/splunk-cache
/sbin/mkdir /splunk_cache
/bin/mount /dev/splunk-cache/splunk-cache /splunk_cache