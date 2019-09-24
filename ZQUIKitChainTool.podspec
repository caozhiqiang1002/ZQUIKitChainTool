#
#  Be sure to run `pod spec lint ZQTransition.podspec.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # 组件名称
  s.name         = "ZQUIKitChainTool"
 
  # 组件版本号
  s.version      = "1.0.0"
 
  # 组件简介
  s.summary      = "访问系统相册的组件"

  # 组件详细描述
  s.description  = <<-DESC
  该组件用于链式编写UIKit的UI控件，通过链式便于管理每个UI
                   DESC

  # 首页
  s.homepage     = "https://github.com/caozhiqiang1002"

  # 证书
  s.license      = { :type => "MIT", :file => "LICENSE" }

  # 作者
  s.author             = { "caozhiqiang1002" => "1053524532@qq.com" }

  # 组件资源链接
  s.source       = { :git => "https://github.com/caozhiqiang1002/ZQUIKitChainTool.git", :tag => "#{s.version}" }

  # 公共头文件
  s.public_header_files = 'ZQUIKitChainTool/*.{h}', 'ZQUIKitChainTool/**/**/*.{h}'
  
  # 私有头文件
  s.private_header_files = 'ZQUIKitChainTool/Chain/Base/UIView+ZQFrame.h'

  # 是否支持arc
  s.requires_arc = true

  # 支持的最低版本
  s.ios.deployment_target = '9.0'

  s.subspec 'Category' do |cate|
    
    cate.subspec 'View' do |v|
      v.source_files = 'ZQUIKitChainTool/Category/View'
    end
    
    cate.subspec 'BarItem' do |bar|
      bar.source_files = 'ZQUIKitChainTool/Category/BarItem'
    end

  end

  s.subspec 'Chain' do |chain|

    chain.subspec 'Base' do |base|
      base.source_files = 'ZQUIKitChainTool/Chain/Base'
    end

    chain.subspec 'BarItem' do |bar|
      bar.source_files = 'ZQUIKitChainTool/Chain/BarItem'
    end

    chain.subspec 'View' do |v|
      v.source_files = 'ZQUIKitChainTool/Chain/View'
    end

    chain.subspec 'Gesture' do |g|
      g.source_files = 'ZQUIKitChainTool/Chain/Gesture'
    end

    chain.subspec 'Control' do |con|
      con.source_files = 'ZQUIKitChainTool/Chain/Control'
    end

  end

end
