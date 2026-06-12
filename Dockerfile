FROM kalilinux/kali-rolling

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y wget curl git python3 python3-pip fastfetch \
        net-tools iproute2 iputils-ping dnsutils \
        vim nano htop tree unzip zip \
        build-essential gcc g++ make \
        openssh-client telnet netcat-traditional \
        jq less man-db sudo lsof strace \
        nmap sqlmap hydra john hashcat \
        wireshark-common tshark tcpdump \
        nikto gobuster dirb \
        metasploit-framework \
        wordlists \
        exploitdb \
        procps file ca-certificates \
        libssl-dev zlib1g-dev libffi-dev \
        libsqlite3-dev libreadline-dev libncurses5-dev \
        libxml2-dev libxslt1-dev \
        libpq-dev default-libmysqlclient-dev \
        libyaml-dev libpng-dev libjpeg-dev \
        linux-libc-dev && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN wget -qO /bin/ttyd https://github.com/tsl0922/ttyd/releases/download/1.7.3/ttyd.x86_64 && \
    chmod +x /bin/ttyd

RUN echo "fastfetch" >> /root/.bashrc && \
    echo "cd /root" >> /root/.bashrc

EXPOSE 7681

CMD ["/bin/bash", "-c", "\
    echo \"export PS1='\\[\\033[01;31m\\]$USERNAME@kali\\[\\033[00m\\]:\\[\\033[01;34m\\]\\w\\[\\033[00m\\]\\$ '\" >> /root/.bashrc && \
    /bin/ttyd -p 7681 -c $USERNAME:$PASSWORD /bin/bash"]
