import 'package:flutter/material.dart';
import 'package:provide/theme/colors.dart';

class Todolist extends StatelessWidget {
  Todolist({super.key,required this.taskname, required this.taskCompleted, this.onChanged});
  final String taskname;
  final bool taskCompleted;
  final Function(bool?)? onChanged;
  


  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  // color: const Color.fromARGB(255, 64, 153, 212),
                  width: 140,
                  height: 100,
                  decoration: BoxDecoration(
                      color: coolblue, borderRadius: BorderRadius.circular(25)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Checkbox(
                          value: taskCompleted,
                           onChanged: onChanged,
                           checkColor: Colors.black,
                           activeColor: Colors.white,
                           side: BorderSide(
                            color: Colors.white
                           ),
                          //  fillColor: Colors.black,
                           ),
                        Text(
                          taskname,
                          style: TextStyle(
                            decoration: taskCompleted ? TextDecoration.lineThrough : TextDecoration.none,
                            color: whitetextcolor.secondaryHeaderColor,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 2,
                            fontSize: 25,
                          ),
                          
                        ),
                        // Checkbox(value: task, onChanged: onChanged)
                      ],
                    ),
                  )),
            );
  }
}