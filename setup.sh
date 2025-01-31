#!bin/bash

echo -e "\033[97mCreating \033[96mvar/log/log-archives \033[97mdirectory..."
sudo mkdir /var/log/log-archives
echo -e "Installing..."
sudo cp ./log-archive-tool /usr/bin/
sudo chmod +x /usr/bin/log-archive-tool
echo "" >> /home/$USER/.bashrc
echo "#Log Archive Tool" >> /home/$USER/.bashrc
echo "alias log-archive='sudo bash /usr/bin/log-archive-tool'" >> /home/$USER/.bashrc
echo -e "\033[32mInstalled!"
echo -e "\033[32mUsage: log-archive [directory]"
echo -e "\033[32mStored logs directory: \033[96m/var/log/log-archives"
