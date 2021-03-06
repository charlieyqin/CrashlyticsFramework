Pod::Spec.new do |s|
  s.name         = "CrashlyticsFramework"
  s.version      = "3.0.8.4"
  s.summary      = "The most powerful, yet lightest weight crash reporting solution for iOS and Android developers. | Crashlytics"
  s.homepage     = "http://crashlytics.com"
  s.license      = { 
    :type => 'Copyright',
    :file => 'LICENSE' # Copied from http://try.crashlytics.com/terms/terms-of-service.pdf
  }
  s.author       = 'Crashlytics'
  s.source       = { :git => "https://github.com/soundcloud/CrashlyticsFramework.git", :tag => s.version.to_s }
  s.platform     = :ios, '5.0'
  s.source_files = 'Crashlytics.framework/Headers/*.h', 'Fabric.framework/Headers/*.h'
  s.requires_arc = true
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited)' }
  s.ios.vendored_frameworks = 'Crashlytics.framework', 'Fabric.framework'
  s.preserve_paths = '*.framework'
  s.frameworks = 'Crashlytics', 'Fabric', 'Foundation', 'Security', 'CoreFoundation', 'MobileCoreServices'
  s.library = 'z', 'objc', 'System', 'c++'
end
