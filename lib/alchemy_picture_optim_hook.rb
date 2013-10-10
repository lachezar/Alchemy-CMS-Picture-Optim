require 'alchemy/picture'

module Alchemy
  class Picture < ActiveRecord::Base

    after_save do
      begin
        require 'image_optim'
        image_optim = ImageOptim.new
        image_optim.optimize_image!(Rails.root.join('uploads', 'pictures', image_file_uid))
      rescue Exception => exception
        Rails.logger.error "Error when optimizing the image: #{exception.message}"
        p "Error when optimizing the image: #{exception.message}"
      end
    end
  end
end
