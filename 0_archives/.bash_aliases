################################################################################
## MY Aliases and Functions
################################################################################

## Reminder
# Igonre aliases to retrieve command behavior with \alias or "alias"

## BASICS
alias §.bazx='. /opt/com.sebastien-deschamps/bashtoolz/includes/baszx.sh'
alias §!='sudo !!'
alias §?='echo $?'
alias §1='cd ..'
alias §2='cd ../..'
alias §3='cd ../../..'
alias §4='cd ../../../..'
alias §5='cd ../../../../..'
alias §c='clear'
alias §ls='ls -lah --color'
alias §lsrecurs='ls -lahR --color'
alias §§ls='sudo ls -lah --color'
alias §§lsrecurs='sudo ls -lahR --color'
alias §mkcd='echo "[PROMPT] Fill a folder name or path to create and access:" && read __1 && mkdir -pv $__1 && cd $__1 && unset __1'
alias §§mkcd='echo "[PROMPT] Fill a folder name or path to create and access:" && read __1 && sudo mkdir -pv $__1 && sudo cd $__1 && unset __1'
alias §t='echo "[PROMPT] Fill file names or path names to touch:" && read __1 && touch $__1 && unset __1'
alias §§t='echo "[PROMPT] Fill file names or path names to touch:" && read __1 && sudo touch $__1 && unset __1'
#@TODO-SCRIPT#alias §qs='cat ; __1=$_; echo "[INFO] EOF to quit. Fill searched text + ENTER to grep matches."; grep $__1 << EOF; unset __1; echo "I hope you have a lucky search... :)";'
#0TODO TESTalias $xgrep='/opt/com.sebastien-deschamps/bashtoolz/bin/com.sebastien-deschamps.xgrep.sh'

## SHORTCUTS CONFIG
alias §bashrc='nano ~/.bashrc'
alias §§bashrc='sudo nano /root/.bashrc'
alias §bashaliases='nano ~/.bash_aliases'
alias §§bashaliases='sudo nano /root/.bash_aliases'
alias §bashcompletions='nano ~/.bash_aliases'
alias §§bashcompletions='sudo nano /root/.bash_aliases'
alias §§hosts='sudo nano /etc/hosts'
alias §§resolv.conf='sudo nano /etc/resolv.conf'
alias §§ssh='sudo nano /etc/ssh/ssh.conf'
alias §§sshd='sudo nano /etc/ssh/sshd.conf'

## SHORTCUTS NAVIGATION
alias §d='cd /run/media/anode1/VM-EXT4; pwd'
alias §w='cd /run/media/anode1/WS; pwd'
alias §n='/usr/bin/nautilus .'
alias §§n='sudo /usr/bin/nautilus .'

## RIGHTS/PRIVILEGES SHORTCUTS
#TODO: test and see to add path completion and see to just echo chmod --help then run chmod
#alias §chm='echo -e "CHMOD :\n  R : recursive\n  a/u/g/o : who\n  +/- :  add/remove\n  777 : numeric way\n  X : only if is a dir\n  s : use UID/GUID\n  dir/file : target path\n[PROMPT] Fill chmod options string :"; read __1 chmod; chmod $__1; unset __1'
#alias §§chm='echo "[PROMPT] Fill chmod options string :\n  R : recursive\n  a/u/g/o : who\n  +/- :  add/remove\n  777 : numeric way\n  X : only if is a dir\n  s : use UID/GUID\n  dir/file : target path"; read __1 chmod; sudo chmod $__1; unset __1'
#alias §cho='echo "[PROMPT] Fill chown options string (-R recursive; user:group who; ...; dir/files):"; read __1 chmod; chmod $__1; unset __1'
#alias §§cho='echo "[PROMPT] Fill chown options string (-R recursive; user:group who; ...; dir/files):"; read __1 chmod; sudo chmod $__1; unset __1'

