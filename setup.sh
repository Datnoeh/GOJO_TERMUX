#!/bin/bash
termux-setup-storage
# Thông tin kết nối SQL
if ! command -v mariadb &>/dev/null; then
    yes | (
    pkg install mariadb
    )
fi

sql_user="root"
sql_password="root"
sql_host="127.0.0.1"

# Kiểm tra kết nối SQL
if mariadb -h $sql_host -u $sql_user -p$sql_password -e "SELECT 1;" 2>/dev/null;
 then
clear
sleep 2
echo -e "\e[1;35mKết Nối Thành Công Quá Trình Setup Bắt Đầu Sau 1 giây..........\n\e[1;33m";
sleep 1
 yes | (pkg update && pkg upgrade && pkg install wget && pkg install openjdk-17 && pkg install ant && pkg install dropbear && pkg install openssh && pkg install tsu && pkg install net-tools && pkg install python && pkg install php && pkg install openssl-tool && pkg install zip)
directory="/storage/emulated/0/.DAT_RUN/"

# Kiểm tra xem đường dẫn có tồn tại không
if [ ! -d "$directory" ]; then
    # Nếu không tồn tại, tạo mới
    mkdir -p "$directory"
    echo "Đã tạo mới đường dẫn $directory"
else
    echo "Đường dẫn $directory đã tồn tại"
fi
clear
 wget -O menu.zip https://datnoeh.github.io/GOJO_TERMUX/menu.zip
 unzip menu.zip
 wget -O install.basi https://datnoeh.github.io/GOJO_TERMUX/install.basi
wget -O setup.py https://datnoeh.github.io/GOJO_TERMUX/setup.py
python setup.py
else
clear
sleep 2
    echo -e "\e[1;31m Bạn Chưa Bật App AwebServer Vui Lòng Bật Lên Trước Khi Setup......"
fi
