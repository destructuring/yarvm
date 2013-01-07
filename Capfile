#!/usr/bin/env ruby

require 'alpha_omega/deploy'

set :releases, [ ]

# TODO install to $HOME or /usr/local
set(:deploy_to) { "#{capture("cd ~ && pwd").chomp}/.yarvm" }

set :root_user, Etc.getpwuid.name
set :root_group, Etc.getgrgid(Etc.getpwuid.gid).name

set :use_sudo, false
set :dir_perms, "0750"

set :bundler_options, "--local --path vendor/bundle"

# interesting hosts
Deploy self, __FILE__ do |admin, node| 
  { :deploy => { } }
end
