namespace :test do
  desc "Initialize test environment"
  task :init do
    cd "tests"
    sh "alchemy new proj"
    mkdir "proj/uploads/pictures"
    File.open("proj/Gemfile", 'a') { |f| f.write("\ngem 'image_optim'") }
    ln "test.rb", "proj/test.rb"
  end

  desc "Run tests"
  task :run do
    cp Dir.glob("tests/res/test.*"), "tests/proj/uploads/pictures/"
    cd "tests/proj"
    sh "rails runner \"require './test'\""
  end

  desc "Clean test environment"
  task :clean do
    sh "mysqladmin -u root -p drop proj_development drop proj_test"
    rm_rf "tests/proj"
  end
end

desc "Build the gem file"
task :build do
  sh "gem build alchemy_cms_picture_optim.gemspec"
end

