Pod::Spec.new do |s|
  s.name         = "ActivityIndicatorController"
  s.version      = "1.2.0"
  s.summary      = "Shows a UIActivityIndicatorView inside a UIAlertController"
  
  s.homepage     = "https://github.com/adamdebono/ActivityIndicatorController"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Adam Debono" => "me@adamdebono.com" }

  s.ios.deployment_target  = "8.0"
  s.tvos.deployment_target = "9.0"

  s.source       = { :git => "https://github.com/adamdebono/ActivityIndicatorController.git", :tag => s.version }
  s.source_files = "Source/ActivityIndicatorController.swift"
  
  s.framework = "UIKit"
end
