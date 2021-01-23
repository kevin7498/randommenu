import 'package:flutter/material.dart';
import 'package:randommenu/model/size_config.dart';
import 'package:flutter/services.dart';
import 'package:randommenu/screen/home_page.dart';
//import 'package:randommenu/ad_manager.dart';

//import 'package:admob_flutter/admob_flutter.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // // Initialize without device test ids.
  // Admob.initialize(testDeviceIds: [AdManager.appId]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      title: '뭐먹게?',
      theme: ThemeData(
        fontFamily: 'NanumGothic',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    // return Scaffold(
    //   appBar: AppBar(),
    //   body: Column(
    //     children: [
    //       AdmobBanner(
    //           adUnitId: AdManager.bannerId, adSize: AdmobBannerSize.BANNER),
    //     ],
    //   ),
    // );
    return HomePage();
  }
}
