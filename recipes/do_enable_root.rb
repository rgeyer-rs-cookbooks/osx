#
# Cookbook Name:: osx
# Recipe:: enable_root
#
#  Copyright 2011-2012 Ryan J. Geyer
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.

rightscale_marker :begin

bash "Enable root user" do
  code "dsenableroot -u #{node[:osx][:admin_user]} -p #{node[:osx][:admin_pass]} -r #{node[:osx][:root_pass]}"
end

rightscale_marker :end