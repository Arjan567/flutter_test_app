
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _LogoutState();
}

class _LogoutState extends State<About> {
  var arrNames =["sadish","suyash","sabesh","sakchyam","sambhab","arjan"];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(238, 187, 191, 198),
    appBar: AppBar(
      centerTitle: true,
  title: Text('This is about pagae'),
  backgroundColor: Colors.blue,

),
// body:ListView(
//   scrollDirection: Axis.horizontal,
// //reverse: true,
// children: [
//   Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Text("One",style: TextStyle(fontSize:23,fontWeight: FontWeight.w500),),
//   ),
//   Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Text("Two",style: TextStyle(fontSize:23,fontWeight: FontWeight.w500),),
//   ),
//   Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Text("Three",style: TextStyle(fontSize:23,fontWeight: FontWeight.w500),),
//   ),
//   Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Text("Four",style: TextStyle(fontSize:23,fontWeight: FontWeight.w500),),
//   ),
//   Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Text("Five",style: TextStyle(fontSize:23,fontWeight: FontWeight.w500),),
//   ),
// ],
body:ListView.separated(itemBuilder:(context, index) {
  
  return Text(arrNames[index],style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500,),textAlign: TextAlign.center,);
  

},
itemCount: arrNames.length,
//itemExtent: 200,

scrollDirection:Axis.vertical ,
separatorBuilder:(context,Index){
  
  return Divider(height:100 ,thickness: 7,);
}

),
    );
  }
}