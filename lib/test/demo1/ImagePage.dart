
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/**
 * ImageProvider
 *    ImageProvider 是一个抽象类，主要定义了图片数据获取的接口load()，
 *    从不同的数据源获取图片需要实现不同的ImageProvider ，
 *    如AssetImage是实现了从Asset中加载图片的ImageProvider，
 *    而NetworkImage实现了从网络加载图片的ImageProvider。
 * 
 */
/*

const Image({
  ...
  this.width, //图片的宽
  this.height, //图片高度
  this.color, //图片的混合色值
  this.colorBlendMode, //混合模式
  this.fit,//缩放模式
  this.alignment = Alignment.center, //对齐方式
  this.repeat = ImageRepeat.noRepeat, //重复方式
  ...
})

width、height：用于设置图片的宽、高，当不指定宽高时，图片会根据当前父容器的限制，尽可能的显示其原始大小，如果只设置width、height的其中一个，那么另一个属性默认会按比例缩放，但可以通过下面介绍的fit属性来指定适应规则。

fit：该属性用于在图片的显示空间和图片本身大小不同时指定图片的适应模式。适应模式是在BoxFit中定义，它是一个枚举类型，有如下值：

fill：会拉伸填充满显示空间，图片本身长宽比会发生变化，图片会变形。
cover：会按图片的长宽比放大后居中填满显示空间，图片不会变形，超出显示空间部分会被剪裁。
contain：这是图片的默认适应规则，图片会在保证图片本身长宽比不变的情况下缩放以适应当前显示空间，图片不会变形。
fitWidth：图片的宽度会缩放到显示空间的宽度，高度会按比例缩放，然后居中显示，图片不会变形，超出显示空间部分会被剪裁。
fitHeight：图片的高度会缩放到显示空间的高度，宽度会按比例缩放，然后居中显示，图片不会变形，超出显示空间部分会被剪裁。
none：图片没有适应策略，会在显示空间内显示图片，如果图片比显示空间大，则显示空间只会显示图片中间部分。

 */

/*
  字体图标
  在字体文件中，每一个字符都对应一个位码，而每一个位码对应一个显示字形，不同的字体就是指字形不同，即字符对应的字形是不同的。而在iconfont中，只是将位码对应的字形做成了图标，所以不同的字符最终就会渲染成不同的图标。

  在Flutter开发中，iconfont和图片相比有如下优势：
      体积小：可以减小安装包大小。
      矢量的：iconfont都是矢量图标，放大不会影响其清晰度。
      可以应用文本样式：可以像文本一样改变字体图标的颜色、大小对齐等。
      可以通过TextSpan和文本混用。

  iconfont.cn上有很多字体图标素材，我们可以选择自己需要的图标打包下载后，
  会生成一些不同格式的字体文件，在Flutter中，我们使用ttf格式即可。

 */

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: <Widget>[
            Image.asset("app_assets/images/main_1.jpg",fit: BoxFit.cover,),
            // 字体图标
            Icon(Icons.accessible,color: Colors.green,),
            Icon(Icons.error,color: Colors.green,),
            Icon(Icons.fingerprint,color: Colors.green,),
          ],
        )
      ),
    );
  }
}