Pod::Spec.new do |s|
s.name = 'OCOut'
s.version = '0.1'
s.platform = :ios
s.license = 'MIT'
s.summary = 'Objective-C out'
s.author = { 'Jay Marcyes' => 'jay@marcyes.com' }
s.description = 'prints out variables without you having to think about it'
s.source_files = 'Pod/*.{h,m}'
s.requires_arc = true
end
