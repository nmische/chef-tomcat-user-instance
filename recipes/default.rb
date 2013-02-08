#
# Cookbook Name:: tomcat-user-instance
# Recipe:: default
#
# Copyright 2013, Nathan Mische
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

package "tomcat6-user" do
  action :install
end

execute "install_user_instance" do
  command "tomcat6-instance-create -p #{node['tomcat-user-instance']['http_port']} -c #{node['tomcat-user-instance']['control_port']} -w #{node['tomcat-user-instance']['magic_word']} #{node['tomcat-user-instance']['instance_dir']}"
  creates "#{node['tomcat-user-instance']['instance_dir']}"
  action :run
end
