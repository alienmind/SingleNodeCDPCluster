VOLUMES="-v /mnt/ext:/mnt/ext"
echo "Running CentOS 7 + Systemd"
docker run --privileged --name centos-systemd -td \
  -v /run -v /sys/fs/cgroup:/sys/fs/cgroup:ro  \
  $VOLUMES \
  centos-systemd /usr/sbin/init

echo <<EOF
# Run now
docker exec -it centos-systemd bash
# ... to attach to the running instance
EOF