## LOCAL REMINDER & DOCS
alias §h='xdg-open file:///run/media/anode1/WS/00_GWS/00_html-doc/index.html'
alias §h-chmod='echo "chmod octal :"; echo -e "\t- r (read) = 4"; echo -e "\t- w (write) = 2"; echo -e "\t- x (execute) = 1"; echo; echo -e "Type bloc (first):\n\t- d:\tdirectory\n\t- l:\tlink\n\t- c:\tchar type device\n\t- b:\tblock type device\n\t- p:\tpipeline (FIFO)\n\t- s:\tsocket\n\t- -:\tregular file"'
alias §h-ssh-keygen='echo -e "[EXAMPLE] :\n- RSA:\n\t+ ssh-keygen ...\n-ED25519:\n\t+ ssh-keygen -o -a 1000 -t ed25519 -f ~/.ssh/your_uid -C yourUser@host[TEST] :\n- PWD:\n\t+ ssh-keygen -y -f ~/.ssh/your_key.\n"'
alias §h-ssh-copy-id='echo -e "[EXAMPLE] : ssh-copy-id -i ~/.ssh/yurkey.pub user@server"'
alias §h-ssh='echo -e "[EXAMPLE] :\n- ssh -i .ssh/key user@127.0.0.1\n- SSH TUNNEL X:\n\t+ ssh ...\n- SSH TUNNEL Y\n\t+ ssh ..."'
alias §h-ssl-req='echo -e "[EXAMPLE] :\n- x509 RSA:\n\t+ openssl req -x509 -newkey rsa:4096 -nodes -keyout certs/dregistry.key -out certs/dregistry.crt -days 365 -subj "/C=US/ST=/L=/O=/OU=/CN=/emailAddress=contact.legacy@you.localhost" && sudo chmod -R 600 ./certs/\n\t/C= Country (ex GB)\n\t/ST= State (ex London)\n\t/L= Location (ex London)\n\t/O= Organization (ex Global Security)\n\t/OU= Organization Unit (ex IT Department)\n\t/CN= Common Name (example.com)\n\n- X509 RSA Certificate Signing Request:\n\t+ sudo openssl x509 -x509toreq -extensions server -in certs/dregistry.crt -signkey certs/dregistry.key -out certs/dregistry/dreg.req"'
alias §h-gpg-sign='echo -e "[INFO] :\n- PGP (Symantec) and GPG are similare solutions but GNU Privacy Guard is free and PGP is a non-free solution.\n- See RFC 4880 for GPG/PGP\n\n[EXAMPLE] :\n- GPG Encryption in interactive mode:\n\t+ gpg -o file.txt.gpg -c file.txt\n\t+ gpg -o file.txt -d file.txt.gpg\n\n- GPG Encryption in batch mode:\n\t+gpg --batch --passphrase somethingsecure -o file.txt.gpg -c file.txt'
alias §h-timestamp='echo -e "[EXAMPLE] :\n- SECOND TIMESTAMP SINCE THE EPOCH:\n\t+ date +%s\n- NANOSECOND TIMESTAMP SICE THE EPOCH:\n\t+ date +%s%N\n- MILLISECONDS SINCE THE EPOCH:\n\t+ date +%s%N | cut -b1-13"'
alias §h-tar='echo -e "[EXAMPLE] :\n- CREATE TAR:\n\t+ tar -cvf archive.tar ./file ../dir\n- EXTRACT TAR:\n\t+ tar -xvf archive.tar -C ./dir\n- CREATE TAR.GZ:\n\t+ tar -zcvf archive.tar.gz ./file ../dir\n- EXTRACT TAR.GZ:\n\t+ tar -zxvf archive.tar.gz -C ./dir\n- CREATE TAR.BZ2:\n\t+ tar -jcvf archive.tar.bz2 ./file ../dir\n- EXTRACT TAR.BZ2:\n\t+ tar -jxvf archive.tar.bz2 -C ./dir\n- NON-GNU CREATE TAR.GZ:\n\t+ tar -cvf - ./file ../directory | gzip > archive.tar.gz"'
alias §h-http-server='echo -e "[PYTHON3] :\n- python3 -m http.server 8080\n\n[PHP] :\n- php -S localhost:8080\n\n[C#] - see Kestrel vs HTTP.sys vs IIS. See also https://www.c-sharpcorner.com/article/creating-your-own-web-server-using-C-Sharp"'
alias §h-nfs='echo "Ensure NFS path export :"; echo -e " - sudo exportfs -rav"; echo "Control NFS shares are active :"; echo -e " - sudo showmount -e"; echo "See version and info for NFS Server (ONLY ON SERVER COMMAND) :"; echo -e " - sudo rpcinfo -p | grep nfs"; echo "Allow NFS through SELinux :"; echo -e " - sudo setsebool -P nfs_export_all_rw 1";'
alias §h-nfs-client='echo "Client auto mount using /etc/fstab :"; echo -e " - /10.0.0.0:/share/folder /mnt/share nfs4 _netdev,hard,intr,auto,user,rw";'
alias §h-css-media='echo TODO'
alias §h-css-flexbox='echo TODO'
alias §h-js-promise='echo TODO'
alias §h-php-cli='echo TODO server tests composer...'


