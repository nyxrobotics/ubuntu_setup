<!-- 
# Ubuntu16.04のKernelバージョンについて
- 20200715現在、ubuntu16.04.6(kernel4.15台)まで作られている
- kernel4.15台はnvidia関連・virtualbox関連のドライバを入れると起動メッセージに"PKCS#7"のエラーが出る
- ubuntu16.04.3で初期状態でインストールされるkernel4.10台は上記の問題発生しない→気のせいだった。発生する。
- →ubuntu16.04.3でインストールする（kernel固定方法調査中)

　　　　sudo apt-mark hold linux-image-generic linux-headers-generic
-->

# 参考文献
- 1. https://qastack.jp/ubuntu/832524/possible-missing-frmware-lib-firmware-i915
