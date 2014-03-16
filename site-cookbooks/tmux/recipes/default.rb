home = '/home/vagrant'

package "tmux" do
  action :install
end

cookbook_file File.join(home, '.tmux.conf') do
  action :create
end
