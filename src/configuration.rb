require 'compass'

Compass.configuration.parse('config/compass.rb')
configuration.sass_options = Compass.sass_engine_options

configuration.haml_options = {
  :format => :html5,
  :attr_wrapper => '"'
}

configuration.use_extensions_for_page_links = false