import 'package:demo1/block.dart';
import 'package:demo1/emailapge.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (_)=>BlocProvider(create:(context)=>InternetBLoc() ,child:EmailPage())));
          },
          child: Text("Email"),
        ),
      ),
    );
  }
}
