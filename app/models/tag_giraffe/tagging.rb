class TagGiraffe::Tagging < ActiveRecord::Base
  belongs_to :taggable, polymorphic: true
  belongs_to :tag, class_name: 'TagGiraffe::Tag'
  
  validates :taggable, presence: true
  validates :tag, presence: true
end