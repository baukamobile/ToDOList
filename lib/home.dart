import 'package:flutter/material.dart';
import 'package:provide/theme/colors.dart';
import 'package:provide/todolist.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List gettodolist = [
    ['Buy Coffee', false],
    ['Hard Study', false],
    ['Go to bed', false],
    ['Buy Tea', false],
    ['Smart Work', false],
    ['Go to the gym', false],
    ['Read Book', false],
    ['Clean the house', false],
    ['Do exercise', false],
  ];
  void checkboxchanged(int index){
    setState(() {
      
    gettodolist[index][1] = !gettodolist[index][1];
    });
  }


  // final bool task;

  // final Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text("Todo List"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ))
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
                child: Text("Main Page", style: drawertext),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text("Settings", style: drawertext),
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: gettodolist.length,
          itemBuilder: (BuildContext context, index) {
            return Todolist(
              taskname: gettodolist[index][0],
              taskCompleted: gettodolist[index][1],
              onChanged: (value){
                checkboxchanged(index);
              }
            );
          }),
          floatingActionButton: FloatingActionButton(onPressed: () {
            
          },
            child: Icon(Icons.add)
          ),
    );
  }
}
