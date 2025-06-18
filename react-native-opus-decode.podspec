require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-opus-decode"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.authors      = "Doron Pearl, Wix.com"
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.platforms    = { :ios => min_ios_version_supported }
  s.source       = { :git => "https://github.com/wix-incubator/react-native-opus-decode.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,mm,c}"


  install_modules_dependencies(s)

  s.vendored_frameworks = 'ios/Ogg.xcframework', 'ios/YbridOpus.xcframework'
end
