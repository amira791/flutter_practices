

import 'package:flutter/material.dart';
import 'package:flutter_application_1/out_card.dart';

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
 // List of items with name, color, average weight, and type (fruit/vegetable)

 late  List<(String name, String color, double averageWeight, bool isFruit)> itemsFixed ;
 late List<(String name, String color, double averageWeight, bool isFruit)> items;

 /* @override
  void dispose () {
    super.dispose();
  } */

  @override
  void initState()
  {
    super.initState();
    itemsFixed =[
    ('Apple', 'Red', 0.3, true),
    ('Banana', 'Yellow', 0.12, true),
    ('Orange', 'Orange', 0.2, true),
    ('Mango', 'Green/Yellow', 0.35, true),
    ('Strawberry', 'Red', 0.02, true),
    ('Pineapple', 'Brown/Yellow', 1.5, true),
    ('Grapes', 'Purple/Green', 0.05, true),
    ('Watermelon', 'Green/Red', 5.0, true),
    ('Peach', 'Pink/Yellow', 0.15, true),
    ('Cherry', 'Red', 0.01, true),
    ('Carrot', 'Orange', 0.15, false),
    ('Broccoli', 'Green', 0.3, false),
    ('Spinach', 'Green', 0.02, false),
    ('Potato', 'Brown', 0.25, false),
    ('Tomato', 'Red', 0.1, false)
  ]; 
  items = itemsFixed; 
  

    
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 120,
            color:  Colors.red,
          ),
          
          TextField(
            onChanged: (value){
               if (value == ""){
               items = itemsFixed; 
            }
             else 
            {
               items = itemsFixed.where((element)
               {
                if (element.$1.toLowerCase().contains(value.toLowerCase()) || element.$2.toLowerCase().contains(value.toLowerCase()))
                {
                  return true;
                }
                else
                { return false; }
               } ).toList();
              
            }
            setState(() {
              
            });
              
            },
          ),
          Expanded(child:  ListView.builder(
            itemCount: items.length,
            itemBuilder:(context, index) {
              return OutCard(
                item: items[index],
                onTap: () {
                  items.removeAt(index);
                  setState(() {});
                },
              );
            
            },
          ),)
        ],
      ),
    );
  }
}
