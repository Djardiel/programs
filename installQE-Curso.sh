#Instalador de programas
########################
#Atualizar o sistema
echo "Atualizar o sistema"
sudo apt-get update
sudo apt-get upgrade -y
#Baixar pasta Curso
wget https://github.com/mjtcosta/DFT-UFF/archive/master.zip
unzip master.zip
mv DFT-UFF-master Curso-UFF
#Instalar visualizadores
echo "Instalar visualizadores"
sudo apt-get install xcrysden -y
sudo apt-get install jmol -y
sudo apt-get install avogadro -y
sudo apt-get install grace -y
#Instalar compilador fortran
echo "Instalar compilador fortran"
sudo apt-get install gfortran -y
# Instalar a biblioteca MPI
echo "Instalar a biblioteca MPI"
sudo apt-get install openmpi-bin libopenmpi-dev -y
#Instalar bibliotecas
echo "Instalar bibliotecas"
wget https://github.com/Reference-LAPACK/lapack/archive/v3.9.0.tar.gz
tar -xvf v3.9.0.tar.gz
cd lapack-3.9.0
cp make.inc.example make.inc
make blaslib
make lapacklib
make tmglib
sudo cp librefblas.a /usr/local/lib/libblas.a
sudo cp liblapack.a /usr/local/lib/liblapack.a
sudo cp libtmglib.a /usr/local/lib/libtmg.a
cd
# Instalar o QE
echo "Instalar o QE"
wget https://github.com/QEF/q-e/archive/qe-6.5.tar.gz
tar -xvf qe-6.5.tar.gz
mv q-e-qe-6.5 qe-6.5
cd qe-6.5
./configure
make all
cd
# Instalar o python
echo "Instalar o python"
wget https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh
bash Anaconda3-2020.02-Linux-x86_64.sh
# Instalar o BURAI
# Instalar o programa java --- USAR PARA O BURAI(Ubuntu 16.04)
echo "Instalar o programa java"
sudo apt-get install openjdk-8-jdk -y
sudo apt-get install openjfx -y
sudo apt-get install default-jre -y
sudo apt-get install default-jdk -y
echo "EXTRA instalar o BURAI"
wget https://github.com/BURAI-team/burai/releases/download/ver.1.3.2/BURAI1.3.2_Linux.tgz
tar -xzvf BURAI1.3.2_Linux.tgz
cd BURAI1.3.2
chmod +x makeLauncher.sh
./makeLauncher.sh
cd bin
chmod +x burai.sh
./burai.sh
echo "Consolidar instalação"
#sudo apt-get update
#sudo apt-get upgrade -y
