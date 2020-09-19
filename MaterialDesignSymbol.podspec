Pod::Spec.new do |s|
  s.name = 'MaterialDesignSymbol'
  s.version = '2.6.0'
  s.license = {
    :type => "MIT",
    :text => <<-LICENSE
      Copyright (c) 2015 - 2020 Takuya Ichise
      Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
      The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
      THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
    LICENSE
  }
  s.summary = 'Icon font library for Swift. Currently supports Google Material Design Icon'
  s.homepage = 'https://github.com/tichise/MaterialDesignSymbol'
  s.social_media_url = 'http://twitter.com/tichise'
  s.author = "Takuya Ichise"
  s.source = { :git => 'https://github.com/tichise/MaterialDesignSymbol.git', :tag => s.version }

  s.ios.deployment_target = '11.0'
  s.swift_versions = '5.0'
  s.source_files = 'Sources/*.swift'
  s.requires_arc = true
  s.resources = 'Resources/*.ttf'
end
