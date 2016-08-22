Pod::Spec.new do |s|
  s.name         = "AkvelonXctest"
  s.version      = "0.0.1"
  s.summary      = "UI tests (developed by Akvelon) for Smartsheet iOS app."
  s.homepage     = "https://gitlab.akvelon.net:9443/smartsheet-automation/SmartsheetIosXctest"
  s.license      = "COMMERCIAL"
  s.author       = "Akvelon"
  s.platform     = :ios, "8.0"
  s.source       = { :git => "git@gitlab.akvelon.net:smartsheet-automation/SmartsheetIosXctest.git", :branch => "master" }
  s.source_files = "AkvelonXctest", "AkvelonXctest/**/*.{h,m,swift}"
  s.resource_bundles = {
    'Tests' => ['AkvelonXctest/Tests/*'],
  }
  s.resources    = ["AkvelonXctest/Tests/*"]
  s.preserve_paths = ["AkvelonXctest/Resources/*", "AkvelonXctest/Fixtures/*"]
  s.framework    = "XCTest"
end
