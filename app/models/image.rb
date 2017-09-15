class Image < ActiveRecord::Base
  validates_uniqueness_of :priority_number
end
