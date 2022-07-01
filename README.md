# a1_setup_ubuntu20.04

Click here for the official

https://github.com/unitreerobotics

## 使い方

これらのスクリプトはROS noeticの導入やUnitree A1の作業環境構築に役立ちます。

ubuntu20.04であれば以下のスクリプトを順番に実行すれば環境が構築されます。

スクリプトの実行前にターミナル上で[sudo apt upgrade][sudo apt upgrade][sudo apt-get install git][sudo apt-get install vim]を実行してください。

[git clone https://github.com/yuefufufu/a1_setup_ubuntu20.04.git]　であなたのpcにファイルをコピーしてください。

[cd a1_setup_ubuntu20.04]でコピーしたファイル内に入り、スクリプトを実行[bash xxxx.sh]してください。

### noetic_setup.sh

このスクリプトを実行するとROS noeticの環境が構築されます。

スクリプトの最後で[roscore]が実行され、ROSのバージョン等が表示されます。表示はターミナル上で[ctrl+c]を入力すると消えます。

### gazebo9_setup.sh

このスクリプトを実行するとgazeboのバージョンが9に変更されます。(noeticは本来11。)

スクリプトの最後で[gazebo -v]が実行され、gazeboのバージョンが表示されます。

この変更はUnitree A1を動作させるために必要です。

### a1_setup_first.sh

このスクリプトを実行するとUnitree A1の作業環境が構築されます。

スクリプトの実行後、pcが再起動します。

### a1_setup_second.sh

pcが再起動したら、このスクリプトを実行してください。

スクリプトの最後でgazeboが起動し仮想空間上にUnitree A1が表示されます。gazeboはターミナル上では[ctrl+c]を入力すると動作を終了します。



## How to use

These scripts are useful for building the Unitree A1 development environment in ubuntu20.04.

Please run the following scripts in order from the top.

### noetic_setup.sh

Running this script on ubuntu20.04 will build the noetic environment.

### gazebo9_setup.sh

Running this script on ubuntu20.04 will change it to version 9 of gazebo. 

This changing essential for Unitree A1 to work.

### a1_setup_first.sh

Running this script will build the packages needed to develop Unitree A1. 

Running "a1_setup_first.sh" will reboot the pc at the end. 

### a1_setup_second.sh

After rebooting, Please run "a1_setup_second.sh".
