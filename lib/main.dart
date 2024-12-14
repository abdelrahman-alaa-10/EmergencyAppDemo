import 'package:flutter/material.dart';
import 'videocall.dart';
import 'routes.dart';

void main() 
{
  runApp(const MyApp());
}

/// The App Widget
class MyApp extends StatelessWidget 
{
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      title: 'Emergency App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      routes: 
      {
        Routes.videoCallRoute: (context) => const VideoCall(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget
{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emergency App'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, Routes.videoCallRoute); // Navigate to VideoCall screen
          },
          child: const Text('Call'),
        ),
      ),
    );
  }
}


