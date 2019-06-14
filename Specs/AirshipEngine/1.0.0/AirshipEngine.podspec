Pod::Spec.new do |s|
  s.name         = "AirshipEngine"
  s.version      = "1.0.0"
  s.summary      = "Integration library for Factual's Engine SDK and the Urban Airship iOS SDK"
  s.description  = <<-DESC  		   
  		   "Integration library for Factual's Engine SDK and the Urban Airship iOS SDK""
                   DESC
  s.homepage     = "https://www.factual.com/products/engine"
  s.license      = "MIT"
  s.author       = { "Factual Inc" => "mobile@factual.com" }
  s.platform     = :ios
  s.source       = { :http => "https://factual.bintray.com/files/urban-airship-engine-ios-#{s.version.to_s}.tar.gz", :flatten => true }
  s.source_files         = "*.h"
  s.preserve_paths       = "libUrbanAirshipEngine.a"
  s.ios.vendored_library = "libUrbanAirshipEngine.a"
  s.libraries            = "z"  
  s.dependency "FactualEngineSDK", "~> 8.0"
  s.dependency "UrbanAirship-iOS-SDK"
end
