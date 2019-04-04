Pod::Spec.new do |s|
  s.name                 = "FactualEngineSDK"
  s.version              = "9.4.0"
  s.summary              = "FactualEngineSDK"
  s.homepage             = "https://www.factual.com/products/engine"
  s.license              = { :file => 'Notices and Open Source Licenses', :type => 'copyright' }
  s.author               = "Factual Inc"
  s.platform             = :ios
  s.source               = { :http => "https://factual.bintray.com/files/factual-engine-sdk-ios-#{s.version.to_s}.tar.gz", :flatten => true }
  s.source_files         = "*.h"
  s.libraries            = "c++", "z"  
  s.ios.vendored_library = "libFactualEngine.a"
  s.requires_arc         = true
  s.static_framework     = true
  s.module_map           = "module.modulemap"
  s.frameworks           = "CoreLocation", "Accelerate"
  s.preserve_paths       = "libFactualEngine.a", "module.modulemap"
  s.xcconfig             =  { 'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/FactualEngineSDK',
                              'HEADER_SEARCH_PATHS'  => '${PODS_ROOT}/FactualEngineSDK',
                              'SWIFT_INCLUDE_PATHS' => '$(PODS_ROOT)/FactualEngineSDK' }
end
