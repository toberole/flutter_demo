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
















































