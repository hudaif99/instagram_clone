import 'package:flutter/material.dart';

import 'firstPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetofirstpage();
  }
  _navigatetofirstpage()async{
    await Future.delayed(const Duration(milliseconds: 600),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const FirstPage()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Image.asset("assets/images/instagram.png"),
        ),
      ),
    );
  }
}
