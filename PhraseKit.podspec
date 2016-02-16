#
# Be sure to run `pod lib lint PhraseKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "PhraseKit"
  s.version          = "0.1.0"
  s.summary          = "PhraseKit is a string resource templating library for ObjetiveC using placeholders"
  s.description      = <<-DESC
  PhraseKit is a simple category for replacing custom placeholders (strings enclosed in brackets) with values from NSDictionary.
                       DESC

  s.homepage         = "https://github.com/fewlaps/PhraseKit"
  s.license          = 'MIT'
  s.author           = { "Fewlaps" => "core@fewlaps.com" }
  s.source           = { :git => "https://github.com/fewlaps/PhraseKit.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/fewlaps'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'PhraseKit' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
