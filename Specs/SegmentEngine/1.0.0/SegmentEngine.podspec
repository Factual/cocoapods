Pod::Spec.new do |s|
  s.name         	   = "SegmentEngine"
  s.version     	   = "1.0.0"
  s.summary      	   = "Factual Engine Integration for Segment's analytics-ios library."
  s.homepage     	   = "https://www.factual.com/products/engine"
  s.license      	   = "MIT"
  s.author       	   = { "Factual Inc" => "mobile@factual.com" }
  s.platform     	   = :ios
  s.source       	   = { :http => "https://factual.bintray.com/files/segment-engine-ios-#{s.version.to_s}.tar.gz", :flatten => true }
  s.source_files     = "*.{h,m}"
  s.static_framework = true
  s.xcconfig         = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/FactualEngineSDK' }
  s.dependency "Analytics", ">= 3.6.0"
  s.dependency "IntegrationUtils"
  s.dependency "FactualEngineSDK", ">= 11.0.0"
end
