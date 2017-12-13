Pod::Spec.new do |s|
s.name             = 'EKBasicAdditions'
s.version          = '0.1.2'
s.summary          = 'The useful additions (OSX).'

s.description      = <<-DESC
The basic macOS additions. See more description later.
DESC

s.homepage         = 'https://github.com/ekordin/EKBasicAdditions'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Eugene Kordin' => 'ekordin.github@gmail.com' }
s.source           = { :git => 'https://github.com/ekordin/EKBasicAdditions.git', :tag => s.version.to_s }

s.osx.deployment_target = '10.8'
s.source_files = 'EKBasicAdditions/*.{h,m}'
s.framework    = 'SystemConfiguration'
s.osx.framework  = 'AppKit'

end
