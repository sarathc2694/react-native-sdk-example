Pod::Spec.new do |s|
  s.name         = 'RNSDK'
  s.module_name  = 'RNSDK'
  s.version      = '1.1.0'
  s.summary      = 'react native sdk example'
  s.license      = 'MIT'

  s.author       = 'Sarath Chenthamarai'
  s.homepage     = 'https://github.com/sarathc2694/react-native-sdk-example#readme'

  s.source       = { :git => 'https://github.com/sarathc2694/react-native-sdk-example.git' }

  s.source_files = 'ios/SDKOutput/*.{h,m,swift,js,css,html,json,xml,txt,etc}'
  
  s.vendored_frameworks = 'ios/SDKOutput/Frameworks/*'
  s.resource_bundles = {
    'RNSDK' => ['ios/SDKOutput/Resources/*'],
  }
  s.dependency "hermes-engine"
  if respond_to?(:install_modules_dependencies, true)
    install_modules_dependencies(s)
   else
   end
end