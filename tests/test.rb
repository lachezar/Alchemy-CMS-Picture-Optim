$LOAD_PATH.unshift File.expand_path('../../../lib', __FILE__)
require File.dirname(__FILE__) + "/../../lib/alchemy_cms_picture_optim"

['test.jpg', 'test.png'].each do |f|
  file = File.new("uploads/pictures/#{f}")
  original_size = file.size
  p = Alchemy::Picture.new(image_file: file)
  p.image_file_uid = f
  p.save
  optimized_size = File.size("uploads/pictures/#{f}")

  unless optimized_size < original_size
    raise Exception.new("ERROR: File #{f} was not optimized!")
  end
end

p "Congratz, no errors!"
