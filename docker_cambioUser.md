
grep 'docker' /etc/group
sudo groupadd docker
sudo usermod -aG docker kamilo
groups kamilo
sudo chmod 777 /var/run/docker.sock
sudo systemctl restart docker
