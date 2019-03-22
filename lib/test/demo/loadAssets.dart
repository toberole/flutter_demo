import 'package:flutter/widgets.dart';

// 加载assets资源
import 'package:flutter/services.dart';

/*

加载文本assets
通过rootBundle 对象加载：
    每个Flutter应用程序都有一个rootBundle对象， 通过它可以轻松访问主资源包，直接使用package:flutter/services.dart中全局静态的rootBundle对象来加载asset即可。
通过 DefaultAssetBundle 加载：
    建议使用 DefaultAssetBundle 来获取当前BuildContext的AssetBundle。 这种方法不是使用应用程序构建的默认asset bundle，而是使父级widget在运行时动态替换的不同的AssetBundle，这对于本地化或测试场景很有用。
通常，可以使用DefaultAssetBundle.of()在应用运行时来间接加载asset（例如JSON文件），而在widget上下文之外，或其它AssetBundle句柄不可用时，可以使用rootBundle直接加载这些asset，例如：

 */
class LoadAssets extends StatefulWidget {
  @override
  _LoadSsetsState createState() => _LoadSsetsState();
}

class _LoadSsetsState extends State<LoadAssets> {
  @override
  void initState() {
    super.initState();

    // 加载字符串
    Future<String> str = loadAssetsString("data.json");

    str.then((s){
      print("s: "+s);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  // 加载资源 注意需要在pubspec.yaml中声明
  Future<String> loadAssetsString(String s) async {
    return await rootBundle.loadString("app_assets/data/" + s);
  }
}
