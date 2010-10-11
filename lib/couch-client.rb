$:.unshift(File.dirname(File.expand_path(__FILE__)))

require 'couch-client/connection'
require 'couch-client/connection_handler'
require 'couch-client/hookup'
require 'couch-client/database'
require 'couch-client/document'
require 'couch-client/attachment'
require 'couch-client/design'
require 'couch-client/collection'
require 'couch-client/row'

module CouchClient
  VERSION = "0.0.1"

  class Error < Exception; end
    
  def self.connect(args = {}, &block)
    Connection.new(args, &block)
  end
end
