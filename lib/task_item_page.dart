import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  final String status;
  final String title;
  final String description;
  final String imageUrl;
  final Color statusColor;
  final Color statusBackgroundColor;
  final bool isCompleted;

  const TaskItem({
    Key? key,
    required this.status,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.statusColor,
    required this.statusBackgroundColor,
    this.isCompleted = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 643,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 8), // Add margin for spacing between items
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFBCC4CF).withOpacity(0.25),
            blurRadius: 40,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: statusBackgroundColor,
              borderRadius: BorderRadius.circular(999),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/128/1623/1623786.png',
                  width: 16,
                  height: 16,
                ),
                const SizedBox(width: 4),
                Text(
                  status,
                  style: TextStyle(
                    color: statusColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Color(0xFF0B0B0B),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      description,
                      style: const TextStyle(
                        color: Color(0xFF6D6D6D),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://cdn-icons-png.flaticon.com/128/13635/13635973.png',
                  width: 52,
                  height: 52,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          if (isCompleted)
            Align(
              alignment: Alignment.topRight,
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/128/13635/13635973.png',
                width: 22,
                height: 22,
              ),
            ),
        ],
      ),
    );
  }
}

class TaskItemPage extends StatelessWidget {
  const TaskItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Items'),
      ),
      body: Center(
        child: SingleChildScrollView( // To make the list scrollable
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TaskItem(
                status: 'Breakfast',
                title: 'Ramen',
                description: 'Delicious ramen with soft-boiled egg.',
                imageUrl: 'https://via.placeholder.com/52', // Replace with actual image URL
                statusColor: Colors.orange,
                statusBackgroundColor: Colors.orange.withOpacity(0.1),
                isCompleted: true,
              ),
              TaskItem(
                status: 'Lunch',
                title: 'Chicken Curry',
                description: 'Spicy chicken curry with rice.',
                imageUrl: 'https://via.placeholder.com/52', // Replace with actual image URL
                statusColor: Colors.green,
                statusBackgroundColor: Colors.green.withOpacity(0.1),
                isCompleted: true,
              ),
              TaskItem(
                status: 'Snacks',
                title: 'Dosa',
                description: 'Crispy dosa with chutney and sambar.',
                imageUrl: 'https://via.placeholder.com/52', // Replace with actual image URL
                statusColor: Colors.blue,
                statusBackgroundColor: Colors.blue.withOpacity(0.1),
                isCompleted: true,
              ),
              TaskItem(
                status: 'Dinner',
                title: 'Franky',
                description: 'Tasty franky wrap with vegetables and sauce.',
                imageUrl: 'https://via.placeholder.com/52', // Replace with actual image URL
                statusColor: Colors.red,
                statusBackgroundColor: Colors.red.withOpacity(0.1),
                isCompleted: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
