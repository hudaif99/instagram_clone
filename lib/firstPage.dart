import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f5f5),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 30,right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("English (United Kingdom)",style: TextStyle(color: Colors.black45,fontSize: 13),),
                      Icon(Icons.keyboard_arrow_down,color: Colors.black45,size: 20,)
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 220,bottom: 100),
                  child: Image.asset("assets/images/instagram_logo.png",width: 200,height: 100,),
                ),

                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook_sharp,size: 20,),
                      SizedBox(width: 5,),
                      Text("Log in With Facebook",style: TextStyle(fontSize: 13),),
                    ],
                  ),

                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.blue,
                      minimumSize: const Size(double.infinity, 40),
                      elevation: 20),
                ),
                SizedBox(height: 50,),
                Row(children: <Widget>[
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only( right: 10.0),
                        child: Divider(
                          color: Colors.black45,
                          height: 50,
                        )),
                  ),

                  Text("OR",style: TextStyle(color: Colors.black45),),

                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 10.0),
                        child: Divider(
                          color: Colors.black45,
                          height: 50,
                        )),
                  ),
                ]),
                Container(
                    // padding: EdgeInsets.only(top: 100),
                    child: Text("Sign Up with Email Address or Phone Number",style: TextStyle(color: Colors.blue,fontSize: 13),)),
                // Expanded(
                //   child: Divider(
                //     color: Colors.black12,
                //     // height: 5,
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: RichText(
              text: TextSpan(
                text: 'Already have an account? ',
                style: TextStyle(fontSize: 13),
                children: const <TextSpan>[
                  TextSpan(text: 'Log in.', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo,fontSize: 13)),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
