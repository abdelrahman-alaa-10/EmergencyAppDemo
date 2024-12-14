// Import necessary packages
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InstructionPage(),
    );
  }
}

/// This class is created for instruction & call page that user
/// should interact with (in case of emergency situation without sign in)
// Instruction and Video Call Page
class InstructionPage extends StatefulWidget {
  @override
  _InstructionPageState createState() => _InstructionPageState();
}

class _InstructionPageState extends State<InstructionPage> {
  final List<String> emergencyCases = [
    'Heart Attack',
    'Stroke',
    'Choking',
    'Burn Injury'
  ];
  String? selectedCase;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency Instructions'),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Select Emergency Case:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            DropdownButton<String>(
              isExpanded: true,
              value: selectedCase,
              items: emergencyCases.map((caseName) {
                return DropdownMenuItem(
                  value: caseName,
                  child: Text(caseName),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCase = value;
                });
              },
              hint: Text('Choose a case'),
            ),
          ],
        ),
      ),
    );
  }
}
