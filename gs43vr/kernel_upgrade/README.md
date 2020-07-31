# How to update kernel on Ubuntu16.04

[メモ]
- ※Ubuntu16.04にkernel4.16以上を入れる場合は以下必要なパッケージをインストール（→libsslを1.1にアップデートするとgitkrakenが不安定になる。原因不明。）

    mkdir -p ~/lib/kernel_update
    cd ~/lib/nkernel_update
    wget http://mirrors.kernel.org/ubuntu/pool/main/l/linux-base/linux-base_4.5ubuntu1_all.deb
    wget http://mirrors.kernel.org/ubuntu/pool/main/o/openssl/libssl1.1_1.1.0g-2ubuntu4_amd64.deb

- ukuuをインストール

    sudo apt install libgee-0.8-dev libjson-glib-dev libvte-2.91-dev valac aria2
    cd ~/lib/kernel_update
    git clone https://github.com/teejee2008/ukuu.git
    cd ukuu
    make all
    sudo checkinstall

- 参考情報
  - [「Error! Could not locate dkms.conf file.File: does not exist.」が出た場合の対処法](http://www.vsrx.work/article/459998723.html)
  - [Ubuntu改造日記　Mainline Kernel 4.16以降のインストール方法 その75](http://kapper1224.sblo.jp/article/183496443.html)