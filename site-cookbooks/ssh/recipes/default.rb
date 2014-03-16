cookbook_file "/home/vagrant/.ssh/config" do
  user 'vagrant'
  action :create
end

