Pod::Spec.new do |s|
  s.name = 'MaterialDesignSymbol'
  s.version = '1.4'
  s.license = 'Creative Commons Attribution 4.0 International (CC BY 4.0)'
  s.summary = 'Icon font library for Swift. Currently supports Google Material Design Icon'
  s.homepage = 'https://github.com/tichise/MaterialDesignSymbol'
  s.social_media_url = 'http://twitter.com/tichise'
  s.author = "Takuya Ichise"
  s.source = { :git => 'https://github.com/tichise/MaterialDesignSymbol.git', :tag => s.version }

  s.ios.deployment_target = '8.0'

  s.source_files = 'Sources/*.swift'
  s.requires_arc = true
  s.resources = 'Resources/*.ttf'

end
