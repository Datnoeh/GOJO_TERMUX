echo "Đang setup, vui lòng chờ đến khi hoàn tất....."
termux-setup-storage
yes | (pkg update && pkg upgrade -y && pkg install wget && pkg install openjdk-17 && pkg install ant && pkg install dropbear && pkg install openssh && pkg install tsu && pkg install net-tools && pkg install python && pkg install php && pkg install openssl-tool

# Tiếp tục với các bước cài đặt khác
wget -O menu.zip https://datnoeh.github.io/GOJO_TERMUX/menu/menu.zip
unzip menu.zip
wget -O install.basi https://datnoeh.github.io/GOJO_TERMUX/install.basi
wget -O setup.py https://datnoeh.github.io/GOJO_TERMUX/setup.py && python setup.py
stty -echo
trap '' SIGINT) > /dev/null 2>&1
