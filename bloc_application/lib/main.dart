import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/tarjih_bloc.dart';

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
  TarjihBloc bloc = TarjihBloc();
  @override
  Widget build(BuildContext context) {
    bloc.add((GetData(12)));

    return Scaffold(
        body: BlocBuilder<TarjihBloc, TarjihState>(
          bloc: bloc,
          builder: (context, state) {
      if (state is SuccessState) {
        return Container(color: Colors.green);
      } else if (state is ErrorState) {
        return Container(color: Colors.red);
      } else if (state is LoaingState) {
        return Container(color: const Color.fromARGB(255, 209, 244, 54));
      }
      return Container(color: const Color.fromARGB(255, 54, 225, 244));
    }));
  }
}