## WEB FAVORITE
alias §w-licences='xdg-open https://opensource.org/licenses/ && xdg-open https://choosealicense.com/'
alias §w-mailtrap='xdg-open https://mailtrap.io'
alias §w-translate='xdg-open https://translate.google.com'
alias §w-text2ascii='xdg-open http://patorjk.com/software/taag/#p=display&f=ANSI%20Shadow&t=type%20something%20cool%20!'
alias §w-github='xdg-open https://github.com/'
alias §w-gitlab='xdg-open https://gitlab.com/'

## NETWORK
alias §ports='sudo netstat -tulanp'
alias §ping='echo "[PROMPT] Fill target to ping:" && read __1 && ping $__1 && unset __1'
alias §ping1='echo "[PROMPT] Fill target to ping:" && read __1 && ping $__1 -c 1 && unset __1'
alias §ping3='echo "[PROMPT] Fill target to ping:" && read __1 && ping $__1 -c 3 && unset __1'
alias §ping5='echo "[PROMPT] Fill target to ping:" && read __1 && ping $__1 -c 5 && unset __1'
#TODO#alias §telnet='echo "[PROMPT] Fill target to telnet:" && read __1 && telnet $__1 && unset __1'
#TODO#alias §nmap='zzzzzzzzzecho "[PROMPT] Fill target to telnet:" && read __1 && telnet $__1 && unset __1'
alias §§hostname='[PROMPT] Fill a FQDN (hostname.domain.tld):"; read __1; sudo hostnamectl set-hostname $__1; unset __1'

## LOGS

## SYSTEMD
alias §sysd-status='systemctl status'
alias §sysd-up='systemctl start'
alias §sysd-down='systemctl stop'
alias §sysd-reload='systemctl reload'
alias §sysd-restart='systemctl restart'
alias §sysd-enable='systemctl enable'
alias §sysd-disable='systemctl disable'
alias §sysd-all='systemctl list-unit-files'
alias §sysd-all-verbose='systemctl list-units'
alias §sysd-all-active='systemctl list-unit-files --state=active'
alias §sysd-all-running='systemctl list-unit-files --state=running'


## SYSTEM INFO
#alias $cpu='lscpu'
alias §mem-free-and-used='free -m -l -t'
alias §mem-top-eating-process='ps auxf | sort -nr -k 4'
alias §mem-top-eating-process10='ps auxf | sort -nr -k 4 | head -10'
alias §cpu-top-eating-process='ps auxf | sort -nr -k 3'
alias §cpu-top-eating-process10='ps auxf | sort -nr -k 3 | head -10'
alias §proc-all='ps aux'
alias §proc-by-id-withIdParam='ps aux | grep'
alias §gpu-from-xorg='grep -i --color memory /var/log/Xorg.0.log'
#alias $disk-usage-on-current-directory='du -ch | grep total'
#alias $disk-usage-on-system='df -hl --total | grep total'
alias §disk-usage-top10='du -hsx * | sort -rh | head -10'
#alias $part-usage='df -hlT'
#alias $part-usage-exclude-temp-memory='df -hlT --exclude-type=tmpfs --exclude-type=devtmpfs'
#TODO#alias §myip='ifconfig en0 | grep inet | grep -v inet6 | cut -d ' ' -f2'

## BACKUP
alias §bkp-file='echo "[PROMPT] Fill a file path to backup next to as <name>.old:" && read __1 && cp $__1 $__1.old && unset __1'
#TODO#alias §bkp-ws2disk='#rsync'
#TODO#alias §bkp-ws2server='#rsync'
#TODO#alias §bkp-vm2disk='#rsync'
#TODO#alias §bkp-vm2server='#rsync'

