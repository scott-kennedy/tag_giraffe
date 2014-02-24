module TagGiraffe::ActiveRecord
  def self.included(base)
    # include our class methods
    base.extend TagGiraffe::ActiveRecord::ClassMethods
  end
  
  module ClassMethods
    # set up the underlying tag assocations in the model
    def has_many_tags
      has_many :taggings, class_name: 'TagGiraffe::Tagging',
        as: :taggable, dependent: :destroy
      has_many :tags, class_name: 'TagGiraffe::Tag',
        through: :taggings
    end
  end
end
      