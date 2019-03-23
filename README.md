### 项目结构
ios目录
    包含了ios的全部代码可以直接使用xcode（需要9.0+版本）进行开发。

android目录
    包含了android的全部代码，直接使用android studio开发即可。

lib目录
    包含了两端通用的dart代码，在打包生成应用时
    全部的dart代码会被编译为本地代码（如在android端，会被直接编译为so文件）。

### 打包
- debug
    命令：flutter run --debug
    应用的右上角会显示slow mode字样，支持debug。

- release
    命令：flutter run --release
    UI上面不显示模式；禁止debug，且删除了debug相关的信息；关闭全部的断言检测，减小包大小，使其达到最佳性能。

- profile
    命令：flutter run --profile
    调试性能，不支持模拟器。

- test
    flutter test
    和debug模式类似，不支持headless和桌面平台。

### 命令
    flutter emulator 查看模拟器

### 跳转下一个页面
Navigator.push

### 返回上一个页面
Navigator.pop

### 快捷键
stl、stf快速的生成widget代码模版

### Flutter 布局
- Container
    只有一个子 Widget。
    默认充满，包含了padding、margin、color、宽高、decoration 等配置。

- Padding
    只有一个子 Widget。
    只用于设置Padding，常用于嵌套child，给child设置padding。

- Center
    只有一个子 Widget。
    只用于居中显示，常用于嵌套child，给child设置居中。

- Stack
    类似与android的framelayout

- Column
    垂直布局,
    主轴[mainAxisAlignment]：垂直方向
    副轴[crossAxisAlignment]：水平方向

- Row
    水平布局
    主轴：水平方向
    副轴：垂直方向

- Expanded
    只有一个子Widget，在Column和Row中充满

- ListView


### Flutter 页面
- MaterialApp
    一般作为APP顶层的主页入口，可配置主题，多语言，路由等

- Scaffold
    一般用户页面的承载Widget，包含appbar、snackbar、drawer等material design的设定。

- Appbar
    一般用于Scaffold的appbar ，
    内有标题，二级页面返回按键等，tabbar等也会需要它 。

- Text
    显示文本，几乎都会用到，主要是通过style设置TextStyle来设置字体样式等。

- RichText
    富文本，通过设置TextSpan，可以拼接出富文本场景。

- TextField
    文本输入框

- Image
    图片

- FlatButton
    点击按钮

### Dart Isolate


在Flutter中，事件流是“向上”传递的，而状态流是“向下”传递的

### Widget与Element

- Widget实际上就是Element的配置数据，Widget树实际上是一个配置树，而真正的UI渲染树是由Element构成；不过，由于Element是通过Widget生成，所以它们之间有对应关系，所以在大多数场景，我们可以宽泛地认为Widget树就是指UI控件树或UI渲染树。

- 一个Widget对象可以对应多个Element对象。这很好理解，根据同一份配置（Widget），可以创建多个实例（Element）。












