## Iso to USB Drive
#TOTEST#alias §dd-iso-to-usb='echo "[PROMPT] Fill a path to the iso file (ex: /home/user/debian.iso):"; read __1; echo "[PROMPT] Fill a device name"; read __2; if [ $(lsblk /dev/sda --raw | grep / | grep -c sda) -gt 0 ]; then for i in $(lsblk /dev/sda --raw | grep / | cut -d " " -f 1); do umount /dev/$i; done fi; #sudo ddzzztest-if-unmount-before if=$__1 of=/dev/$__2 bs=4M status=progress && #sudo sync; unset __1; unset __2'
#TOTEST#alias §§dd-iso-to-usb='echo "[PROMPT] Fill a path to the iso file (ex: /home/user/debian.iso):"; read __1; echo "[PROMPT] Fill a device name"; read __2; if [ $(lsblk /dev/sda --raw | grep / | grep -c sda) -gt 0 ]; then for i in $(lsblk /dev/sda --raw | grep / | cut -d " " -f 1); do umount /dev/$i; done fi; sudo dd if=$__1 of=/dev/$__2 bs=4M status=progress && sudo sync; unset __1; unset __2'
#TOTEST#alias §dd-iso-to-usb-without-progress='echo "[PROMPT] Fill a path to the iso file (ex: /home/user/debian.iso):"; read __1; echo "[PROMPT] Fill a device name"; read __2; if [ $(lsblk /dev/sda --raw | grep / | grep -c sda) -gt 0 ]; then for i in $(lsblk /dev/sda --raw | grep / | cut -d " " -f 1); do umount /dev/$i; done fi; sudo dd if=$__1 of=/dev/$__2 bs=4M && sudo sync; unset __1; unset __2'
#TOTEST#alias §§dd-iso-to-usb-without-progress='echo "[PROMPT] Fill a path to the iso file (ex: /home/user/debian.iso):"; read __1; echo "[PROMPT] Fill a device name"; read __2; if [ $(lsblk /dev/sda --raw | grep / | grep -c sda) -gt 0 ]; then for i in $(lsblk /dev/sda --raw | grep / | cut -d " " -f 1); do umount /dev/$i; done fi; sudo dd if=$__1 of=/dev/$__2 bs=4M && sudo sync; unset __1; unset __2'

## BUILDS

## SSH
alias §ssh-agent-up='eval `ssh-agent`'
alias §ssh-agent-down='eval `ssh-agent -k`'
alias §ssh-agent-clean='ssh-add -D'
alias §ssh-agent-list='ssh-add -l'
alias §ssh='echo "ssh anode1@remote-address -P remote-port"'
alias §§ssh='echo "sudo ssh root@remote-address -P remote-port"'
# ssh -R <remote-port>:<address>:<local-port> user@server-ssh-local
alias §ssh-tunnel-remote-to-local='#ssh -R 2080:10.0.0.1:22 user@server-ssh-local'
# ssh -L <local-port>:<address>:<remote-port> user@server-ssh-local
alias §ssh-tunnel-local-to-remote='#ssh -L 2080:localhost:80 user@server-ssh-distant'
alias §sshd-up='sudo systemctl start sshd'
alias §sshd-down='sudo systemctl stop sshd'
alias §sshd-status='sudo systemctl status sshd'
alias §§sshd-up='sudo systemctl start sshd'
alias §§sshd-down='sudo systemctl stop sshd'
alias §§sshd-status='sudo systemctl status sshd'
function §ssh(){
  echo "[PROMPT] Fill SSH authentication mode (1 => 'key' ; 2 => 'ssh-agent' ; 3 => 'password'):" && read ssh_mode

  case $ssh_mode in
    "1")
      echo "[PROMPT] Fill Public Key Path:" && read ssh_keypath
      if ! ls $ssh_keypath; then
        echo "[ERROR] No public key found at '${{ssh_keypath}}' !"
        exit 1
      else
        ssh_opts="-u ${{__4}}"
      fi
      ;;
    "2")
      echo "ssh-agent authentication choosen. continue..."
      ;;
    "3")
      opts="-o PreferredAuthentications=password -o PubkeyAuthentication=no"
      ;;
    *)
      echo -e "[ERROR] Bad Authentication Mode. Expected values are:\n\t- 1 for key authentication\n\t- 2 is your already have an ssh-agent up and you want unsing it\n\t- 3 for password authentication"
  esac

  echo "[PROMPT] Fill SSH user:" && read __1
  echo "[PROMPT] Fill SSH host (ip ; domaine):" && read __2

  ssh ${{ssh_opts}} ${{ssh_user}}@${{ssh_host}}
}

