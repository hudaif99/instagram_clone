import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'home/homeInsta.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool pressAttention1 = true;
  List<Instagram> instagram = [];
  String url = "https://run.mocky.io/v3/87b4faf9-c706-4847-998d-19eefc79124f";
  Future? objfuture;
  Future<ModelInsta> apiCall() async{
    ModelInsta? objPartners_model;
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200){
      var data = json.decode(response.body);
      objPartners_model = ModelInsta.fromJson(data);
      setState(() {
        for(int i = 0; i < objPartners_model!.instagram!.length; i++){
          instagram.add(objPartners_model.instagram![i]);
        }
      });
    }
    return objPartners_model!;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    objfuture = apiCall();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFf5f5f5),
          actions: [
            Icon(
              FontAwesomeIcons.plusSquare,
              color: Colors.black,
              size: 25,
            ),
            SizedBox(
              width: 16,
            ),
            Icon(
              FontAwesomeIcons.paperPlane,
              color: Colors.black,
              size: 25,
            ),
            SizedBox(
              width: 10,
            )
          ],
          title: Image.asset(
            'assets/images/instagram_logo.png',
            fit: BoxFit.fill,
            width: 150,
            height: 50,
          ),
        ),
        body:
        FutureBuilder(
          future: objfuture,
          builder: (context,snap){
            if(snap.hasData){
              return Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height - 120,
                    color:  Color(0xFFf5f5f5),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 15,left: 10,right: 10) ,
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          // color: Colors.greenAccent,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        child: CircleAvatar(radius: 30,
                                            backgroundColor: Colors.transparent,
                                            backgroundImage: AssetImage("assets/images/my_profile.png",)),
                                      ),
                                      SizedBox(height: 5,),
                                      Text("Your story",style: TextStyle(fontSize: 12),)
                                    ],
                                  ),SizedBox(width: 18,),
                                  Column(
                                    children: [
                                      Container(
                                        child: CircleAvatar(radius: 30,
                                            backgroundColor: Colors.transparent,
                                            backgroundImage: AssetImage("assets/images/my_profile.png",)),
                                      ),
                                      SizedBox(height: 5,),
                                      Text("User 1",style: TextStyle(fontSize: 12),)
                                    ],
                                  ),SizedBox(width: 18,),
                                  Column(
                                    children: [
                                      Container(
                                        child: CircleAvatar(radius: 30,
                                            backgroundColor: Colors.transparent,
                                            backgroundImage: AssetImage("assets/images/my_profile.png",)),
                                      ),
                                      SizedBox(height: 5,),
                                      Text("User 2",style: TextStyle(fontSize: 12),)
                                    ],
                                  ),SizedBox(width: 18,),
                                  Column(
                                    children: [
                                      Container(
                                        child: CircleAvatar(radius: 30,
                                            backgroundColor: Colors.transparent,
                                            backgroundImage: AssetImage("assets/images/my_profile.png",)),
                                      ),
                                      SizedBox(height: 5,),
                                      Text("User 3",style: TextStyle(fontSize: 12),)
                                    ],
                                  ),SizedBox(width: 18,),
                                  Column(
                                    children: [
                                      Container(
                                        child: CircleAvatar(radius: 30,
                                            backgroundColor: Colors.transparent,
                                            backgroundImage: AssetImage("assets/images/my_profile.png",)),
                                      ),
                                      SizedBox(height: 5,),
                                      Text("User 4",style: TextStyle(fontSize: 12),)
                                    ],
                                  ),SizedBox(width: 18,),
                                  Column(
                                    children: [
                                      Container(
                                        child: CircleAvatar(radius: 30,
                                            backgroundColor: Colors.transparent,
                                            backgroundImage: AssetImage("assets/images/my_profile.png",)),
                                      ),
                                      SizedBox(height: 5,),
                                      Text("User 5",style: TextStyle(fontSize: 12),)
                                    ],
                                  ),SizedBox(width: 18,),
                                  Column(
                                    children: [
                                      Container(
                                        child: CircleAvatar(radius: 30,
                                            backgroundColor: Colors.transparent,
                                            backgroundImage: AssetImage("assets/images/my_profile.png",)),
                                      ),
                                      SizedBox(height: 5,),
                                      Text("User 6",style: TextStyle(fontSize: 12),)
                                    ],
                                  ),SizedBox(width: 18,),
                                  Column(
                                    children: [
                                      Container(
                                        child: CircleAvatar(radius: 30,
                                            backgroundColor: Colors.transparent,
                                            backgroundImage: AssetImage("assets/images/my_profile.png",)),
                                      ),
                                      SizedBox(height: 5,),
                                      Text("User 7",style: TextStyle(fontSize: 12),)
                                    ],
                                  ),SizedBox(width: 18,),
                                  Column(
                                    children: [
                                      Container(
                                        child: CircleAvatar(radius: 30,
                                            backgroundColor: Colors.transparent,
                                            backgroundImage: AssetImage("assets/images/my_profile.png",)),
                                      ),
                                      SizedBox(height: 5,),
                                      Text("User 8",style: TextStyle(fontSize: 12),)
                                    ],
                                  ),SizedBox(width: 18,),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        Expanded(child: ListView.builder(
                            itemCount: instagram.length,
                            itemBuilder: (c, i){
                              return Card(
                                child: Container(
                                  child: Column(
                                    children: [
                                      SizedBox(height: 8,),
                                      Row(
                                        children: [
                                          SizedBox(width: 8,),
                                          CircleAvatar(radius: 15,backgroundImage: NetworkImage(instagram[i].profile!),),
                                          SizedBox(width: 8,),
                                          Text(instagram[i].name!),
                                          Spacer(),
                                          Icon(Icons.more_vert,size: 15,),
                                          SizedBox(width: 8,)
                                        ],
                                      ),
                                      SizedBox(height: 12,),
                                      Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 400,
                                        // color: Colors.greenAccent,
                                        child: Image.network(instagram[i].photo!,fit: BoxFit.cover,),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(1),
                                        child: Row(
                                          children: [
                                            IconButton(
                                                onPressed: () {
                                                  // setState(() => pressAttention1 =
                                                  // !pressAttention1);
                                                },
                                                icon: Icon(
                                                  FontAwesomeIcons.heart,
                                                  // color: pressAttention1
                                                  //     ? Colors.black
                                                  //     : Colors.red,
                                                )),
                                            SizedBox(width: 20,),
                                            Icon(FontAwesomeIcons.comment),
                                            SizedBox(width: 20,),
                                            Icon(FontAwesomeIcons.paperPlane),
                                            Spacer(),
                                            Icon(FontAwesomeIcons.bookmark),
                                            SizedBox(width: 8,)
                                            
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 10,bottom: 10),
                                        width: MediaQuery.of(context).size.width,
                                          child: Text("likes")),
                                    Container(
                                      padding: EdgeInsets.only(left: 10),
                                      width: MediaQuery.of(context).size.width,
                                      child: Row(
                                        children: [
                                          Text(instagram[i].name!,style: TextStyle(fontWeight: FontWeight.bold),),
                                          SizedBox(width: 8,),
                                          Text(instagram[i].comment!)
                                        ],
                                      )
                                    ),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(10, 10, 0, 15),
                                        width: MediaQuery.of(context).size.width,
                                        child: Text(instagram[i].date!,style: TextStyle(fontSize: 11),)
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }))
                      ],
                    ),
                  )
                ],
              );
            }
            else {
              return Center(child: CircularProgressIndicator());
            }
          }
        )
      ),
    );
  }
}
