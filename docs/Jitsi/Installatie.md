Updates uitvoeren
$ sudo apt-get clean && sudo apt-get -y autoremove && sudo apt-get -y update && sudo apt-get -y dist-upgrade --fix-missing && sudo sync


Configureer de hostnaam van de server naar het juiste domein / subdomein :
$ hostnamectl set-hostname <HOSTNAAM>
$ sudo sed -i 's/^127.0.1.1.*$/127.0.1.1 <HOSTNAAM>.<DOMEINNAAM>.<EXTENSIE> <HOSTNAAM>/g' /etc/hosts


Installeer Java:
$ sudo apt install openjdk-8-jre-headless -y

Controleer werking Java:
$ java -version

Configureer de JAVA_HOME environment variabele:
$ export "JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:bin/java::")" 
$ export PATH=$PATH:$JAVA_HOME/bin


Installeer webserver:
$ sudo apt install nginx -y

Start de nginx service en enable deze bij system boot.
$ systemctl start nginx
$ systemctl enable nginx


Voorbereiding Installatie Jitsi door jitsi key en repository toe te voegen.
$ sudo wget -qO - https://download.jitsi.org/jitsi-key.gpg.key | sudo apt-key add - 
$ sudo sh -c "echo 'deb https://download.jitsi.org stable/' > /etc/apt/sources.list.d/jitsi-stable.list"

Installeer Jitsi.
$ sudo apt install jitsi-meet -y

Wanneer gevraagd geef de FQDN op. 
<HOSTNAAM>.<DOMEINNAAM>.<EXTENSIE>

Wanner om de SSL certificate gevraagd wordt: 
Genereer een nieew self-signed certificate

Configuratie van de jitsi-videobridge:
$ sudo sed s/JVB_HOSTNAME=/JVB_HOSTNAME=$VIRTUAL_HOST/ -i /etc/jitsi/videobridge/config
$ sudo sed s/JICOFO_HOSTNAME=/JICOFO_HOSTNAME=$VIRTUAL_HOST/ -i /etc/jitsi/jicofo/config
$ sudo nano /etc/jitsi/videobridge/sip-communicator.properties
org.ice4j.ice.harvest.NAT_HARVESTER_LOCAL_ADDRESS=<Lokaal IP Address>
org.ice4j.ice.harvest.NAT_HARVESTER_PUBLIC_ADDRESS=<Extern IP address>

Aanpassen van systemd voor het maximum aantal processes en open files
$ sudo nano /etc/systemd/system.conf
DefaultLimitNOFILE=65000
DefaultLimitNPROC=65000
DefaultTasksMax=65000


Draai het volgende script om een Let’s Encrypt SSL certificate aan te maken:
/usr/share/jitsi-meet/scripts/install-letsencrypt-cert.sh


Om te testen, open een browser en ga naar:
https://<HOSTNAAM>.<DOMEINNAAM>.<EXTENSIE>
https://<external ip address>
