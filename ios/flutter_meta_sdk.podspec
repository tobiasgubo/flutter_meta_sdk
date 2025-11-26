#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_meta_sdk.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_meta_sdk'
  s.version          = '1.0.0'
  s.summary          = 'Meta SDK for Flutter'
  s.description      = <<-DESC
  More information about Meta SDK for iOS you can referes to official documentation https://developers.facebook.com/docs/ios
                       DESC
  s.homepage         = 'https://github.com/chandrabezzo/flutter_meta_sdk'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Solusi Bejo' => 'chandrashibezzo@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.static_framework = true
  s.dependency 'Flutter'
  # Pin to known working versions of Meta (Facebook) SDKs. Update these when the upstream SDKs are updated.
  # FBSDKCoreKit version: 18.0.2 (see https://github.com/facebook/facebook-ios-sdk/releases)
  # FBAudienceNetwork version: 6.21.0 (see https://cocoapods.org/pods/FBAudienceNetwork)
  s.dependency 'FBSDKCoreKit', '18.0.2'
  s.dependency 'FBAudienceNetwork', '6.21.0'
  s.platform = :ios, '12.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
  s.ios.deployment_target = '12.0'
end
