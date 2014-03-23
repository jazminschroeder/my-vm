bash 'atp-get update' do
  code 'sudo apt-get update'
end

bash 'install jdk' do
  code 'sudo apt-get install openjdk-7-jre-headless -y'
end

bash 'download elasticsearch' do
  code 'wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.0.1.deb'
end

bash 'install elasticsearch' do
  code 'sudo dpkg -i elasticsearch-1.0.1.deb'
end

bash 'start elasticsearch' do
  code 'sudo /etc/init.d/elasticsearch start'
end
