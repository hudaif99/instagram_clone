import 'package:flutter/material.dart';
import 'package:instagram_clone/signup.dart';

import 'firstPage.dart';
import 'homePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFf5f5f5),
        body: Container(
          padding: const EdgeInsets.only(left: 30, right: 30),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
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
                  padding: EdgeInsets.only(top: 180),
                  child: Image.asset(
                    "assets/images/instagram_logo.png",
                    width: 200,
                    height: 100,
                  )),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Phone number, email address or username",
                            hintStyle: TextStyle(fontSize: 14)),
                        validator: (value){
                          if(value!.isEmpty ){
                            return "Invalid parameters";
                          }
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "password",
                            hintStyle: TextStyle(fontSize: 14),
                            suffixIcon: Icon(Icons.remove_red_eye)),
                        validator: (value){
                          if(value!.isEmpty || value.length<6){
                            return "please enter minimum 6 characters";
                          }
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextButton(
                        onPressed: () {
    if(formKey.currentState!.validate()){
    Navigator.push(context, MaterialPageRoute(builder: (ctx)=>HomePage()));
    }
                        },
                        child: Text("Log in"),
                        style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Colors.blue,
                            minimumSize: const Size(double.infinity, 50),
                            elevation: 20),
                      ),                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              RichText(
                text: TextSpan(
                  text: 'Forgotten your login details? ',
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'Get help with logging in.',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 12)),
                  ],
                ),
              ),
              SizedBox(height: 10,),

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
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.facebook_sharp,color: Colors.blue,),
                  Text("Log In With Facebook",style: TextStyle(color: Colors.blue),)
                ],
              )
            ],
          ),
        ),
        bottomSheet:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (ctx)=>FirstPage()));
              },
              child: Container(
                padding: EdgeInsets.all(15),
                child: RichText(
                  text: TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(fontSize: 13,color: Colors.black),
                    children: const <TextSpan>[
                      TextSpan(text: 'Sign up.', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo,fontSize: 13)),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
