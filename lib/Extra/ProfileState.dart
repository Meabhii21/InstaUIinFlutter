import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Row(children: [
          Icon(Icons.lock,color: Colors.white,),
          SizedBox(width: 4,),
          Text('abhii_2109',style: TextStyle(color: Colors.white),)
        ]),
        backgroundColor: Colors.black,
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Row(
              children: <Widget>[
                Icon(CupertinoIcons.plus_app,color: Colors.white,size: 30,),
                SizedBox(width: 10,),
                Icon(CupertinoIcons.line_horizontal_3,color: Colors.white,size: 30,)
              ],
            ),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 15,left: 20),
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage('https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
                      ),
                      SizedBox(height: 4,),
                      Text('Abhii',style: TextStyle(color:Colors.white),)
                    ]
                  ),
                  SizedBox(width: 40,),
                  Column(
                    children: <Widget>[
                      Text('33',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
                      Text('Posts',style: TextStyle(color: Colors.white))
                    ],
                  ),
                  SizedBox(width: 40,),
                  Column(
                    children: <Widget>[
                      Text('443',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
                      Text('Followers',style: TextStyle(color: Colors.white))
                    ],
                  ),
                  SizedBox(width: 40,),
                  Column(
                    children: <Widget>[
                      Text('541',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
                      Text('Following',style: TextStyle(color: Colors.white,))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
                margin:EdgeInsets.only(left: 10) ,
                width: MediaQuery.of(context).size.width,
                child: Text('Man is made by his belief.As he believes, so he is. ',style: TextStyle(color: Colors.white),)
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width* 0.9,
              height: 28,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.white)
              ),
              child: Align(
                alignment: Alignment.center,
                  child: Text('Edit Profile',style: TextStyle(color:Colors.white),)),
            ),
            Container(
              margin: EdgeInsets.only(top: 20,left: 20),
              child:Row(
                children: <Widget>[
                  Column(
                    children:<Widget>[
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage('https://images.unsplash.com/photo-1544038659-12337883d216?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGh1bWFufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
                      ),
                      SizedBox(height: 10,),
                      Text('Life',style: TextStyle(color: Colors.white),)
                    ] 
                  ),
                  SizedBox(width: 10,),
                  Column(
                      children:<Widget>[
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage('https://images.unsplash.com/photo-1463694775559-eea25626346b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8aGlrZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
                        ),
                        SizedBox(height: 10,),
                        Text('Hike',style: TextStyle(color: Colors.white),)
                      ]
                  ),
                  SizedBox(width: 10,),
                  Column(
                      children:<Widget>[
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage('https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1008&q=80'),
                        ),
                        SizedBox(height: 10,),
                        Text('Travel',style: TextStyle(color: Colors.white),)
                      ]
                  ),
                  SizedBox(width:10 ,),
                  Column(
                    children:<Widget>[
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                                color: Colors.white
                            )
                        ),
                        child: Icon(CupertinoIcons.plus,color: Colors.white,),
                      ),
                      SizedBox(height: 5,),
                      Text('New',style: TextStyle(color: Colors.white),)
                    ]
                  )
                ],
              )
            ),
              SizedBox(
                height: 10,
              ),
              DefaultTabController(length: 2,
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                        Container(
                          child: TabBar(
                            labelColor: Colors.white,
                            unselectedLabelColor: Colors.white,
                            indicatorColor: Colors.white,
                            tabs: [
                              Tab(icon: Icon(Icons.grid_on),),
                              Tab(icon: Icon(Icons.perm_contact_cal),)
                            ],
                          ),
                        ),
                      Container(
                        height: MediaQuery.of(context).size.height/2.5,
                        child: TabBarView(
                          children: <Widget>[
                            Container(
                              child:GridView.builder(
                                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                                      maxCrossAxisExtent: 150,
                                      childAspectRatio: 4 / 4,
                                      crossAxisSpacing: 1,
                                      mainAxisSpacing: 1),
                                  itemCount: 33,
                                  itemBuilder: (context,index){
                                    return Container(
                                      decoration: BoxDecoration(
                                        image:DecorationImage(
                                          image: NetworkImage('https://images.unsplash.com/photo-1612729875065-1385f02852ef?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bW91bnN0YWluc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
                                          fit: BoxFit.cover
                                        )
                                      ),
                                    );
                                  }) ,
                            ),
                            Container(
                              child: GridView.builder(
                                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 150,
                                    childAspectRatio: 4/4,
                                    crossAxisSpacing: 1,
                                    mainAxisSpacing:1
                                  ),
                                  itemCount: 33,
                                  itemBuilder: (context,index){
                                    return Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage('https://images.unsplash.com/photo-1617144174343-2a600d0fb6c8?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fG1vdW5zdGFpbnN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
                                          fit: BoxFit.cover
                                        )
                                      ),
                                    );
                                  })
                            )
                          ],
                        ),
                      )
                    ],
                  )
              )
          ],
        ),
      ),
    );
  }
}
