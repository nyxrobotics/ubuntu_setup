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