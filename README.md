# ZQUIKitChainTool
用于对UIKit中的UI控件进行链式调用，方便管理UI


### 支持系统最低版本

最低版本：`>= 9.0`

### 集成方式

#### 1.Objective-C
```
platform :ios, '9.0'

target 'PROJECT_NAME' do
   pod 'ZQUIKitChainTool/Objective-C', :source => 'https://github.com/caozhiqiang1002/CZQSpecs.git'
   
   # 如果想要使用 Masonry，需要将其引入
   pod 'Masonry'
end
```

#### 2.Swift
```
platform :ios, '9.0'

use_frameworks!

target 'PROJECT_NAME' do
   pod 'ZQUIKitChainTool/Swift', :source => 'https://github.com/caozhiqiang1002/CZQSpecs.git'
end
```

### 使用方式

#### 1.调用以“add”为前缀的方法
* 如果调用以“add”为前缀的方法，则开发者不用再次调用`addSubView`方法，因为前者自动调用了后者；
* 如果调用以“add”为前缀的方法后，想要设置属性，需要调用该视图对应的以“tool”结尾的方法；
* 如果要将创建的视图赋值给一个变量，则需要在链式最后加上`.view`;
* 按以上方式创建视图的案例如下:
  ```
  //不赋值(创建UIView)
  self.addView.viewTool
    .backgroundColor([UIColor redColor])
    .frame(CGRectMake(10, 10, 30, 30));
    
  
  //赋值给变量(创建UILabel)
  UILabel *label = self.addLabel.labelTool
                        .backgroundColor([UIColor orangeColor])
                        .frame(CGRectMake(10, 10, 100, 30))
                        .text(@"你好")
                        .textColor([UIColor whiteColor])
                        .textAlignment(NSTextAlignmentLeft)
                        .view;
  ```
  
#### 2.用系统方法创建视图
* 如果用系统方法创建视图，想要使用链式，只需要调用以“tool”为后缀的方法；
* 可以用`addToSuperView`替代系统`addSubView`将该视图添加到父视图上；
* 按以上方式创建视图的案例如下：
  ```
  //用链式调用添加到父视图中
  UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 30, 30)];
  imageView.imageViewTool
       .backgroundColor([UIColor greenColor])
       .userInteractionEnabled(YES)
       .addToSuperView(self)
       .view
       .addTapGesture
       .tapGestureTool
       .addTarget(self, @selector(tap:));
 
  //用系统添加方式添加到父视图中
  UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
  button.buttonTool
     .frame(CGRectMake(10, 10, 100, 30))
     .backgroundColor([UIColor purpleColor])
     .setTitle(@"随便点", UIControlStateNormal)
     .setTitleColor([UIColor whiteColor], UIControlStateNormal)
     .addTarget(self, @selector(buttonClick:), UIControlEventTouchUpInside);
  [self addSubview:button];
  ```
