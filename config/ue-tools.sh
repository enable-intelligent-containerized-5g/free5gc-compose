#!/bin/bash
#
# Instalar net-tools
apt-get update && apt-get install -y net-tools
# Instalar tcpdump
apt-get install -y tcpdump
# Instalar traceroute
apt-get install -y traceroute
# Instalar wget and ffmpeg
apt-get install -y wget ffmpeg

# Install python
apt-get install -y python3.9
ln -sf /usr/bin/python3.9 /usr/bin/python3
# mv /usr/bin/python3.9 /usr/bin/python3
# Install yt-dlp
mkdir -p ~/.local/bin/
wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O ~/.local/bin/yt-dlp
chmod a+rx ~/.local/bin/yt-dlp  # Make executable
# export PATH=$PATH:~/.local/bin
echo 'export PATH=$PATH:~/.local/bin' >> ~/.bashrc && source ~/.bashrc


# Download file from youtube
# yt-dlp -o "video.%(ext)s" --force-overwrites -f bv+ba https://youtu.be/h84cDe80nTA
# yt-dlp -o "video.%(ext)s" --force-overwrites -f bv+ba --source-address 10.60.0.1 https://youtu.be/h84cDe80nTA

# TEST ONLY
# ping -I uesimtun0 8.8.8.8
# ip route add 10.60.0.0/24 dev uesimtun0
# Details the file
# ffprobe -v error -show_format -show_streams video.webm

