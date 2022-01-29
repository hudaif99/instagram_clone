
import 'package:flutter/material.dart';
import 'package:instagram_clone/firstPage.dart';
import 'package:instagram_clone/homePage.dart';
import 'package:instagram_clone/login.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage>
    with SingleTickerProviderStateMixin{
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(left: 30,right: 30),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 170,bottom: 20),
                width: 150,
                height: 150,
                child: ImageIcon(AssetImage("assets/images/profile.png")),
              ),
              TabBar(
                unselectedLabelColor: Colors.black54,
                labelColor: Colors.black,
                tabs: [
                  Tab(
                    text: "PHONE NUMBER",
                  ),
                  Tab(
                    text: "EMAIL ADDRESS",
                  )
                ],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
              Expanded(
                child: TabBarView(
                  children: [PhoneNumber(), EmailAddress()],
                  controller: _tabController,
                ),
              ),
            ],
          ),
        ),
        bottomSheet: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (ctx)=>LoginPage()));
              },
              child: Container(
                padding: EdgeInsets.all(15),
                child: RichText(
                  text: TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyle(fontSize: 13,color: Colors.black),
                    children: const <TextSpan>[
                      TextSpan(text: 'Log in.', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo,fontSize: 13)),

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

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({Key? key}) : super(key: key);

  @override
  _PhoneNumberState createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      height: MediaQuery.of(context).size.height/2,
      width: MediaQuery.of(context).size.width,
      child: Column(
        key: _formKey,
        children: [
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Phone number",
                hintStyle: TextStyle(fontSize: 14),
              prefix: Text("IN +91 | "),prefixStyle: TextStyle(color: Colors.black)
                ),
            // validator: (value){
            //   if(value?.length != 10  ){
            //     return "Invalid parametars";
            //   }
            //   // else if(value == String ){
            //   //   return "please enter mobile number";
            //   // }
            //   else{
            //     return null;
            //   }
            // },
          ),
          SizedBox(height: 15,),
          Text("You may receieve SMS updates from Instagram and can opt out at any time.",style: TextStyle(fontSize: 12),),
          SizedBox(height: 15,),
          TextButton(
            onPressed: () {
              // if(!_formKey.currentState!.validate()){
              //   return;
              // }
              Navigator.push(context, MaterialPageRoute(builder: (ctx)=>HomePage()));
            },
            child: Text("Next"),
            style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.blue,
                minimumSize: const Size(double.infinity, 50),
                elevation: 20),
          ),
        ],
      ),
    );
  }
}

class EmailAddress extends StatefulWidget {
  const EmailAddress({Key? key}) : super(key: key);

  @override
  _EmailAddressState createState() => _EmailAddressState();
}

class _EmailAddressState extends State<EmailAddress> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      height: MediaQuery.of(context).size.height/2,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Email address",
                hintStyle: TextStyle(fontSize: 14),
            ),
          ),

          SizedBox(height: 15,),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (ctx)=>HomePage()));
            },
            child: Text("Next"),
            style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.blue,
                minimumSize: const Size(double.infinity, 50),
                elevation: 20),
          ),
        ],
      ),
    );
  }
}
