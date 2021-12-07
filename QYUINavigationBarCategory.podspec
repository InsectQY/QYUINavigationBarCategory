#
# Be sure to run `pod lib lint QYUINavigationBarCategory.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'QYUINavigationBarCategory'
  s.version          = '0.1.0'
  s.summary          = 'A handy collection of UINavigationBar categories.'

  s.description      = <<-DESC
  Easy to set backgroundColor, backgroundImage, titleTextAttributes, transparent property of UINavigationBar.
  You dont have to worry about system compatibility.
                       DESC

  s.homepage         = 'https://github.com/insect/QYUINavigationBarCategory'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'insect' => '704861917@qq.com' }
  s.source           = { :git => 'https://github.com/insect/QYUINavigationBarCategory.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'QYUINavigationBarCategory/Classes/**/*'
  
end
