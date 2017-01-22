
Pod::Spec.new do |s|
s.name         = "LKKit"
s.version      = "0.0.1"
s.summary      = "The easiest way to use pull-to-refresh"
s.homepage     = "https://github.com/CoaLock/LKKit"
s.license      = "MIT"
s.authors      = { 'CoaLock' => '931029462@qq.com'}
s.platform     = :ios, "6.0"
s.source       = { :git => "https://github.com/CoaLock/LKKit.git", :tag => '0.0.1' }
s.source_files = "LKKit/LKKit/LKKit/**/*.{h,m}"
s.requires_arc = true


end

