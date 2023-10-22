import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [],
      child: MaterialApp(
        title: 'Material App',
        theme: ThemeData.light().copyWith(
            tabBarTheme: TabBarTheme(
                labelColor: Colors.orange,
                unselectedLabelColor: Colors.grey.withOpacity(0.3),
                indicatorSize: TabBarIndicatorSize.label,
                indicator: const BoxDecoration()),
            appBarTheme: const AppBarTheme(
                elevation: 0,
                backgroundColor: Colors.transparent,
                systemOverlayStyle: SystemUiOverlayStyle.dark),
            floatingActionButtonTheme: const FloatingActionButtonThemeData(
                backgroundColor: Color.fromRGBO(11, 23, 84, 1))),
      ),
    );
  }
}
