home = '/home/vagrant'

package 'vim-nox' do
  action :install
end

git File.join(home, '.vim') do
  user 'vagrant'
  repository "git@github.com:jazminschroeder/dotvim.git"
  action :checkout
  enable_submodules true
end

link File.join(home, '.vimrc') do
  to File.join(home, '.vim', 'vimrc')
end

bash 'build command-t' do
  user 'vagrant'
  cwd "#{home}/.vim/bundle/command-t/ruby/command-t"
  creates "#{home}/.vim/bundle/command-t/ruby/command-t/ext.o"
  code 'ruby extconf.rb ; make clean ; make'
end
