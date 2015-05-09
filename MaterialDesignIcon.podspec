Pod::Spec.new do |s|
  s.name = 'MaterialDesignIcon'
  s.version = '1.0'
  s.license = 'MIT'
  s.summary = 'Icon font library for Swift. Currently supports GoogleMaterialDesignIcons'
  s.homepage = 'https://github.com/tichise/FontMaterialDesignIcon'
  s.social_media_url = 'http://twitter.com/tichise'
  s.author = "Takuya Ichise"
  s.source = { :git => 'https://github.com/tichise/MaterialDesignIcon.git', :tag => s.version }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'

  s.source_files = 'Source/*.swift'

  s.requires_arc = true

  s.resource  = 'Resources/*.ttf'
end
