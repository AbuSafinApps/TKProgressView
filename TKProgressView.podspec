
Pod::Spec.new do |s|
s.name             = 'TKProgressView'
s.version          = '0.0.1'
s.summary          = 'Animated view'

s.description      = <<-DESC
This Progress view changes its color gradually makes your app look fantastic!
DESC

s.homepage         = 'https://github.com/toseefkhilji/TKProgressView'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Toseef Khilji' => 'hi@ASApps.com' }
s.source           = { :git => 'https://github.com/toseefkhilji/TKProgressView.git', :tag => s.version.to_s }

s.ios.deployment_target = '9.0'
s.source_files = 'TKProgressView/*.{swift,plist}'

end

