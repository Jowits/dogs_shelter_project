require 'bundler'
require 'faker'

Bundler.require

logger = Logger.new(STDOUT)
logger.level = Logger::INFO
ActiveRecord::Base.logger = logger
ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'lib'