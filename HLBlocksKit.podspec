Pod::Spec.new do |s|
  s.name                  = 'HLBlocksKit'
  s.version               = '2.2.6'
  s.license               = 'MIT'
  s.summary               = 'The Objective-C block utilities you always wish you had for own use without webview.'
  s.homepage              = 'https://github.com/henvyluk/HLBlocksKit'
  s.author                = { 'henvy' => 'henvyluk@gmail.com',
                              'henvy luk'  => 'henvyluk@gmail.com' }
  s.source                = { :git => 'https://github.com/henvyluk/HLBlocksKit.git', :tag => "v#{s.version}" }
  s.requires_arc          = true
  s.osx.deployment_target = '10.8'
  s.ios.deployment_target = '6.0'
  #s.watchos.deployment_target = '2.0'

  s.default_subspec = 'All'
  s.subspec 'All' do |ss|
    ss.dependency 'BlocksKit/Core'
    ss.dependency 'BlocksKit/DynamicDelegate'
    ss.ios.dependency 'BlocksKit/MessageUI'
    #ss.ios.dependency 'BlocksKit/QuickLook'
    ss.ios.dependency 'BlocksKit/UIKit'
  end

  s.subspec 'Core' do |ss|
    ss.source_files = 'BlocksKit/BlocksKit.h', "BlocksKit/BKDefines.h", 'BlocksKit/Core/*.{h,m}'
  end

  s.subspec 'DynamicDelegate' do |ss|
    ss.source_files = 'BlocksKit/DynamicDelegate/*.{h,m}', 'BlocksKit/DynamicDelegate/Foundation/*.{h,m}'
  end

  s.subspec 'MessageUI' do |ss|
    ss.dependency 'BlocksKit/Core'
    ss.dependency 'BlocksKit/DynamicDelegate'
    ss.platform = :ios
    ss.source_files = 'BlocksKit/BlocksKit+MessageUI.h', 'BlocksKit/MessageUI/*.{h,m}'
    ss.ios.frameworks = 'MessageUI'
  end

  s.subspec 'QuickLook' do |ss|
    ss.dependency 'BlocksKit/Core'
    ss.dependency 'BlocksKit/DynamicDelegate'
    ss.platform = :ios
    ss.source_files = 'BlocksKit/BlocksKit+QuickLook.h', 'BlocksKit/QuickLook/*.{h,m}'
    ss.ios.frameworks = 'QuickLook'
  end

  s.subspec 'UIKit' do |ss|
    ss.dependency 'BlocksKit/Core'
    ss.dependency 'BlocksKit/DynamicDelegate'
    ss.platform = :ios
    ss.source_files = 'BlocksKit/BlocksKit+UIKit.h', 'BlocksKit/UIKit/*.{h,m}'
  end
end
