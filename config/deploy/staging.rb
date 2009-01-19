require 'spacesuit/recipes/terralien'

set :deploy_to, "/var/www/#{client}/#{application}"
set :domain, "#{application}.#{client}.dock.terralien.biz"

set :user, client

role :web, domain
role :app, domain
role :db,  domain, :primary => true
