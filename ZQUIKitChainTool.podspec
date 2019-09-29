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
    s.version      = "1.0.2"

    # swift版本
    s.swift_versions = '5.0'

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

    # 系统依赖库
    s.frameworks = 'Foundation', 'UIKit'

    # 是否支持arc
    s.requires_arc = true

    # 支持的最低版本
    s.ios.deployment_target = '9.0'

    # Objective-C 子模块
    s.subspec 'Objective-C' do |oc|

        oc.public_header_files = 'ZQUIKitChainTool/Objective-C/*.{h}'
        oc.source_files = 'ZQUIKitChainTool/Objective-C/*.{h}'

        oc.subspec 'Chain' do |chain|

            chain.public_header_files = 'ZQUIKitChainTool/Objective-C/Chain/*.{h}'
            chain.source_files = 'ZQUIKitChainTool/Objective-C/Chain/*.{h}'

            chain.subspec 'Base' do |b|
                b.public_header_files = 'ZQUIKitChainTool/Objective-C/Chain/Base/*.{h}'
                b.private_header_files = 'ZQUIKitChainTool/Objective-C/Chain/Base/UIView+ZQFrame.h'
                b.source_files = 'ZQUIKitChainTool/Objective-C/Chain/Base'
            end

            chain.subspec 'BarItem' do |bar|
                bar.public_header_files = 'ZQUIKitChainTool/Objective-C/Chain/BarItem/*.{h}'
                bar.dependency 'ZQUIKitChainTool/Objective-C/Chain/Base'
                bar.source_files = 'ZQUIKitChainTool/Objective-C/Chain/BarItem'
            end

            chain.subspec 'View' do |v|
                v.public_header_files = 'ZQUIKitChainTool/Objective-C/Chain/View/*.{h}'
                v.dependency 'ZQUIKitChainTool/Objective-C/Chain/Base'
                v.source_files = 'ZQUIKitChainTool/Objective-C/Chain/View'
            end

            chain.subspec 'Gesture' do |g|
                g.public_header_files = 'ZQUIKitChainTool/Objective-C/Chain/Gesture/*.{h}'
                g.dependency 'ZQUIKitChainTool/Objective-C/Chain/Base'
                g.source_files = 'ZQUIKitChainTool/Objective-C/Chain/Gesture'
            end

            chain.subspec 'Control' do |con|
                con.public_header_files = 'ZQUIKitChainTool/Objective-C/Chain/Control/*.{h}'
                con.dependency 'ZQUIKitChainTool/Objective-C/Chain/Base'
                con.source_files = 'ZQUIKitChainTool/Objective-C/Chain/Control'
            end
        end

        oc.subspec 'Category' do |cate|
            cate.public_header_files = 'ZQUIKitChainTool/Objective-C/Category/*.{h}'
            cate.dependency 'ZQUIKitChainTool/Objective-C/Chain'
            cate.source_files = 'ZQUIKitChainTool/Objective-C/Category'
        end
    end

    # Swift 子模块
    s.subspec 'Swift' do |swift|

        swift.subspec 'Chain' do |chain|

            chain.subspec 'Base' do |b|
                b.source_files = 'ZQUIKitChainTool/Swift/Chain/Base'
            end

            chain.subspec 'BarItem' do |bar|
                bar.dependency 'ZQUIKitChainTool/Swift/Chain/Base'
                bar.source_files = 'ZQUIKitChainTool/Swift/Chain/BarItem'
            end

            chain.subspec 'View' do |v|
                v.dependency 'ZQUIKitChainTool/Swift/Chain/Base'
                v.source_files = 'ZQUIKitChainTool/Swift/Chain/View'
            end

            chain.subspec 'Gesture' do |g|
                g.dependency 'ZQUIKitChainTool/Swift/Chain/Base'
                g.source_files = 'ZQUIKitChainTool/Swift/Chain/Gesture'
            end

            chain.subspec 'Control' do |con|
                con.dependency 'ZQUIKitChainTool/Swift/Chain/Base'
                con.source_files = 'ZQUIKitChainTool/Swift/Chain/Control'
            end
        end

        swift.subspec 'Category' do |cate|
            cate.dependency 'ZQUIKitChainTool/Swift/Chain'
            cate.source_files = 'ZQUIKitChainTool/Swift/Category'
        end
    end
end
