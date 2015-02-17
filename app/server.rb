require 'sinatra'
require 'json'

require_relative './controllers/application'

set :public_dir, Proc.new {File.join(root, '..', 'public')}

