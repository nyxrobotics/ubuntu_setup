# ubuntu_environments
- ubuntu_environments.sh　: CUBOID等のロボット内部へUbuntu16.04をインストール後、各種設定を反映するスクリプト

- 手順
  1. Ubuntu16.04.6をインストール
  2. sbgisenwikiをcloneする
  3. ubuntu_environments.shを実行する
  4. ROSをインストールする

- 注意点
  - nvidiaドライバ、cudaのインストールが不要な場合、ubuntu_environments.sh内のnvidiaの行をコメントアウトしてください

    #bash nvidia.sh
