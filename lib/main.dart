import 'package:airplane/cubit/page_cubit.dart';
import 'package:airplane/ui/pages/bonus_pages.dart';
import 'package:airplane/ui/pages/main_pages.dart';
import 'package:airplane/ui/pages/sign_up_pages.dart';
import 'package:airplane/ui/pages/get_started_pages.dart';
import 'package:airplane/ui/pages/splash_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/get-started': (context) => GetSartedPage(),
          '/sign-up': (context) => signUpPage(),
          '/bonus': (context) => BonusPages(),
          '/main': (context) => mainPage(),
        },
      ),
    );
  }
}
