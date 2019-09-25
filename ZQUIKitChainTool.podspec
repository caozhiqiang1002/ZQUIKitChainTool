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
  s.version      = "1.0.1"
 
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
  s.public_header_files = 'ZQUIKitChainTool/*.{h}'

  # 源文件
  s.source_files = 'ZQUIKitChainTool/*.{h}'
  
  # 系统依赖库
  s.frameworks = 'Foundation', 'UIKit'
  
  # 是否支持arc
  s.requires_arc = true

  # 支持的最低版本
  s.ios.deployment_target = '9.0'

  s.subspec 'Chain' do |chain|
    
    chain.public_header_files = 'ZQUIKitChainTool/Chain/*.{h}'
    chain.source_files = 'ZQUIKitChainTool/Chain/*.{h}'

    chain.subspec 'Base' do |b|
      b.public_header_files = 'ZQUIKitChainTool/Chain/Base/*.{h}'
      b.private_header_files = 'ZQUIKitChainTool/Chain/Base/UIView+ZQFrame.h'
      b.source_files = 'ZQUIKitChainTool/Chain/Base'
    end

    chain.subspec 'BarItem' do |bar|
      bar.public_header_files = 'ZQUIKitChainTool/Chain/BarItem/*.{h}'
      bar.dependency 'ZQUIKitChainTool/Chain/Base'
      bar.source_files = 'ZQUIKitChainTool/Chain/BarItem'
    end

    chain.subspec 'View' do |v|
      v.public_header_files = 'ZQUIKitChainTool/Chain/View/*.{h}'
      v.dependency 'ZQUIKitChainTool/Chain/Base'
      v.source_files = 'ZQUIKitChainTool/Chain/View'
    end

    chain.subspec 'Gesture' do |g|
      g.public_header_files = 'ZQUIKitChainTool/Chain/Gesture/*.{h}'
      g.dependency 'ZQUIKitChainTool/Chain/Base'
      g.source_files = 'ZQUIKitChainTool/Chain/Gesture'
    end

    chain.subspec 'Control' do |con|
      con.public_header_files = 'ZQUIKitChainTool/Chain/Control/*.{h}'
      con.dependency 'ZQUIKitChainTool/Chain/Base'
      con.source_files = 'ZQUIKitChainTool/Chain/Control'
    end
  end
  
  s.subspec 'Category' do |cate|

    cate.subspec 'View' do |v|
      v.public_header_files = 'ZQUIKitChainTool/Category/View/*.{h}'
      v.dependency 'ZQUIKitChainTool/Chain'
      v.source_files = 'ZQUIKitChainTool/Category/View'
    end

    cate.subspec 'BarItem' do |bar|
      bar.public_header_files = 'ZQUIKitChainTool/Category/BarItem/*.{h}'
      bar.dependency 'ZQUIKitChainTool/Chain'
      bar.source_files = 'ZQUIKitChainTool/Category/BarItem'
    end
  end
  
end
