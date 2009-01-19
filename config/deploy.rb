set :default_stage, "staging"

require 'capistrano/ext/multistage'
require 'spacesuit/recipes/multistage_patch'
require 'spacesuit/recipes/common'

set :client, "bogus"
set :application, "tech"

set :rails_env, "production"

set :ssh_options, {:forward_agent => true}

default_run_options[:pty] = true
set :scm, "git"
set :repository,  "git@github.com:mikehale/bogus_tech.git"
set :deploy_via, :remote_cache
set :keep_releases, 10
set :git_enable_submodules, 1

before "deploy:update_code", "deploy:git:pending"