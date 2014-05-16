#
# Author:: Adam Kalman (<akalman@daptiv.com>)
# Cookbook Name:: nodejs
# Recipe:: npmrc
#
# Copyright (c) 2014 Daptiv Solutions LLC.
#
# All rights reserved - Do Not Redistribute
#

# Configures the workstation to load npm dependencies
# from our internal npm registry.
#

registry = node['nodejs']['npmrc']['registry']
auth = node['nodejs']['npmrc']['_auth']
email = node['nodejs']['npmrc']['email']
alwaysAuth = node['nodejs']['npmrc']['always-auth']

nodejs_npm_registry "nodejs_npm_registry" do
  registry registry
  auth auth
  email email
  alwaysAuth alwaysAuth
end
