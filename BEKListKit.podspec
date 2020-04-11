#
# Be sure to run `pod lib lint BEKListKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BEKListKit'
  s.version          = '1.0.2'
  s.summary          = 'BEKListKit contains both generics of UITableView and UICollectionView components and help you to create complex lists in just a minute.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
'Generic components based on MVVM that allows you to add multiple cell types at runtime in a single line of code. BEKListKit contains both generics of UITableView and UICollectionView components and help you to create complex lists in just a minute.'
                       DESC

  s.homepage         = 'https://github.com/behrad-kzm/BEKListKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'behrad-kzm' => 'behradkzm@gmail.com' }
  s.source           = { :git => 'https://github.com/behrad-kzm/BEKListKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.3'

  s.source_files = 'BEKListKit/Classes/**/*'
	s.swift_versions = '5.0'
  # s.resource_bundles = {
  #   'BEKListKit' => ['BEKListKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
