import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:mvc_get/controller/home_contrller.dart';

class Home extends StatelessWidget {
 Home({super.key});
 final  HomeController controller =HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    title: const Text("Homepage"),
  ) ,
      body:Center(
          child: Obx( ()=> Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                MaterialButton(onPressed: ()
                { 
                 controller.increment();
                  // setState(() {
                  //   counter++;
                  // });
                },child: const Icon(Icons.add,size: 30,),),
                    Center(
                 child:  Text("${controller.counter.value}",style:  const TextStyle(
                    fontSize: 30,
                  ),),
                  
               ),
                MaterialButton(onPressed: ()
                {
                  controller.decrement();
             //   print (counter);
                  // setState(() {
                  //   counter--;
                  // }); 
                },
                child: 
                const Icon(
                  Icons.remove
                ,size: 30,),),
              ],
            ),
          ),
        ),
      
    );
  }
}