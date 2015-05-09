Pod::Spec.new do |s|
  s.name = 'MaterialDesignIcon'
  s.version = '1.1'
  s.license = 'MIT'
  s.summary = 'Icon font library for Swift. Currently supports GoogleMaterialDesignIcons'
  s.homepage = 'https://github.com/tichise/MaterialDesignIcon'
  s.social_media_url = 'http://twitter.com/tichise'
  s.author = "Takuya Ichise"
  s.source = { :git => 'https://github.com/tichise/MaterialDesignIcon.git', :tag => s.version }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'

  s.source_files = 'Sources/*.swift'
  s.resource  = 'Resources/*.ttf'
  s.requires_arc = true

end
