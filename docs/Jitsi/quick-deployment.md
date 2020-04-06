# Jitsi installatio


## Base installation of Docker-CE and Jitsi Meet
sudo apt-get update && sudo apt-get update && sudo apt-get install docker-ce && git clone https://github.com/jitsi/docker-jitsi-meet && cd docker-jitsi-meet && mkdir -p ~/.jitsi-meet-cfg/{web/letsencrypt,transcripts,prosody,jicofo,jvb} && cp env.example .env && docker-compose up -d.

### Additional configuration files
* [ssl.conf](https://github.com/SSC-ICT-Innovatie/rijksconnect-web/blob/master/.jitsi-meet-cfg/web/nginx/ssl.conf)
* [robots.txt](https://github.com/SSC-ICT-Innovatie/rijksconnect-web/blob/master/.jitsi-meet-cfg/web/nginx/robots.txt)
* [geo-fence.conf](https://github.com/SSC-ICT-Innovatie/rijksconnect-web/blob/master/.jitsi-meet-cfg/web/nginx/geo-fence.conf)
