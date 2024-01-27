# Ubuntu Environment settings

## Software tools

```
sudo apt-get install gcc
sudo apt-get install make
sudo apt-get install perl
sudo apt-get install git
sudo apt-get install terminator

sudo apt update
sudo apt install build-essential zlib1g-dev libncurses5-dev\
                  libgdbm-dev libnss3-dev libssl-dev \
                  libreadline-dev libffi-dev \
                  libsqlite3-dev wget libbz2-dev

```


## Install anaconda
https://www.hostinger.com/tutorials/how-to-install-anaconda-on-ubuntu/
```
wget https://repo.anaconda.com/archive/Anaconda3-2023.09-0-Linux-x86_64.sh
bash Anaconda3-2023.09-0-Linux-x86_64.sh
```

## Jupyter Notebook in VS Code
```
pip install jupyter

```

### Create or open a Jupyter Notebook
Ctrl+Shift+P or creating a new .ipynb file in your workspace.

### To run the current cell
Use Ctrl+Enter. To run the current cell and advance to the next, use Shift+Enter

## Backup

```
sudo apt-get install gcc
sudo apt-get install make
sudo apt-get install perl
sudo apt-get install git
sudo apt-get install terminator
sudo apt install python2-minimal
 
sudo apt update
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev
wget https://www.python.org/ftp/python/3.10.9/Python-3.10.9.tgz
tar -xf Python-3.10.9.tgz
cd Python-3.10.9/
./configure --enable-optimizations
make -j4
sudo make altinstall
 
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 1
sudo update-alternatives --install /usr/bin/python python /usr/bin/python2 2
sudo update-alternatives --install /usr/bin/python python /usr/local/bin/python3.10 3
sudo update-alternatives --config python
 
 
sudo apt install python3-pip
git clone https://github.com/openhwgroup/core-v-verif.git
cd core-v-verif/bin/
pip3 install -r requirements.txt
 
 
/home/yqi/.local/bin
 
sudo apt-get install gcc
sudo apt-get install make
sudo apt-get install perl
 
export CV_SW_TOOLCHAIN="/opt/riscv/corev-openhw-gcc-ubuntu2204-20221031"
export CV_SW_PREFIX="riscv32-corev-elf-"
export CORE_V_VERIF="/home/yqi/ws/cv32/core-v-verif"
export CV_SW_MARCH="rv32imc_zicsr_zifencei"
 
# Prerequisites:
sudo apt-get install git perl python3 make autoconf g++ flex bison ccache
sudo apt-get install libgoogle-perftools-dev numactl perl-doc
sudo apt-get install libfl2  # Ubuntu only (ignore if gives error)
sudo apt-get install libfl-dev  # Ubuntu only (ignore if gives error)
sudo apt-get install zlibc zlib1g zlib1g-dev  # Ubuntu only (ignore if gives error)
 
git clone https://github.com/verilator/verilator   # Only first time
 
# Every time you need to build:
unsetenv VERILATOR_ROOT  # For csh; ignore error if on bash
unset VERILATOR_ROOT  # For bash
cd verilator
git pull     	# Make sure git repository is up-to-date
git tag      	# See what versions exist
#git checkout master  	# Use development branch (e.g. recent bug fixes)
#git checkout stable  	# Use most recent stable release
#git checkout v{version}  # Switch to specified release version
 
autoconf     	# Create ./configure script
./configure  	# Configure and create Makefile
make -j `nproc`  # Build Verilator itself (if error, try just 'make')
sudo make install


```