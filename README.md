# ubuntu_setup
Settings for Ubuntu for me

[メモ]
- nautilusが起動しない時

		sudo apt-get update
		sudo apt-get install --reinstall nautilus
		sudo apt-get install --reinstall nautilus-data
		sudo apt-get upgrade --fix-missing

- [クラッシュレポート無効化](https://www.linuxbabe.com/ubuntu/disable-apport-error-reporting-ubuntu-16-04-lts#:~:text=To%20disable%20error%20reporting%20on,open%20the%20apport%20configuration%20file.&text=You%20will%20see%20a%20line,enabled%20from%201%20to%200.)