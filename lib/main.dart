import 'package:flutter/material.dart';
import 'videocall.dart';
import 'routes.dart';
import 'specialist_page.dart';
import 'instruction_call_page.dart';

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
      debugShowCheckedModeBanner: false,
      title: 'Emergency App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      routes: 
      {
        Routes.videoCallRoute: (context) => const VideoCall(),
        Routes.specialistPageRoute : (context) => const DoctorPage(),
        Routes.instructionsRoute : (context) => const InstructionPage()
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Emergency Call
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, Routes.videoCallRoute);
              }, child: const Text("Emergency Call"),
            ),
            // Specialist Button
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, Routes.specialistPageRoute);
              }, child: const Text("I am a Doctor"),
            ),
            // Instructions Button
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, Routes.instructionsRoute);
              }, child: const Text("Emergency Instructions"),
            )
          ],
        ),
      ),
    );
  }
}


