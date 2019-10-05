#!/bin/bash

wget http://167.71.41.11/install_sw4stm32_linux_64bits-v2.9.run
wget http://167.71.41.11/en.STM32CubeMX_5-2-1.zip
unzip en.STM32CubeMX_5-2-1.zip -d STM32CubeMX5



chmod +x install_sw4stm32_linux_64bits-v2.9.run
mkdir sw4stm32
mv install_sw4stm32_linux_64bits-v2.9.run sw4stm32
#cd sw4stm32 && ./install_sw4stm32_linux_64bits-v2.9.run -m -c

git clone https://github.com/texane/stlink
cd stlink
make release
#sudo make install
#cd build/Release/
#sudo make install
#sudo ldconfig
sudo apt install -y openjdk-8-jre cmake libusb-1.0 gksu
