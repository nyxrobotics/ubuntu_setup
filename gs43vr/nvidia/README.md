# ubuntu-settings
Setting up cuda-9-0 and nvidia-396

[メモ]
- 公式手順だと、cudaを入れるときに最新のnvidiaドライバをインストールされる。
　　→安定バージョンのnvidiaドライバを使用したい場合、cuda-driversのバージョンを強制変更すると他のnvidiaパっケージも変わる
- すでにnvidia関連が入っている場合は以下のコマンドで消す
　　→関係ないパッケージもたくさん消されることが多いので、エディタに控えておいてあとから再インストールする

		sudo apt remove --purge -y --allow-change-held-packages cuda-*
		sudo apt remove --purge -y --allow-change-held-packages nvidia-*
		sudo apt autoremove

- nvidiaドライバのバージョンを固定しつつcudaをインストールする
  また、sudo apt upgradeで更新されないようにバージョン固定する

		mkdir -p ~/setup/nvidia
		cd ~/setup/nvidia
		wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_9.0.176-1_amd64.deb
		sudo dpkg -i cuda-repo-ubuntu1604_9.0.176-1_amd64.deb
		sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub
		sudo add-apt-repository ppa:graphics-drivers
		sudo apt update
		sudo apt install cuda-drivers=396.82-1 cuda-9-0
		sudo apt-mark hold cuda-drivers


- 課題
  - 起動直後にdmesgを実行すると以下のようなエラーがある

		dmesg -l emerg,alert,crit,err -x --color


		kern  :err   : [    1.137608] Couldn't get size: 0x800000000000000e
		kern  :err   : [    1.744866] PKCS#7 signature not signed with a trusted key




