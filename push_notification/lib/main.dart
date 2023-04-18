import 'package:flutter/material.dart';
import 'package:push_notification/notification.dart';

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
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    PushNotification.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        floatingActionButton: FloatingActionButton(
      onPressed: PushNotification.testNotification,
      child: Text('test'),
    ));
  }
}
