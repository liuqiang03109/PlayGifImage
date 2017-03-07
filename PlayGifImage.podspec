#
# Be sure to run `pod lib lint PlayGifImage.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PlayGifImage'
  s.version          = '0.1.2'
  s.summary          = 'PlayGifImage.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
一个播放gif图片的小demo，并且也可以显示图片
                       DESC

  s.homepage         = 'https://github.com/liuqiang03109/PlayGifImage'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wenhe-liu' => 'liu.wen.he@chrjdt.com' }
  s.source           = { :git => 'https://github.com/liuqiang03109/PlayGifImage.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'PlayGifImage/Classes/**/*'
  
  # s.resource_bundles = {
  #   'PlayGifImage' => ['PlayGifImage/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
