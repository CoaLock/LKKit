
Pod::Spec.new do |s|
s.name         = "LKKit"
s.version      = "v1.0"
s.summary      = "The easiest way to use pull-to-refresh"
s.homepage     = "https://github.com/CoaLock/LKKit"
s.license      = "MIT"
s.authors      = { 'CoaLock' => '931029462@qq.com'}
s.platform     = :ios, "6.0"
s.source       = { :git => "https://github.com/CoaLock/LKKit.git", :tag => 'v1.0' }
s.source_files = "LKKit/LKKit/LKKit/**/*.{h,m}"
s.requires_arc = true


end

