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

## Simulation Tools


### Verilator

https://verilator.org/guide/latest/install.html
https://www.accellera.org/downloads/standards/systemc

```
sudo apt-get install verilator

sudo apt-get install perl-doc
sudo apt-get install git autoconf flex bison

sudo apt-get install clang 
sudo apt-get install cmake 
sudo apt-get install gdb 
sudo apt-get install gprof 
sudo apt-get install graphviz 
sudo apt-get install lcov
sudo apt-get install clang-format-14 
sudo apt-get install libclang-dev 
sudo apt-get install yapf3 
sudo apt-get install bear

pip3 install clang sphinx sphinx_rtd_theme sphinxcontrib-spelling breathe ruff


```
TODO: set VERILATOR_ROOT

### Icarus Verilog

https://steveicarus.github.io/iverilog/

```
sudo apt-get update
sudo apt-get -y install iverilog
```

### cocoTB

https://github.com/cocotb

Install in conda using pip

```
pip install cocotb
cocotb-config --version
```

Test it
```
https://github.com/cocotb/cocotb.git
cd cocotb/examples
make all
```

### GTKWave
```
sudo apt-get -y install gtkwave
```

## RISCV Compiler

https://www.embecosm.com/resources/tool-chain-downloads/#corev

```
wget https://buildbot.embecosm.com/job/corev-gcc-ubuntu2004/31/artifact/corev-openhw-gcc-ubuntu2004-20240114.tar.gz
tar -xvzf corev-openhw-gcc-ubuntu2004-20240114.tar.gz
```

Update .bashrc
```
export CV_SW_TOOLCHAIN="/home/yqi/tools/corev-openhw-gcc-ubuntu2004-20240114"
export CV_SW_PREFIX="riscv32-corev-elf-"
export CV_SW_MARCH="rv32imc_zicsr_zifencei"
```



## Backup

```
 
git clone https://github.com/openhwgroup/core-v-verif.git
cd core-v-verif/bin/
pip3 install -r requirements.txt
 
 
 



cpan install Pod::Perldoc
cpan install Parallel::Forker




```