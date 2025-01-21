import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provide/bloc/counter_bloc.dart';
import 'package:provide/home.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      // title: 'Flutter To-Do List',
      // home: BlocProvider(create: (context)=>CounterBloc(),
      //   child: const CounterPage(),
      // ));
      home: HomePage());

  }
}
