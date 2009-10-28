require 'compass'

Compass.configuration.parse('config/compass.rb')
configuration.sass_options = Compass.sass_engine_options

configuration.haml_options = {
  :format => :html5,
  :attr_wrapper => '"'
}

configuration.use_extensions_for_page_links = false
configuration.preview_server_port = 80
configuration.preview_server_host = "staticmatic.local"
configuration.use_extensions_for_page_links = false