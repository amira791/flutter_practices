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
  
    return  Scaffold(
     
      body: Center(
        child: Column(
          children: [
             Container(
            height: 100,
            color:  const Color.fromARGB(255, 54, 238, 244),
          ),
          const SizedBox(
  height: 40,
),
          
            Text(
           'Welcome !', 
           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.teal)
           
            ),
            Text(
           '~ O hime Sama ~', 
           style: TextStyle( fontSize: 20, color: Colors.teal)
           
            ),
            const SizedBox(
  height: 30,
),
            Container(
              margin:const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 4,
                  bottom: 4,
                ),
              child: TextField(
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    hintText: 'Username',
  ),

            )
            
           
),
const SizedBox(
  height: 30,
),
             Container(
              margin:const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 4,
                  bottom: 4,
                ),
              child: TextField(
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    hintText: 'Password',
  ),

            )
            
           
),
const SizedBox(
  height: 30,
),
InkWell(  
                    onTap:() {
                    
                    } ,               
                    child: Container(
                        margin:const EdgeInsets.only(
                  top: 4,
                  bottom: 4,
                ),
                decoration: const BoxDecoration(
                 color:  Color.fromARGB(255, 54, 238, 244),
                  borderRadius: BorderRadius.all(Radius.circular(20),),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(66, 76, 75, 75),
                      offset: Offset.zero,
                      spreadRadius: 2,
                      blurRadius: 5,
                    )
                  ]
                ),
            height: 50,
            width: 100,
            child: Center (child:  Text(
           'Login', 
           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: const Color.fromARGB(255, 27, 26, 26)),
            ),),
            
          ),
                  ) 
                

          ],      
        
        ),
      ),
    
    );
  }
}
