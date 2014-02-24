require 'rails/engine'

class TagGiraffe::Engine < Rails::Engine
  # set our engine name
  engine_name :tag_giraffe
  
  ActiveSupport.on_load :active_record do
    # this is run when Rails loads ActiveRecord, and is
    # within the contents of ActiveRecord::Base.
    include TagGiraffe::ActiveRecord
  end
end