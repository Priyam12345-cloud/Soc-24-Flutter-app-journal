import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import for date formatting
import 'mood_tracker_page.dart'; // Import the mood tracker page
import 'my_component.dart'; // Import the custom bottom navbar
import 'date_selector.dart'; // Import the DateSelector

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Journal App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Journal App Home Page'),
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
  String _formattedDate() {
    return DateFormat('yyyy-MM-dd').format(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const DateSelector(), // Add the DateSelector widget
            const SizedBox(height: 20),
            Container(
              color: Colors.pink,
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Today\'s Date: ${_formattedDate()}', // Dynamic date
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MoodTrackerPage()),
                );
              },
              child: const Text('Track Mood'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const MyComponent(), // Add the bottom navbar
    );
  }
}
