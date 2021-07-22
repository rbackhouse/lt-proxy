FROM envoyproxy/envoy:v1.18.3
COPY ./proxy_tls.yaml /etc/envoy/envoy.yaml
COPY ./locationtracker-crt.pem /etc/envoy/locationtracker-crt.pem
COPY ./locationtracker-key.pem /etc/envoy/locationtracker-key.pem
RUN chmod go+r /etc/envoy/envoy.yaml