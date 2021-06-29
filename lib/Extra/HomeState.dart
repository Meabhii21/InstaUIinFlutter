import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class HomeBody extends StatefulWidget {
  const HomeBody({Key key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  bool heartIcon = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Roll-Up',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        actions: <Widget>[
          Icon(CupertinoIcons.chat_bubble_text,color: Colors.white,size: 30,)
        ],
      ),
      body: Column(
        children:<Widget>[
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (context,index){
                return Column(
                    children:<Widget>[
                      Container(
                        height: 70,
                        width: 70,
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                                color: Colors.red,
                                width: 3
                            ),
                            image: DecorationImage(
                                image: NetworkImage('https://images.unsplash.com/photo-1506905925346-21bda4d32df4?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bW91bnRhaW5zfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      SizedBox(height: 4,),
                      Text('Your Story',style: TextStyle(color: Colors.white,fontSize: 10),)
                    ]
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10,top: 10,right: 8),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 15,
                              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
                            ),
                            SizedBox(width: 5,),
                            Text('Abhishek Anand',style: TextStyle(color: Colors.white),)
                          ],
                        ),
                        InkWell(
                          child: Container(
                            margin: EdgeInsets.only(top: 5,),
                            constraints: BoxConstraints(
                                maxHeight: MediaQuery.of(context).size.height * 0.6
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image:DecorationImage(
                                    image: NetworkImage("https://images.unsplash.com/photo-1461800919507-79b16743b257?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8aHVtYW58ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60"),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          onDoubleTap: (){
                            setState(() {
                              heartIcon=!heartIcon;
                            });
                          },
                        ),
                        SizedBox(height: 4,),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: <Widget>[
                              InkWell(child: (heartIcon==false)?Icon(CupertinoIcons.heart,size: 35,color: Colors.white,):
                              Icon(CupertinoIcons.heart_fill,size: 35,color: Colors.red,),
                                onTap: (){
                                  setState(() {
                                    heartIcon=!heartIcon;
                                  });
                                },),
                              SizedBox(width: 7,),
                              Icon(CupertinoIcons.conversation_bubble,color: Colors.white,size: 30,),
                              SizedBox(width: 7,),
                              Icon(Icons.share,size: 30,color: Colors.white,),
                              Container(
                                  width:MediaQuery.of(context).size.width * 0.6 +20,
                                  // color: Colors.white,
                                  child: Align(
                                      alignment: Alignment.topRight,
                                      child: InkWell(
                                        child: Icon(
                                          Icons.save_alt,color: Colors.white,size: 30,
                                        ),
                                        onTap:  () async{
                                          print("toast not working");
                                           Fluttertoast.showToast(
                                              msg: "Post Saved",
                                              toastLength: Toast.LENGTH_SHORT,
                                              gravity: ToastGravity.CENTER,
                                              timeInSecForIosWeb: 1,
                                              backgroundColor: Colors.red,
                                              textColor: Colors.white,
                                              fontSize: 16.0
                                          );
                                        },
                                      )
                                  )
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ]
      ),
    );
  }
}
