#fedora / redhat
alias dnfc='sudo dnf -y clean all'
alias dnfu='sudo dnf -y update'
alias dnfi='sudo dnf -y install $1'
alias dnfs='dnf search $1'
alias dnff='dnf info $1'

alias yumc='sudo yum -y clean all'
alias yumu='sudo yum -y update'
alias yumi='sudo yum -y install'
alias yums='yum search'
alias yumf='yum info'


alias fedora_upgrade='rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$1-$(uname -i) && dnf upgrade -y && dnf clean all && dnf --releasever=$1 --setopt=deltarpm=false distro-sync -y'
