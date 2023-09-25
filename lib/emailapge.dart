import 'package:demo1/InternetEvent.dart';
import 'package:demo1/InternetState.dart';
import 'package:demo1/block.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailPage extends StatelessWidget {

  TextEditingController? _controller;
  TextEditingController? _controller1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Padding(
      padding: EdgeInsets.only(top: 150),
      child: Column(
        children: [
          BlocBuilder<InternetBLoc,SubmitState>(builder:(context,state){
            if(state is EroorState){
              return Text('${state.error}',style: TextStyle(color: Colors.red),);
            }
            else{
              return Container();
            }
      }),
          TextField(
      controller: _controller,
      onChanged: (value){
      BlocProvider.of<InternetBLoc>(context).add(ChangeText(_controller!.text,_controller1!.text));


      },
            decoration: InputDecoration(
          hintText: "Email",


      ),),
          TextField(
      controller: _controller,
      onChanged: (value){
        BlocProvider.of<InternetBLoc>(context).add(ChangeText(_controller!.text,_controller1!.text));
      },
      decoration:  InputDecoration(
      hintText: 'Password',
      ),

          ),
        BlocBuilder<InternetBLoc,SubmitState>(builder:(context,state){return MaterialButton(color: (state is ValidState)?Colors.blue:Colors.grey,onPressed: (){

        },child: Text("Submit"),);})

        ],
      ),
    ),
    );
  }
}
