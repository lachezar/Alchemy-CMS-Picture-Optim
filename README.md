This is an [Alchemy CMS](https://github.com/magiclabs/alchemy_cms) extension which will optimize incoming images on upload.

To install it add `gem "alchemy_cms_picture_optim"` to yours project Gemfile.

This gem relies on [image_optim](https://github.com/toy/image_optim) so make sure to put all of its binary dependencies (`advpng, gifsicle, jpegoptim, jpegtran, optipng, pngcrush, pngout`) on your path.

To run the tests use `rake test:init` and `rake test:run`. To build the gem use `rake build`.

