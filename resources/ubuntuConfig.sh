printf '安装wget\n'
# 安装wget用于下载配置文件
sudo apt install wget 

printf 'apt换源\n'
#切换到apt源配置目录
cd /etc/apt 
#备份原始源配置
sudo mv sources.list sources.list.bak
#获取源配置文件
sudo wget 47.100.5.197/configure/ubuntuSources.list
#配置源
sudo mv ubuntuSources.list sources.list

printf '更新软件\n'
#更新软件
sudo apt update
sudo apt upgrade -y

printf '安装git\n'
#安装git
sudo apt install git  

printf 'git配置代理\n'
#配置代理
git config --global http.proxy 'socks5://192.168.31.88:1080'  
git config --global https.proxy 'socks5://192.168.31.88:1080'  

printf '安装vim\n'
#安装vim
sudo apt install vim
#修改vim配置
cd /etc/vimrc
sudo mv vimrc vimrc.bak
sudo wget 47.100.5.197/configure/vimrc

printf '安装gcc、g++\n'
#安装gcc、g++开发组件
sudo apt install build-essential

printf '安装curl\n'
#安装curl 
sudo apt install curl -y

printf '获取node version manager\n'
#安装nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

printf '安装node以及npm\n'
#安装npm、node开发组件
nvm install --lts

#执行完毕
printf '#执行完毕\n'