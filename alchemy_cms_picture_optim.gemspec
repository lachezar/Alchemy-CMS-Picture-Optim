Gem::Specification.new do |s|
  s.name        = 'alchemy_cms_picture_optim'
  s.version     = '0.1.1'
  s.date        = '2013-10-11'
  s.summary     = "Image optimization hook for Alchemy CMS."
  s.description = "Lossless optimization of the uploaded images using image_optim (make sure to install all binary dependecies of image_optim)"
  s.authors     = ["Lucho Yankov"]
  s.email       = 'lucho870601@gmail.com'
  s.files       = Dir.glob("{lib}/**/*")
  s.homepage    = 'https://github.com/lucho870601/Alchemy-CMS-Picture-Optim'
  s.license     = 'MIT'
  s.add_dependency "alchemy_cms"
  s.add_dependency "image_optim"
end
