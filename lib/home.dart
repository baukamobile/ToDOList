import 'package:flutter/material.dart';
import 'package:provide/theme/colors.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List todo = [
    ['Buy Coffee'],
    ['Hard Study'],
    ['Go to bed'],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text("Todo List"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.white,))

        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text("Main Page",style: drawertext),
              
                ),
            ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                child: Text("Settings",style: drawertext),
                
                ),
              ),
              
              

          ],
        ),
      ),
      body: ListView.builder(
        itemCount: todo.length,
        itemBuilder: (BuildContext context, index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              // color: const Color.fromARGB(255, 64, 153, 212),
              width: 140,
              height: 100,
              decoration: BoxDecoration(
                color: coolblue,
                borderRadius: BorderRadius.circular(25)

              ),


            
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(todo[index][0],style: drawertext,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.business)),
                  ],
                ),
              )
              ),
          );
      }),
    );
  }
}