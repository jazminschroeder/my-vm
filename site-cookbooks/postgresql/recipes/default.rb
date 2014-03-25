bash 'update apt-get' do
  code 'sudo apt-get update'
end

bash 'add repository' do
  code 'wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -'
end

bash 'setup repository' do
  code 'sudo sh -c \'echo "deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main" >> /etc/apt/sources.list.d/postgresql.list\''
end

bash 'install postgres' do
  code 'sudo apt-get update & sudo apt-get install postgresql-9.3'
end