## GIT
alias §git-init='echo "[PROMPT] Fill a folder name/path to create as your git repository:" && read __1 && mkdir -p $__1 && cd $_ && git init && touch .gitignore && git add --all && git commit -m "initial commit" && unset __1'
alias §git-add-all='git add --all'
alias §git-add-dot='git add .'
alias §git-commit='echo "[PROMPT] Fill commit message"; read __mess; git commit -m "$__mess"; unset __mess'
alias §git-ac='§git-add-all; §git-commit'
alias §git-pull=''
alias §git-push=''
alias §git-remote-add-branch=''
alias §git-remote-del-branch=''
alias §git-reset-stage=''
alias §git-reset=''
alias §git-watch='git watchchanges'

## LXD

## DOCKER
#alias §docker-etc-link='sudo systemctl start docker && sudo systemctl stop docker && sudo ln -s /run/media/anode1/wm-ext4/docker/etc/docker/daemon.js /etc/docker'
alias §docker-daemon-up='sudo systemctl start docker'
alias §docker-daemon-down='sudo systemctl stop docker'
alias §docker-registry-up='§docker-up docker-registry'
alias §docker-registry-down='§docker-down docker-registry'
alias §docker-git-up='§docker-up docker-git'
alias §docker-git-down='§docker-down docker-git'
alias §docker-gitlab-up='§docker-up docker-gitlab'
alias §docker-gitlab-down='§docker-down docker-gitlab'
alias §docker-jenkins-up='§docker-up docker-jenkins'
alias §docker-jenkins-down='§docker-down docker-jenkins'
function §docker-up(){
  local target=$1
  case $target in
    "docker-registry")
      echo "docker-compose -f /opt/sebastien-deschamps/docker-registry/docker-compose.yaml up -d"
      ;;
    "docker-git")
      echo "docker-compose -f /opt/sebastien-deschamps/docker-git/docker-compose.yaml up -d"
      ;;
    "docker-gitlab")
      echo "docker-compose -f /opt/sebastien-deschamps/docker-gitlab/docker-compose.yaml up -d"
      ;;
    "docker-jenkins")
      echo "docker-compose -f /opt/sebastien-deschamps/docker-jenkins/docker-compose.yaml up -d"
      ;;
    *)
      echo "[ERROR] Unknow docker project !"
  esac
}
function §docker-down(){
  local target=$1
  case $target in
    "docker-registry")
      echo "docker-compose -f /opt/sebastien-deschamps/docker-registry/docker-compose.yaml down"
      ;;
    "docker-git")
      echo "docker-compose -f /opt/sebastien-deschamps/docker-git/docker-compose.yaml up down"
      ;;
    "docker-gitlab")
      echo "docker-compose -f /opt/sebastien-deschamps/docker-gitlab/docker-compose.yaml down"
      ;;
    "docker-jenkins")
      echo "docker-compose -f /opt/sebastien-deschamps/docker-jenkins/docker-compose.yaml down"
      ;;
    *)
      echo "[ERROR] Unknow docker project !"
  esac
}

## libvirt
alias §virt-up='sudo systemctl start libvirtd; virsh net-start --network kvmbr0; sudo virt-manager'
alias §virt-down='virsh net-destroy --network kvmbr0; sudo systemctl stop libvirtd'
#alias §virt-up2='sudo systemctl start libvirtd; sudo systemctl start spice-vdagentd; virsh net-start --network kvmbr0; sudo virt-manager'
#alias §virt-down2='virsh net-destroy --network kvmbr0;sudo systemctl start spice-vdagentd; sudo systemctl stop libvirtd'
#alias §virt-up3='sudo systemctl start libvirtd; sudo systemctl start spice-vdagentd; sudo systemctl start qemu-guest-agent; virsh net-start --network kvmbr0; sudo virt-manager'
#alias §virt-down3='virsh net-destroy --network kvmbr0; sudo systemctl start qemu-guest-agent; sudo systemctl stop spice-vdagentd; sudo systemctl stop libvirtd'

## NFS
alias §nfs-up='sudo systemctl start nfs-server.service'
alias §nfs-down='sudo systemctl stop nfs-server.service'
