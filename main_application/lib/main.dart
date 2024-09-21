import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
     
      body: ListView(
        children: [
          // Expanded(
          //   flex: 2,
          //   child: Container(color: Colors.amber)

          // ),
          // Expanded(
          //   flex: 3,
          //   child: Container(color: Colors.red)

          // ),
          Container(
          padding: const EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height /3, 
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 10, 155, 171),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )
          ),
          child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15,),
            const Row(
              children: [
                Icon(Icons.menu, color: Colors.white),
                Spacer(),
                Icon(Icons.notification_add_rounded, color: Colors.white,)
              ],
            ),
            const SizedBox(height: 15,),
            const Text("Ohayoo", 
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.white),),
            const Text("Welcome Back ✨", 
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
            const SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white.withAlpha(50),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Row(
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.search, color: Colors.white),
                  Expanded(child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle( color: Colors.white
                    ),
                    border: InputBorder.none,
                  ),), ),
                  
                ],
              )
            )
            
          ],
                    )
                    ),
         ListView(
          shrinkWrap: true, //use availibal height 
           children: [
             SizedBox(height: 160,
             child: Row(children: [
               Expanded(
                 child:Container(
                   decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 237, 201, 94),
                      borderRadius: BorderRadius.circular(30),
         
                   ),
                
                 margin: const EdgeInsets.all(10),
                 child: const Column( children: [],)
         
             ), ),
             Expanded(
                 child:Container(
                 
                 margin: const EdgeInsets.all(10),
                 
                 decoration:  BoxDecoration(
                   color:  Color.fromARGB(255, 73, 147, 208),
                   borderRadius: BorderRadius.circular(30),
         
                 ),
                 child: const Column( children: [],)
         
             ),
              ),
             ],)),
             
            
           ],
         )

        
        ],
  
      

 
        ),
    
      
    );
  }
}
