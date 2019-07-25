Pod::Spec.new do |s|
  s.name         	   = "IntegrationUtils"
  s.version     	   = "1.0.0"
  s.summary      	   = "Utility tools for integration libraries."
  s.homepage     	   = "https://www.factual.com/products/engine"
  s.license      	   = "MIT"
  s.author       	   = { "Factual Inc" => "mobile@factual.com" }
  s.platform     	   = :ios
  s.source       	   = { :http => "https://factual.bintray.com/files/integration-utils-ios-#{s.version.to_s}.tar.gz", :flatten => true }
  s.source_files     = "*.{h,m}"
  s.static_framework = true
  s.xcconfig         = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/FactualEngineSDK' }
  s.dependency "FactualEngineSDK", ">= 10.0.0"
end
