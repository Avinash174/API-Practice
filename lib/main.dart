import 'package:api_practice/provider/count_provider.dart';
import 'package:api_practice/provider/user_provider.dart';
import 'package:api_practice/view/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            color: Colors.amber,
          ),
          primaryColor: Colors.blue,
        ),
        home: const UserWithProvider(),
      ),
    );
  }
}
