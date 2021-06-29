import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 10,
        backgroundColor: Colors.black,),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 15),
              width: MediaQuery.of(context).size.width *0.9,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                border: Border.all(
                  color: Colors.white
                ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                margin: EdgeInsets.only(left: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search,color: Colors.white,),
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.grey)
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: MediaQuery.of(context).size.height *0.8,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 150,
                      childAspectRatio: 4/4,
                      crossAxisSpacing: 4,
                      mainAxisSpacing:4
                  ),
                  itemCount: 33,
                  itemBuilder: (context,index){
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: NetworkImage('https://images.unsplash.com/photo-1494257610566-28280a243b22?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGhpbGx8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
                          fit: BoxFit.cover
                        )
                      ),
                      // child: Text('wwwwww',style: TextStyle(color: Colors.white),),
                    );
                  }),
            )
          ],
        )
      ),
    );
  }
}
