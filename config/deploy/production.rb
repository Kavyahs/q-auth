# Simple Role Syntax
# ==================

set :stage, :production
set :branch, :master
set :deploy_to, '/u01/apps/qwinix/qauth'
set :log_level, :debug
# Supports bulk-adding hosts to roles, the primary server in each group
# is considered to be the first unless any hosts have the primary
# property set.  Don't declare `role :all`, it's a meta role.

role :app, %w{deploy@54.69.36.26}
role :web, %w{deploy@54.69.36.26}
role :db,  %w{deploy@54.69.36.26}


# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server definition into the
# server list. The second argument is a, or duck-types, Hash and is
# used to set extended properties on the server.

server '54.69.36.26', user: 'deploy', roles: %w{web app}, my_property: :my_value


# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult[net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start).
#
# Global options
# --------------
set :ssh_options, {
   #verbose: :debug,
   keys: %w(~/.ssh/id_rsa),
   auth_methods: %w(publickey),
   port: 22
}
#
# And/or per server (overrides global)
# ------------------------------------
# server 'example.com',
#   user: 'user_name',
#   roles: %w{web app},
#   ssh_options: {
#     user: 'user_name', # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: 'please use keys'
#   }
