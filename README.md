![Kali](https://img.shields.io/badge/Kali-Linux%20Rolling-557C94?logo=kalilinux)
![Docker](https://img.shields.io/badge/Docker-Supported-blue?logo=docker)

# Deploy and Host Kali Linux Terminal on Railway

Kali Linux Terminal is a browser-accessible Kali Linux Rolling shell deployed on Railway via [ttyd](https://github.com/tsl0922/ttyd). Pre-loaded with popular pentesting and CTF tools, common C/system dev libraries, password-protected access, and persistent storage at `/root` that survives restarts. No local VM required.

> ⚠️ **Legal Notice:** Use only on systems you own or have explicit written permission to test. Unauthorized use is illegal.

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.com/new/template)

## About Hosting Kali Linux Terminal

Hosting Kali Linux Terminal on Railway means spinning up a Kali Linux Rolling container with a browser-based terminal exposed via ttyd. Kali Rolling always pulls the latest packages from Kali's repositories, keeping your security tools up to date on every redeploy. The image ships with a broad set of pentesting tools as well as commonly used C libraries — libssl-dev, zlib1g-dev, libffi-dev, libsqlite3-dev, libreadline-dev, libncurses5-dev, libxml2-dev, libxslt1-dev, libpq-dev, libmysqlclient-dev, libyaml-dev, libpng-dev, libjpeg-dev, and linux-headers — so language runtimes and native extensions compile without extra setup. A persistent volume is mounted at `/root` so your wordlists, scripts, and notes survive restarts.

## Common Use Cases

- CTF (Capture The Flag) challenges from any browser without a local Kali install
- Penetration testing practice against your own lab or authorized targets
- Security research and tool experimentation in a disposable, cloud-hosted environment

## Dependencies for Kali Linux Terminal Hosting

- [ttyd](https://github.com/tsl0922/ttyd) — browser-based terminal emulator that serves the shell over HTTP
- [Kali Linux Rolling](https://www.kali.org/) — Debian-based security-focused distribution with a large offensive toolset

### Deployment Dependencies

- [ttyd 1.7.3 x86_64 binary](https://github.com/tsl0922/ttyd/releases/tag/1.7.3)
- [Kali Linux on Docker Hub](https://hub.docker.com/r/kalilinux/kali-rolling)
- [Railway Volumes documentation](https://docs.railway.app/reference/volumes)

## Environment Variables

| Variable | Description |
|----------|-------------|
| `PORT` | Port for ttyd to listen on (set automatically by Railway) |
| `USERNAME` | Login username for the web terminal |
| `PASSWORD` | Login password for the web terminal |

> **Note:** Always set USERNAME and PASSWORD before deploying.

## Pre-installed Tools

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
| Libraries | libssl-dev, zlib1g-dev, libffi-dev, libsqlite3-dev, libreadline-dev, libncurses5-dev, libxml2-dev, libxslt1-dev, libpq-dev, default-libmysqlclient-dev, libyaml-dev, libpng-dev, libjpeg-dev, linux-headers-amd64 |

## Installing More Kali Tools

```bash
apt-get install -y kali-tools-web
apt-get install -y kali-tools-wireless
apt-get install -y kali-tools-forensics
```

> **Note:** Files saved inside `/root` persist across restarts. Packages installed via `apt-get` will not survive a full redeploy.

## Why Deploy Kali Linux Terminal on Railway?

Railway is a singular platform to deploy your infrastructure stack. Railway will host your infrastructure so you don't have to deal with configuration, while allowing you to vertically and horizontally scale it.

By deploying Kali Linux Terminal on Railway, you are one step closer to supporting a complete full-stack application with minimal burden. Host your servers, databases, AI agents, and more on Railway.
