FROM mitmproxy/mitmproxy:5.0.1
ADD https://github.com/KevCui/mitm-scripts /home/mitmproxy
WORKDIR /home/mitmproxy/mitm-scripts
CMD ['mitmweb', '--web-iface','0.0.0.0','-s','/home/mitmproxy/mitm-redirect-url.py']
