Pod::Spec.new do |s|
  s.name = 'MaterialDesignIcon'
  s.version = '1.1'
  s.license = 'Creative Commons Attribution 3.0 Unported License'
  s.summary = 'Icon font library for Swift. Currently supports GoogleMaterialDesignIcons'
  s.homepage = 'https://github.com/tichise/MaterialDesignIcon'
  s.social_media_url = 'http://twitter.com/tichise'
  s.author = "Takuya Ichise"
  s.source = { :git => 'https://github.com/tichise/MaterialDesignIcon.git', :tag => s.version }

  s.ios.deployment_target = '8.0'

  s.source_files = 'Sources/*.swift'
  s.requires_arc = true

  s.resource_bundles = {
	'MaterialDesignIcon' => ['Resources/*.ttf']
  }

end
