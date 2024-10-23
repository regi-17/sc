
# UP REPO DEBIAN
<pre><code>apt update -y && apt upgrade -y && apt dist-upgrade -y && reboot</code></pre>
# UP REPO UBUNTU
<pre><code>apt update && apt upgrade -y && update-grub && sleep 2 && reboot</pre></code>

### INSTALL SCRIPT 
<pre><code>apt update && apt upgrade -y --fix-missing && update-grub && sleep 2 && apt install -y wget && apt install -y curl && apt install haproxy -y && apt install build-essential -y && apt-get install -y jq && apt-get install shc && apt install -y bzip2 gzip coreutils screen curl && wget https://raw.githubusercontent.com/regi-17/sc/main/main.sh && chmod +x main.sh && ./main.sh
</code></pre>

### jika gagal pakai yg ini
<pre><code>sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt upgrade -y --fix-missing && update-grub && sleep 2 && apt install -y wget && apt install -y curl && apt install haproxy -y && apt install build-essential -y && apt-get install -y jq && apt-get install shc && apt install -y bzip2 gzip coreutils screen curl && wget https://raw.githubusercontent.com/regi-17/sc/main/main.sh && chmod +x main.sh && ./main.sh
</code></pre>

### UPDATE SCRIPT 
<pre><code>wget -q https://raw.githubusercontent.com/regi-17/sc/main/update.sh && chmod +x update.sh && ./update.sh
</code></pre>
