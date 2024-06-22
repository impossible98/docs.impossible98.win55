# QNAP

## Container Station

```bash
cat << EOF > /share/CACHEDEV1_DATA/.qpkg/container-station/etc/docker.json
{
  "experimental": false,
  "default-address-pools": [
    {
      "base": "172.29.0.0/16",
      "size": 22
    }
  ],
  "default-ulimits": {
    "nofile": {
      "Name": "nofile",
      "Hard": 65535,
      "Soft": 65535
    }
  },
  "group": "administrators",
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "10m",
    "max-file": "10"
  },
  "runtimes": {
    "kata-runtime": {
      "path": "/opt/kata/bin/kata-runtime"
    },
    "nvidia-runtime": {
      "path": "/opt/nvidia/bin/nvidia-container-runtime"
    }
  },
  "registry-mirrors": [
    "https://wmqioyg1.mirror.aliyuncs.com",
    "https://docker.m.daocloud.io"
    ]
}

EOF
/etc/init.d/container-station.sh restart
```
