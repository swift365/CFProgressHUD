Pod::Spec.new do |s|
s.name = 'CFProgressHUD'
s.version = '0.1.0'
s.license= { :type => "MIT", :file => "LICENSE" }
s.summary = 'CFProgressHUD is a Swift module for adding extension to uiview.'
s.homepage = 'https://github.com/swift365/CFProgressHUD'
s.authors = { 'chengfei.heng' => 'hengchengfei@sina.com' }
s.source = { :git => 'https://github.com/swift365/CFProgressHUD.git', :tag => "0.1.0" }
s.ios.deployment_target = '9.0'
s.source_files = "CFProgressHUD/Classes/*.swift", "CFProgressHUD/Classes/**/*.swift"
# s.frameworks = 'UIKit', 'MapKit'
s.dependency 'JGProgressHUD'
s.dependency 'MBProgressHUD'
end

