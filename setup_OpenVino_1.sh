sudo apt-get update && sudo apt-get upgrade
sudo mkdir -p /opt/intel
cd ~/Downloads/

sudo wget https://storage.openvinotoolkit.org/repositories/openvino/packages/2022.3.1/linux/l_openvino_toolkit_debian9_2022.3.1.9227.cf2c7da5689_arm64.tgz -O openvino_2022.3.1.tgz
sudo tar -xf openvino_2022.3.1.tgz

sudo mv l_openvino_toolkit_debian9_2022.3.1.9227.cf2c7da5689_arm64 /opt/intel/openvino_2022.3.1
cd /opt/intel/openvino_2022.3.1 
sudo -E ./install_dependencies/install_openvino_dependencies.sh

cd /opt/intel/openvino_2022.3.1
pip install -r ./python/python3.9/requirements.txt

cd /opt/intel
sudo ln -s openvino_2022.3.1 openvino_2022

sudo apt install cmake

source /opt/intel/openvino_2022/setupvars.sh

sudo apt-get install gedit
cd
gedit .bashrc 

#optional components
sudo apt update
sudo apt install libopencv-dev python3-opencv

sudo usermod -a -G users "$(whoami)"

cd /opt/intel/openvino_2022/install_dependencies

sudo cp 97-myriad-usbboot.rules /etc/udev/rules.d/

sudo udevadm control --reload-rules
sudo udevadm trigger
sudo ldconfig

sudo reboot
