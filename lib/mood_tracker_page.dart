import 'package:flutter/material.dart';

class MoodTrackerPage extends StatefulWidget {
  const MoodTrackerPage({super.key});

  @override
  State<MoodTrackerPage> createState() => _MoodTrackerPageState();
}

class _MoodTrackerPageState extends State<MoodTrackerPage> {
  String? _selectedMoodMessage;

  void _showMoodMessage(String mood) {
    setState(() {
      switch (mood) {
        case 'Happy':
          _selectedMoodMessage = 'You selected: Happy 😊❤️\nKeep smiling and spread joy!';
          break;
        case 'Sad':
          _selectedMoodMessage = 'You selected: Sad 😢❤️\nIt\'s okay to feel sad. Take care of yourself!';
          break;
        case 'Angry':
          _selectedMoodMessage = 'You selected: Angry 😡❤️\nTake deep breaths and try to relax.';
          break;
        case 'Scared':
          _selectedMoodMessage = 'You selected: Scared 😨❤️\nIt\'s okay to be scared. You are not alone.';
          break;
        case 'Tired':
          _selectedMoodMessage = 'You selected: Tired 😴❤️\nRest well and take care of yourself!';
          break;
        default:
          _selectedMoodMessage = 'You selected: $mood ❤️';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mood Tracker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'How are you feeling today?',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildMoodButton(context, '😊', 'Happy'),
                _buildMoodButton(context, '😢', 'Sad'),
                _buildMoodButton(context, '😡', 'Angry'),
                _buildMoodButton(context, '😨', 'Scared'),
                _buildMoodButton(context, '😴', 'Tired'),
              ],
            ),
            const SizedBox(height: 20),
            if (_selectedMoodMessage != null)
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Text(
                  _selectedMoodMessage!,
                  style: const TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildMoodButton(BuildContext context, String emoji, String mood) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.yellow, // Yellow color for the button
          minimumSize: const Size(60, 60), // Button size
        ),
        onPressed: () {
          _showMoodMessage(mood);
        },
        child: Text(
          emoji,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
