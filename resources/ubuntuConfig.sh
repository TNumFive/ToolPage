# 安装wget用于下载配置文件
sudo apt install wget 
#切换到apt源配置目录
cd /etc/apt 
#备份原始源配置
sudo mv sources.list sources.list.bak
#获取源配置文件
wget 47.100.5.197/configure/ubuntuSources.list
#配置源
mv ubuntuSources.list sources.list
#更新软件
sudo apt update
sudo apt upgrade -y
#安装git
sudo apt install git  
#配置代理
git config --global http.proxy 'socks5://127.0.0.1:1080'  
git config --global https.proxy 'socks5://127.0.0.1:1080'  
#安装vim
sudo apt install vim
#修改vim配置
cd /etc/vimrc
sudo mv vimrc vimrc.bak
wget 47.100.5.197/configure/vimrc

sudo apt install build-essential