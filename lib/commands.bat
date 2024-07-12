# Convert a crt certifcate to pem
openssl x509 -in mycert.crt -out mycert.pem -outform PEM

rtpengine --interface=10.43.0.55 --listen-http=10.43.0.55:2224\
  --listen-udp=10.43.0.55:22222 --tos=184 \
  --pidfile=/run/rtpengine.pid


listen-ng = localhost:2223
# listen-tcp = 25060
# listen-udp = 12222

### interface for HTTP, WS and Prometheus
# listen-http = 9101
listen-http = localhost:2225

# listen-https = localhost:2226
# https-cert =
# https-key =

listen-cli = localhost:2224

timeout = 60
silent-timeout = 3600
tos = 184
# control-tos = 184
# control-pmtu = dont
# delete-delay = 30
# final-timeout = 10800
# endpoint-learning = heuristic
# reject-invalid-sdp = false

# foreground = false
# pidfile = /run/ngcp-rtpengine-daemon.pid
# num-threads = 16
# media-num-threads = 8
# http-threads = 4

port-min = 30000
port-max = 40000
# max-sessions = 5000

# software-id = rtpengine
# max-load = 5
# max-cpu = 90
# max-bandwidth = 10000000
# scheduling = default
# priority = -3
# idle-scheduling = idle
# idle-priority = 10

recording-dir = /var/spool/rtpengine
recording-method = proc
# recording-format = raw

# redis = 127.0.0.1:6379/5
# redis-write = password@12.23.34.45:6379/42
# redis-num-threads = 8
# no-redis-required = false
# redis-expires = 86400
# redis-allowed-errors = -1
# redis-disable-time = 10
# redis-cmd-timeout = 0
# redis-connect-timeout = 1000

# b2b-url = http://127.0.0.1:8090/
# xmlrpc-format = 0
# janus-secret = ABC123

# log-level = 6
# log-stderr = false
# log-facility = daemon
# log-facility-cdr = local0
# log-facility-rtcp = local1
# debug-srtp = false
# log-srtp-keys = false
# dtls-cert-cipher = prime256v1
# dtls-rsa-key-size = 2048
# dtls-mtu = 1200
# dtls-signature = sha-256
# dtls-ciphers = DEFAULT:!NULL:!aNULL:!SHA256:!SHA384:!aECDH:!AESGCM+AES256:!aPSK

# dtmf-no-log-injects = 0

# graphite = 127.0.0.1:9006
# graphite-interval = 60
# graphite-prefix = foobar.

# homer = 123.234.345.456:65432
# homer-protocol = udp
# homer-id = 2001

# mysql-host = localhost
# mysql-port = 3306
# mysql-user = mysql
# myser-pass = mysql
# mysql-query = select data from voip.files where id = %llu

# dtx-delay = 50
# max-dtx = 600
# dtx-buffer = 5
# dtx-lag = 100
# dtx-shift = 0
# amr-dtx = native
# dtx-cn-params = 60
# silence-detect = 0.05
# cn-payload = 60

# sip-source = false
# dtls-passive = false

# mqtt-host = localhost
# mqtt-port = 1883
# mqtt-tls-alpn = mqtt
# mqtt-id =
# mqtt-user = foo
# mqtt-pass = bar
# mqtt-capath =
# mqtt-cafile =
# mqtt-certfile =
# mqtt-keyfile =
# mqtt-publish-qos = 0
# mqtt-publish-topic = rtpengine
# mqtt-publish-interval = 5000
# mqtt-publish-scope = media

# mos = CQ
# poller-per-thread = false
# socket-cpu-affinity = -1
# rtcp-interval = 5000

[rtpengine-testing]
table = -1
interface = 10.15.20.121
listen-ng = 2223
foreground = true
log-stderr = true
log-level = 7
