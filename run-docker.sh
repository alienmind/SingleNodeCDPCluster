##IMAGE=centos-systemd # Base
IMAGE=cdp7:latest    # Cloudera Manager preinstalled
PORTS="-p 7180:7180"
VOLUMES="-v /mnt/ext:/mnt/ext"


echo <<EOF
# Run now
docker exec -it centos-systemd bash
# ... to attach to the running instance
EOF

echo "Running CentOS 7 + Systemd"
docker run --hostname cdp7 --privileged --name cdp7 -td \
  -v /run -v /sys/fs/cgroup:/sys/fs/cgroup:ro  \
  $VOLUMES \
  $PORTS \
  $IMAGE \
  /usr/sbin/init

