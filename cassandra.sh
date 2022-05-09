sudo apt update
sudo apt install openjdk-8-jdk -y
sudo apt install apt-transport-https
sudo sh -c 'echo "deb http://www.apache.org/dist/cassandra/debian 40x main" > /etc/apt/sources.list.d/cassandra.list'
wget -q -O - https://www.apache.org/dist/cassandra/KEYS | sudo apt-key add -
echo "deb http://www.apache.org/dist/cassandra/debian 31x main" | sudo tee -a /etc/apt/sources.list.d/cassandra.sources.list
#wget https://archive.apache.org/dist/cassandra/3.11.8/apache-cassandra-3.11.8-src.tar.gz
#gunzip apache-cassandra-3.11.8-src.tar.gz 
#tar -xf apache-cassandra-3.11.8-src.tar
sudo apt install curl
curl https://www.apache.org/dist/cassandra/KEYS | sudo apt-key add -
sudo apt update
sudo apt install cassandra
sudo systemctl enable cassandra
sudo systemctl start cassandra