Pod::Spec.new do |s|
  s.name         	  = "BrazeEngine"
  s.version      	  = "2.0.0"
  s.summary     	  = "Integration library for Factual's Engine SDK and Braze iOS SDK"
  s.homepage     	  = "https://www.factual.com/products/engine"
  s.license      	  = "MIT"
  s.author       	  = { "Factual Inc" => "mobile@factual.com" }
  s.platform     	  = :ios
  s.source       	  = { :http => "https://factual.bintray.com/files-internal/braze-engine-ios-#{s.version.to_s}.tar.gz", :flatten => true }
  s.source_files          = "*.{h,m}"
  s.ios.deployment_target = "8.0"
  s.static_framework      = true
  s.xcconfig              = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/FactualEngineSDK' }
  s.dependency "Appboy-iOS-SDK"
  s.dependency "FactualEngineSDK", "~> 9.4"
end
