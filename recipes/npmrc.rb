#
# Author:: Adam Kalman (<akalman@daptiv.com>)
# Cookbook Name:: npmjs
# Recipe:: npmrc
#
# Copyright (c) 2014 Daptiv Solutions LLC.
#
# All rights reserved - Do Not Redistribute
#

# Configures the workstation to load npm dependencies
# from our internal npm registry.
#

registry = node['npm']['npmrc']['registry']
auth = node['npm']['npmrc']['_auth']
email = node['npm']['npmrc']['email']
alwaysAuth = node['npm']['npmrc']['always-auth']

nodejs_npm_registry "nodejs_npm_registry" do
  registry registry
  auth auth
  email email
  alwaysAuth alwaysAuth
end
