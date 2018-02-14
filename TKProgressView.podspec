
Pod::Spec.new do |s|
s.name             = 'TKProgressView'
s.version          = '0.0.2'
s.summary          = '🌀Amazing animated activity indicator written in swift.'
s.description      = 'This Progress view changes its color dots and postion gradually makes your app look great!'
s.homepage         = 'https://github.com/toseefkhilji/TKProgressView'
s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
s.author           = { 'Toseef Khilji' => 'hi@ASApps.com' }
s.source           = { :git => 'https://github.com/toseefkhilji/TKProgressView.git', :tag => s.version.to_s }
s.platform     = :ios, '9.0'
s.ios.deployment_target = '9.0'
s.source_files = 'TKProgressView/Classes/*.swift'
s.requires_arc = true
end
