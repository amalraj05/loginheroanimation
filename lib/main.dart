import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loginheroanimation/homepage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),debugShowCheckedModeBanner: false,
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 120,left: 100),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HOMEPAGE(),
                    ),
                  );
                },
                child: Hero(
                  tag: 'hero-tag',
                  child: Image.asset("images/lamporgini.png",width: 150,height: 150,)
                ),
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.only(top: 390),
              child: Container(
                width: 360,height: 450,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 60,left: 50),
                  child: Text("LogiNow",style: TextStyle(color: Colors.blue[900],fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 500,left: 25),
              child: Column(
                children: [
                  SizedBox(
                    width: 310,
                    child: TextField(
                            decoration: InputDecoration(filled: true,fillColor: Colors.white,
                                      enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),borderRadius: BorderRadius.circular(20),
                        ),
                          hintText: "Email address",
                          hintStyle: TextStyle(color: Colors.black)
                        )
                        ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                      SizedBox(
                        width: 300,
                        child: TextField(
                                          obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                                  enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),borderRadius: BorderRadius.circular(20),
                                        ),
                                          hintText: "password",
                                          hintStyle: TextStyle(color: Colors.black)
                                        )),
                      ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 720,left: 20),
              child: SizedBox(
                width: 320,height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    shape: RoundedRectangleBorder()
                  ),
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HOMEPAGE(),
                    ));
                  },
                 child: Text("LOGIN",style: TextStyle(color: Colors.white,fontSize: 18),)
                 ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
