require_relative "./pod9review/version"

# what is the difference between require and require_relative?
# - require_relative: use for relative files 
# - require: used for external paths 


# really for the gemfile to load bundled gems
require 'bundler'
Bundler.require