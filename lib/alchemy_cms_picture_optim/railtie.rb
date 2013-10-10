module AlchemyCmsPictureOptim
  class Railtie < Rails::Railtie
    config.after_initialize do
      require File.expand_path('../../alchemy_picture_optim_hook', __FILE__)
    end
  end
end
