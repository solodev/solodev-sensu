#
# Cookbook Name:: solodev_sensu
# Recipe:: customer_client
#
# Copyright (c) 2016 Solodev, All Rights Reserved.

set_sensu_state(node, "ssl", "client", "cert", citadel["sensu/ssl/client/cert.pem"])
set_sensu_state(node, "ssl", "client", "key", citadel["sensu/ssl/client/key.pem"])

include_recipe "sensu"
include_recipe "solodev_sensu::_client_config"
include_recipe "solodev_sensu::_client_extensions"
include_recipe "solodev_sensu::_client_plugins"
include_recipe "sensu::client_service"
