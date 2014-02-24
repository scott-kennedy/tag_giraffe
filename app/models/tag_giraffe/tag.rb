class TagGiraffe::Tag < ActiveRecord::Base
  has_many :taggings, class_name: 'TagGiraffe::Tagging',
    dependent: :destroy
  
  validates :name, presence: true, uniqueness: true
end