

sudo whoami
sudo adduser luishino
echo veremos como ha quedado el archivo /etc/passwd
cat /etc/passwd | grep luishino
echo Veamos como ha quedado el archivo /etc/group
cat /etc/group | grep sistema

echo asignar una contraseña a mortadelo ejecutaríamos el siguiente comando:
sudo passwd luishino


sudo dnf upgrade --refresh -y
sudo whoami
echo Esto se puede verificar usando el siguiente
rpm -qa | grep openssh-server

sudo dnf -y install openssh-server openssh-clients
sudo dnf install openssh-server firewall-config
sudo dnf install openssh-server
sudo service sshd start
sudo systemctl status sshd

firewall-cmd --add-service=ssh --permanent
firewall-cmd --reload

sudo nano /etc/ssh/sshd_config
echo PermitRootLogin yes
sudo systemctl status sshd
sudo whoami
su root
sudo whoami
ssh luishino@192.168.0.24


sudo ss -lt

echo ------------------------------

var=/home/luishino
cd var
var2=imagenes
cd var2
echo copia de seguridad en la carpeta
date
tar

echo ------------------------------

sudo whoami
sudo install openssh-server
sudo apt install firewall-config

