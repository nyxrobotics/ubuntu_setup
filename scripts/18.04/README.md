# ubuntu_environments
- ubuntu_environments.sh　: CUBOID等のロボット内部へUbuntu18.04をインストール後、各種設定を反映するスクリプト

- 手順
  1. BIOS:
    - security device support -> disable
    - secure boot -> disable
    - boot mode -> uefi
  2. Ubuntu18.04.4をインストール
  3. sbgisenwikiをcloneする
  4. ubuntu_environments.shを実行する
  5. ROSをインストールする

- 注意点
  - vortualboを使用する場合はnvidia.shを走らせると起動しなくなるため、virtualbox環境ではcudaの検証ができませんでした
  - nvidiaドライバ、cudaのインストールが不要な場合、ubuntu_environments.sh内のnvidiaの行をコメントアウトしてください

    #bash nvidia.sh

- 16.04と18.04の違い
  - 日本語/英語入力切替
    - 16.04:ibusの入力メソッド切り替えのほうが早い
    - 18.04:mozcの入力切替のほうが早い→sublime text3でインライン入力ができない
  - 18.04で不安定な要素
    - acpiのsleep, idelに関する機能が不安定（NVME, USB bus, pci全般→grubで無効化する）
    - Ubuntu17.04以降、NVMeのSSDを使用すると、使用中に突然クラッシュするバグがある
      - 参考１：https://askubuntu.com/questions/1176021/18-04-or-19-04-on-samsung-nvme-ssd-%E2%86%92-bus-errors
      - 参考２：https://askubuntu.com/questions/905710/ext4-fs-error-after-ubuntu-17-04-upgrade
    - 修正方法
      - 参考１：https://itectec.com/ubuntu/ubuntu-bios-does-not-detect-ssd-after-reboot-from-ubuntu-16-04-dell-xps-15/
      - 参考２：https://qiita.com/izz_miya/items/deac834dccaacdae696a
      - 試行錯誤情報：https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1678184
  - Network manager
    - QCA6174が不安定
      - https://qastack.jp/ubuntu/878097/more-wifi-issues-qualcomm-atheros-qca6174-ath10k-pci
      - https://ubuntuforums.org/showthread.php?t=2322547

