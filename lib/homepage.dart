import 'package:flutter/material.dart';

class HOMEPAGE extends StatelessWidget {
  const HOMEPAGE({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.blueAccent[100],
        title: Text('HOME PAGE'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Hero(
            tag: 'hero-tag',
            child: Image.asset("images/lamporgini.png",width: 300,height: 300,)
          ),
        ),
      ),
    );
  }
}