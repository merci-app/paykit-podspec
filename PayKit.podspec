#
#  Be sure to run `pod spec lint PayKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name            = "PayKit"
  spec.version         = "1.8.0"
  spec.summary         = "PayKit é framework destinado a Merci e seus parceiros."
  spec.swift_versions  = ['5.2']

  spec.description  = <<-DESC
  Esse framework é de uso da Merci e seus parceiros a fim de construir recursos de integração entre nosso sistemas.
                   DESC

  spec.homepage     = 'https://github.com/merci-app/paykit-podspec'
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.authors      = { 'Denis Oliveira' => 'denis @ merci dot app' }
  spec.source       = { :git => 'https://github.com/merci-app/paykit-podspec.git', :tag => '1.8.0' }
 
  spec.ios.deployment_target = '9.0'
  spec.vendored_frameworks   = [
    'MCIStorePayment.xcframework',
    'PayKit.xcframework'
  ]

  spec.frameworks  = 'UIKit', 'MapKit'
  spec.dependency 'Alamofire', '<= 4.9.1'
  spec.dependency 'Kingfisher'
  spec.dependency 'AlamofireNetworkActivityIndicator', '~> 2.4.0'
  spec.dependency 'KeychainAccess', '<= 4.2.0'
  spec.dependency 'TPKeyboardAvoiding', '~> 1.3'
end