class Image < ActiveRecord::Base
  def self.increment_following( priority_number, image=nil )
    images = Image.where( "priority_number >= ?", priority_number )

    if( image.present? )
      images = images.reject{ |image_find| image_find.id == image.id}
    end

    images.each do |image_loop|
      image_loop.update(priority_number: image_loop.priority_number + 1)
    end
  end
end
