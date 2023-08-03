import 'dart:convert';

import 'package:apidemo/model/usermodel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

import '../model/usermodel.dart';
class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

   List<usermodel> userlist=[];

   Future<List<usermodel>> getpostapi() async{
final response =await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
var data=jsonDecode(response.body.toString());
  if(response.statusCode ==200){
    for (Map<String,dynamic> i  in data) {
      userlist.add(usermodel.fromJson(i));
    }
     return userlist;
 
  }

else{
       return userlist;
 
}







   }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.blue,
      home: Scaffold(appBar: AppBar(
        title: Text('Api course'),
      ),
      body: Center(
    child: Column(
      
      
      children: [
Expanded(
  child:   FutureBuilder(
  
    future: getpostapi(),
  
    builder: (context,snapshot){
  
    if(!snapshot.hasData){
  
   return Center(child: CircularProgressIndicator());
  
    }else{
  
  return ListView.builder(
  
    itemCount: userlist.length,
  
    itemBuilder: (context,index){
  
    return Card(
  margin: EdgeInsets.all(20),
      child: TextButton(
        onPressed: () {
          print(userlist[index].id.toString());
        },
        child: Text(userlist[index].title.toString())),
  
    );
  
  });
  
    }
  
  
  
  
  
  }),
)
      ],)
      ),
      
      ));
  }
}