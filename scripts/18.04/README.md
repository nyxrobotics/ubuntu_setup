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
