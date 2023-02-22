#
# Be sure to run `pod lib lint lyhDobby.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'lyhDobby' #库的名字
  s.version          = '0.0.1' #版本号，当私有库需要更新的时候只要修改这个值
  s.summary          = 'A short description of lyhDobby.' #库的简介，pod search 显示在上面的介绍

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!
#库的详细描述
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/bboyesc/lyhDobby'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' } #开源协议，项目文件目录下需要有一个MIT开源协议文件，创建的时候默认就创建了这个，具体内容可以打开 LICENSE 查看
  s.author           = { 'sss' => 'sss' } #作者名字、邮箱
  s.source           = { :https => 'https://github.com/bboyesc/lyhDobby.git', :tag => s.version.to_s } #资源地址，pod install 的时候会根据这个地址去下载你的想要库，以及下载的版本，必须要跟s.version一致。
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'  #库最低支持的系统版本

  s.source_files = 'lyhDobby/Classes/*.{h,m}','lyhDobby/Classes/ThirdParty/*.{h}'#这个很重要，指定资源文件，前缀就是 .podspec 文件当前路径，只用写之后的路径，如 Classes/* 是指 Classes 文件夹下的所有文件，但不包括子文件夹里面的文件、Classes/**/* 是指包含所有 Classes 文件夹下的文件，包括子文件、Classes/**/*.{h,m} 是指包含所有 Classes 文件夹下的后缀为 .h 和 .m 的文件，也可以指定文件。
  
  s.vendored_libraries  = 'lyhDobby/Classes/ThirdParty/*.{a}'
  
  # s.resource_bundles = {
  #   'lyhDobby' => ['lyhDobby/Assets/*.png']
  # }
  s.requires_arc = true
  s.public_header_files = 'lyhDobby/Classes/*.{h}','lyhDobby/Classes/ThirdParty/*.{h}'  #公开的头文件，如果没有公开，用户在用的时候可能引不到响应的头文件
  # s.frameworks = 'UIKit', 'MapKit'  #需要依赖的框架
  # s.dependency 'AFNetworking', '~> 2.3'  #需要依赖的三方库
  
  
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  
end
