import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praktikum_01/view/home_screen.dart';
import 'package:praktikum_01/viewmodel/contact_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override2
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ContactCubit(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(useMaterial3: false),
        home: const HomeScreen(),
      ),
    );
  }
}