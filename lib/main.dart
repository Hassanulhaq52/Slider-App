import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_flutter/application/slider_bloc/slider_bloc.dart';
import 'package:task_flutter/screens/slider_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SliderBloc(),
      child: const MaterialApp(
        title: 'Slider App',
        home: SliderScreen(),
      ),
    );
  }
}
