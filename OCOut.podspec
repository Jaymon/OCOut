# http://guides.cocoapods.org/syntax/podspec.html
Pod::Spec.new do |s|
  s.name = 'OCOut'
  s.version = '0.1.0'
  s.homepage = 'https://github.com/Jaymon/OCOut'
  s.source = { :git => "https://github.com/Jaymon/OCOut.git", :tag => s.version.to_s }
  s.platform = :ios, '7.0'
  s.license = 'MIT'
  s.summary = 'Objective-C out'
  s.author = { 'Jay Marcyes' => 'jay@marcyes.com' }
  # TODO -- make this read in the readme file
  s.description = 'prints out variables without you having to think about it'
  s.source_files = 'OCOut/*.{h,m}'
  s.requires_arc = true
end
