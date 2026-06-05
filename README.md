![Kali](https://img.shields.io/badge/Kali-Linux%20Rolling-557C94?logo=kalilinux)
![Docker](https://img.shields.io/badge/Docker-Supported-blue?logo=docker)

# Kali Linux Terminal on Railway

A browser-accessible Kali Linux terminal deployed on Railway using [ttyd](https://github.com/tsl0922/ttyd). Security tools in your browser — no local VM needed.

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.com/new/template)

## Description

Deploys a Kali Linux rolling container accessible from any browser. Pre-loaded with popular security and pentesting tools. Persistent volume mounted at `/root` keeps your work across restarts.

> ⚠️ **Legal Notice:** Use only on systems you own or have explicit written permission to test. Unauthorized use is illegal.

## Environment Variables

| Variable | Description |
|----------|-------------|
| `PORT` | Port for ttyd to listen on (default: 7681) |
| `USERNAME` | Login username for the web terminal |
| `PASSWORD` | Login password for the web terminal |

> **Note:** Always set USERNAME and PASSWORD before deploying.

## Features

- 🐉 Kali Linux Rolling (latest)
- 🔒 Password-protected web terminal
- 💾 Persistent volume mounted at `/root`
- 💻 Neofetch on login
- 🛠️ Pre-installed tools:

| Category | Tools |
|---|---|
| Scanning | nmap, nikto, gobuster, dirb |
| Exploitation | metasploit-framework, sqlmap, exploitdb |
| Password | hydra, john, hashcat, wordlists |
| Packet Analysis | tshark, tcpdump, wireshark-common |
| Editors | vim, nano |
| System | htop, tree, lsof, strace, less, man |
| Network | ifconfig, ip, ping, dig, openssh-client, telnet, netcat |
| Data | jq |
| General | sudo, python3, pip, git, curl, wget, neofetch |

## Installing More Kali Tools

```bash
apt-get install -y kali-tools-web
apt-get install -y kali-tools-wireless
apt-get install -y kali-tools-forensics
```

> **Note:** Files saved inside `/root` persist across restarts. Packages installed via `apt-get` will not survive a full redeploy.

## Use Cases

- CTF (Capture The Flag) challenges from anywhere
- Penetration testing practice on your own lab
- Security research and vulnerability analysis
- Learning ethical hacking without a local Kali VM
