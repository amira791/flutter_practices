import 'package:flutter/material.dart';

class OutCard extends StatelessWidget{
 
  late Function onTap;
  late (String name, String color, double averageWeight, bool isFruit) item;
  OutCard (
    {
      required Function onTap, 
      required  (String name, String color, double averageWeight, bool isFruit) item
    }
  ) {
    this.item = item;
    this.onTap = onTap;
  }
  @override
  Widget build(BuildContext context) {
      return Container(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 20,
                  top: 10,
                  bottom: 10,
                ),
                margin:const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 4,
                  bottom: 4,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20),),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset.zero,
                      spreadRadius: 2,
                      blurRadius: 5,
                    )
                  ]
                ),

              
                child:  Row(children: [
                  Text(item.$1),
                  const Spacer(),
                
                  InkWell(
                    onTap:() {
                      onTap.call();
                    } ,               
                    child: const Icon(Icons.delete_rounded),
                  )


                ],),
              );
   
  }
  

}