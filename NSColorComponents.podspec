Pod::Spec.new do |s|
  s.name     = 'NSColorComponents'
  s.version  = '1.0.0'
  s.summary  = 'A Swift extension to NSColor that provides easy access to its RGB and HSB components.'
  s.homepage = 'https://github.com/UsabilityEtc/nscolor-components'
  s.license  = 'MIT'
  s.author   = { 'Jeffrey Morgan' => 'usabilityetc@gmail.com' }
  s.platform = :osx, 10.11
  s.source   = { :git => 'https://github.com/UsabilityEtc/nscolor-components.git', :tag => s.version }
  s.source_files = 'Sources/*.swift'
end
