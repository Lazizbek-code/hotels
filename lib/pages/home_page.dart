import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
        
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/ic_header.jpg"),
                  fit: BoxFit.cover
                )
              ),
              child:Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0.3)
                    ]
                  )
                ),
                child: Column(
                    mainAxisAlignment:MainAxisAlignment.end,
                    
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text("What kind of hotel you need?", style: TextStyle(color:Colors.white, fontSize: 30, fontWeight: FontWeight.bold, ),textAlign:TextAlign.center, ),
                    ),
                    SizedBox(height:30),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal:40),
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,

                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search, color: Colors.grey,),
                          hintText: "Search for hotels...",
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 18)
                        ),
                      ),
                    ),
                    SizedBox(height:30),

                  ],
                ),
              ),
              
            ),

            SizedBox(height:20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment:MainAxisAlignment.start,
                children: [
                  Text("Best hotels", style: TextStyle(color: Colors.grey[800], fontSize:20, fontWeight:FontWeight.bold),),
                  SizedBox(height:30),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem("assets/images/ic_hotel1.jpg", "Hotel 1"),
                        makeItem("assets/images/ic_hotel2.jpg", "Hotel 2"),
                        makeItem("assets/images/ic_hotel3.jpg", "Hotel 3"),
                        makeItem("assets/images/ic_hotel4.jpg", "Hotel 4"),
                        makeItem("assets/images/ic_hotel5.jpg", "Hotel 5"),
                      ],
                    ),
                  ),
                  SizedBox(height:20),
                  Text("Luxury hotels", style: TextStyle(color: Colors.grey[800], fontSize:20, fontWeight:FontWeight.bold),),
                  SizedBox(height:30),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem("assets/images/ic_hotel3.jpg", "Hotel 1"),
                        makeItem("assets/images/ic_hotel5.jpg", "Hotel 2"),
                        makeItem("assets/images/ic_hotel1.jpg", "Hotel 3"),
                        makeItem("assets/images/ic_hotel2.jpg", "Hotel 4"),
                        makeItem("assets/images/ic_hotel4.jpg", "Hotel 5"),
                      ],
                    ),
                  ),
                  SizedBox(height:20),
                ],
              ),
            )
          ],
        ),
      ),

    );
  }

  Widget makeItem(String image, String title){
    return AspectRatio(
      aspectRatio: 1.4/1,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          padding:EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin:Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.7),
                Colors.black.withOpacity(0.2),
              ]
            )
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(title, style: TextStyle(color: Colors.white, fontSize: 20),),
          ),
        ),
      ),
    );
  }
}