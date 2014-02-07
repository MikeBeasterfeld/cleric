ruby_version = "2.0.0-p353"

include_recipe "sqlite-dev"
include_recipe "nodejs::default"
include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

rbenv_ruby ruby_version do
  global true
end

rbenv_gem "bundler" do
  ruby_version ruby_version
end

rbenv_execute "run" do
  command "bundle install"
  cwd "/vagrant"
  ruby_version ruby_version
end

link "/home/vagrant/.bashrc" do
  to "/vagrant/customconfig/bashrc"
end

