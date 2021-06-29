import 'package:daily_news/Screens/LogIn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff03DAC5),
      appBar: AppBar(
        title: Text('Roll-UP'),
        backgroundColor: Colors.pinkAccent.withOpacity(0.8),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.1,left: 20),
          child: Column(
            children:<Widget>[
              Icon(CupertinoIcons.profile_circled,color: Colors.white,size:80,),
              Text('SignUp',style: TextStyle(color: Colors.white,fontSize: 20),),
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                child: TextFormField(
                    decoration: new InputDecoration(
                        labelText: "First Name",
                        suffixIcon: Icon(CupertinoIcons.profile_circled),
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: new UnderlineInputBorder(
                            borderSide: new BorderSide(color: Colors.white,)
                        ),
                    )
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                child: TextFormField(
                  decoration: const InputDecoration(
                      suffixIcon: Icon(CupertinoIcons.profile_circled),
                      labelText: 'Last Name',
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                      )
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                child: TextFormField(
                  decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.email),
                      labelText: 'Email ID',
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                      )
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.white),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                      )
                  ),
                ),
              ),
              SizedBox(
                height:20,
              ),
              RaisedButton(
                color: Colors.red, // background
                textColor: Colors.white, // foreground
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LogIN()),
                  );
                },
                child: Text('submit'),

              )

            ]
          ),
        ),
      ),
    );
  }
}
