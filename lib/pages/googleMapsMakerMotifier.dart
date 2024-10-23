import 'package:flutter/material.dart';

class Googlemapsmakermotifier extends StatefulWidget {
  const Googlemapsmakermotifier({super.key});

  @override
  State<Googlemapsmakermotifier> createState() =>
      _GooglemapsmakermotifierState();
}

class _GooglemapsmakermotifierState extends State<Googlemapsmakermotifier> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(2, 2, 3, 2),
  floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,
  floatingActionButton: SizedBox(
    child:Column(mainAxisAlignment: MainAxisAlignment.end,children:[
      
    ])
  ),
      appBar: AppBar(
        title: const Text('Google maps maker'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container(
            //   height: 200,
            //   width: 200,
            //   color: Colors.blue,
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage('assets/googlemap.png'),
            //       fit: BoxFit.cover,
            //       ),
            //       ),

            Container(
              height: 200,
              width: 200,
              color: Colors.blue,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Googlemap.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),


            Container(
              width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    //  border: Border( color: Colors.white,
                    color: Color.fromARGB(231, 248, 248, 248),
                  ),
                  // ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 14),
                  margin: const EdgeInsets.all(10),
                  // color: Color.fromARGB(231, 248, 248, 248),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: InkWell(
                          child: const Text(
                            'Demograph',
                            style: TextStyle(
                                color: Color.fromRGBO(90, 224, 95, 1),
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                          onTap: () {
                            print("hello world");
                          },
                        ),
                    
                      ),
                    ],
                  ),
                 ),
            
          ],
        ),
      ),
    );
  }
}
