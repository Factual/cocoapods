Pod::Spec.new do |s|
    s.name                  = "IterableEngine"
    s.version               = "1.1.0"
    s.summary               = "Integration library for Factual's Engine SDK and the Iterable iOS SDK"
    s.homepage              = "https://www.factual.com/products/engine"
    s.license               = "MIT"
    s.author                = { "Factual Inc" => "mobile@factual.com" }
    s.platform              = :ios
    s.source                = { :http => "https://factual.bintray.com/files/iterable-engine-ios-#{s.version}.tar.gz", :flatten => true }
    s.source_files          = "*.swift"
    s.ios.deployment_target = "9.0"
    s.dependency "FactualEngineSDK"
    s.dependency "Iterable-iOS-SDK"
    s.xcconfig              = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/FactualEngineSDK' }
end
