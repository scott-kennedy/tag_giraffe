module TagGiraffe::ActiveRecord
  def self.included(base)
    # include our class methods
    base.extend TagGiraffe::ActiveRecord::ClassMethods
  end
  
  def tag_names
    @tag_names ||= TagGiraffe::TagNames.new self
  end
  
  def tag_names=(names)
    if names.is_a?(TagGiraffe::TagNames)
      @tag_names = names
    else
      # convert the array of strings to a TagNames object
      @tag_names = TagGiraffe::TagNames.new_with_names self, names
    end
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