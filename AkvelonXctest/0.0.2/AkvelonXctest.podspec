Pod::Spec.new do |s|

  s.name             = "AkvelonXctest"
  s.platform         = :ios, "9.0"

  s.version          = "1.0.0"
  s.summary          = "UI tests (developed by Akvelon) for Smartsheet iOS app."
  s.homepage         = "https://github.com/akvelon/SmartsheetIosXctest"
  s.author           = { "Akvelon" => "smartsheet.team@akvelon.com" }
  s.license          = "COMMERCIAL"
  s.source           = { :git => "--no such place--", :branch => "-- no such branch --" }

  s.vendored_frameworks = "AkvelonXctest.framework"

  # Set Swift version 3.0 to avoid "Use Legacy Swift Language Version" error from XCode.
  # Set swiftc optimization level to '-Onone' to avoid "Segmentation fault 11" errors (happens in "Release" configuration).
  # Set "Build active architecture only" to avoid useless compilation for other architecture.
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3.0', 'SWIFT_OPTIMIZATION_LEVEL' => '-Onone', 'ONLY_ACTIVE_ARCH' => 'YES' }

  # Requires "XCTest" framework for compilation.
  s.frameworks       = "XCTest"
end
