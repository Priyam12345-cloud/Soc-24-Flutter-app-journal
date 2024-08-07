import 'package:flutter/material.dart';
import 'task_item_page.dart'; // Import the TaskItemPage
import 'hair_skin_care_page.dart'; // Import the HairSkinCarePage
import 'activity_page.dart'; // Import the ActivityPage
import 'studies_page.dart'; // Import the StudiesPage

class MyComponent extends StatelessWidget {
  const MyComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          color: Colors.pink,
          margin: const EdgeInsets.only(top: 18),
          child: Row(
            children: [
              Expanded(
                child: _buildIconButton(
                  context,
                  'https://cdn2.iconfinder.com/data/icons/travel-solid-world-is-beautiful/512/Eating-64.png',
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TaskItemPage()),
                    );
                  },
                ),
              ),
              Expanded(
                child: _buildIconButton(
                  context,
                  'https://cdn-icons-png.flaticon.com/128/4558/4558834.png',
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const StudiesPage()),
                    );
                  },
                ),
              ),
              Expanded(
                child: _buildJournalButton(),
              ),
              Expanded(
                child: _buildIconButton(
                  context,
                  'https://cdn-icons-png.flaticon.com/128/12732/12732638.png',
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HairSkinCarePage()),
                    );
                  },
                ),
              ),
              Expanded(
                child: _buildIconButton(
                  context,
                  'https://cdn-icons-png.flaticon.com/128/4357/4357645.png',
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ActivityPage()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 375,
          padding: const EdgeInsets.fromLTRB(75, 21, 75, 8),
          child: Center(
            child: Container(
              width: 134,
              height: 5,
              decoration: BoxDecoration(
                color: const Color(0xFF0B0B0B),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildIconButton(BuildContext context, String imageUrl, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        color: Colors.white,
        child: Image.network(
          imageUrl,
          width: 24,
          height: 24,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  Widget _buildJournalButton() {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 6, 17, 6),
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(
            'https://cdn-icons-png.flaticon.com/128/8685/8685631.png',
            width: 24,
            height: 24,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 4),
          const Text(
            'Journal',
            style: TextStyle(
              color: Color(0xFFFF5987),
              fontSize: 12,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
