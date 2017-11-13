class Image < ActiveRecord::Base
  def self.increment_following( priority_number, image=nil )
    images = Image.where( "priority_number >= ?", priority_number )
    if( image.present? )
      images.delete(image)
    end

    images.each do |image|
      image.update(priority_number: image.priority_number + 1)
    end
  end
end
