curl -sSL https://get.daocloud.io/docker | sh
curl -L https://get.daocloud.io/docker/compose/releases/download/1.29.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
sudo systemctl start docker
sudo systemctl enable docker
cat > /etc/docker/daemon.json << EOF
{
	"registry-mirrors": ["https://mirror.ccs.tencentyun.com"]
}
EOF
sudo systemctl daemon-reload
sudo systemctl restart docker
