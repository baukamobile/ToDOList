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
    ['Clean the house', false],
    ['Do exercise', false],
  ];
  final _controller = TextEditingController();
  void checkboxchanged(int index){
    setState(() {
      
    gettodolist[index][1] = !gettodolist[index][1];
    });
  }
void saveNewtask(){
  setState(() {
    
  gettodolist.add([_controller.text,false]);
  _controller.clear();
  });}


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
          floatingActionButton:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      controller: _controller,
                    decoration: InputDecoration(
                      filled: true,
                      // fillColor: Colors.white,
                      // border: Border.all(
                      //   color: Colors.white
                      // ),
                      hintText: 'Input Someting',
                      hintStyle: TextStyle(
                        color: Colors.white
                      ),
                      enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.white,
                      )
                        
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        
                      )
                    ),
                                
                                    ),
                  )
                ),
            
             FloatingActionButton(onPressed: () {
              saveNewtask();
             },
              child: Icon(Icons.add,color: Colors.blue,)
                         )
              ]
            ),
          ),
    );

  }
}
