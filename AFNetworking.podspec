Pod::Spec.new do |s|
  s.name     = 'AFNetworking-WM'
  s.version  = '4.0.2'
  s.license  = 'MIT'
  s.summary  = 'A delightful networking framework for Apple platforms.'
  s.homepage = 'https://github.com/huhwei920/AFNetworking'
  s.social_media_url = 'https://twitter.com/AFNetworking'
  s.authors  = { 'huhangwei' => 'huhangwei@gmail.com' }
  s.source   = { :git => 'https://github.com/huhwei920/AFNetworking.git', :tag => s.version }

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.10'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'

  s.ios.pod_target_xcconfig = { 'PRODUCT_BUNDLE_IDENTIFIER' => 'com.alamofire.AFNetworking' }
  s.osx.pod_target_xcconfig = { 'PRODUCT_BUNDLE_IDENTIFIER' => 'com.alamofire.AFNetworking' }
  s.watchos.pod_target_xcconfig = { 'PRODUCT_BUNDLE_IDENTIFIER' => 'com.alamofire.AFNetworking-watchOS' }
  s.tvos.pod_target_xcconfig = { 'PRODUCT_BUNDLE_IDENTIFIER' => 'com.alamofire.AFNetworking' }

  s.source_files = 'AFNetworking-WM/AFNetworking.h'

  s.subspec 'Serialization' do |ss|
    ss.source_files = 'AFNetworking-WM/AFURL{Request,Response}Serialization.{h,m}'
  end

  s.subspec 'Security' do |ss|
    ss.source_files = 'AFNetworking-WM/AFSecurityPolicy.{h,m}'
  end

  s.subspec 'Reachability' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.osx.deployment_target = '10.10'
    ss.tvos.deployment_target = '9.0'

    ss.source_files = 'AFNetworking-WM/AFNetworkReachabilityManager.{h,m}'
  end

  s.subspec 'NSURLSession' do |ss|
    ss.dependency 'AFNetworking-WM/Serialization'
    ss.ios.dependency 'AFNetworking-WM/Reachability'
    ss.osx.dependency 'AFNetworking-WM/Reachability'
    ss.tvos.dependency 'AFNetworking-WM/Reachability'
    ss.dependency 'AFNetworking-WM/Security'

    ss.source_files = 'AFNetworking-WM/AF{URL,HTTP}SessionManager.{h,m}', 'AFNetworking-WM/AFCompatibilityMacros.h'
  end

  s.subspec 'UIKit' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.tvos.deployment_target = '9.0'
    ss.dependency 'AFNetworking-WM/NSURLSession'

    ss.source_files = 'UIKit+AFNetworking'
  end
  
  s.subspec 'Resources' do |ss|
      ss.source_files = 'Resources/*.xcprivacy'
    end
end
