Pod::Spec.new do |s|
  s.name                 = "FactualEngineSDK"
  s.version              = "9.3.0"
  s.summary              = "FactualEngineSDK"
  s.homepage             = "https://www.factual.com/products/engine"
  s.license              = { :file => 'Notices and Open Source Licenses', :type => 'copyright' }
  s.author               = "Factual Inc"
  s.platform             = :ios
  s.version              = "9.3.0"
  s.source_files         = "*.h"
  s.preserve_paths       = "libFactualEngine.a"
  s.libraries            = "c++", "z"  
  s.ios.vendored_library = "libFactualEngine.a"
  s.requires_arc         = true
  s.xcconfig             =  { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/FactualEngineSDK"',
                              'HEADER_SEARCH_PATHS'  => '"${PODS_ROOT}/Headers/FactualEngineSDK"' }
end
