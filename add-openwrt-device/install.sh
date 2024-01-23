
cd /tmp  # /tmp runs in memory
wget https://storage.googleapis.com/downloads.openwisp.io/openwisp-config/latest/openwisp-config_1.1.0a-1_all.ipk
opkg update
opkg install ./openwisp-config_1.1.0a-1_all.ipk
