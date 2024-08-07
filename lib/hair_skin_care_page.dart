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
      margin: const EdgeInsets.symmetric(vertical: 8),
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
                  'https://cdn-icons-png.flaticon.com/128/2621/2621654.png',
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
                  imageUrl,
                  width: 100, // Larger width for bigger image
                  height: 100, // Larger height for bigger image
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          if (isCompleted)
            Align(
              alignment: Alignment.topRight,
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/128/1312/1312091.png',
                width: 22,
                height: 22,
              ),
            ),
        ],
      ),
    );
  }
}

class HairSkinCarePage extends StatelessWidget {
  const HairSkinCarePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hair and Skin Care Routine'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TaskItem(
                status: 'Hair Care',
                title: 'Shampoo',
                description: 'Use sulfate-free shampoo for healthier hair.',
                imageUrl: 'https://cdn-icons-png.flaticon.com/128/1521/1521124.png', // Replace with actual image URL
                statusColor: Colors.orange,
                statusBackgroundColor: Colors.orange.withOpacity(0.1),
                isCompleted: true,
              ),
              TaskItem(
                status: 'Hair Care',
                title: 'Conditioner',
                description: 'Apply conditioner from mid-length to ends.',
                imageUrl: 'https://cdn-icons-png.flaticon.com/128/14229/14229944.png', // Replace with actual image URL
                statusColor: Colors.green,
                statusBackgroundColor: Colors.green.withOpacity(0.1),
                isCompleted: true,
              ),
              TaskItem(
                status: 'Skin Care',
                title: 'Cleanser',
                description: 'Use a gentle cleanser to remove impurities.',
                imageUrl: 'https://cdn-icons-png.flaticon.com/128/8946/8946526.png', // Replace with actual image URL
                statusColor: Colors.blue,
                statusBackgroundColor: Colors.blue.withOpacity(0.1),
                isCompleted: true,
              ),
              TaskItem(
                status: 'Skin Care',
                title: 'Moisturizer',
                description: 'Apply moisturizer to keep skin hydrated.',
                imageUrl: 'https://cdn-icons-png.flaticon.com/128/16089/16089902.png', // Replace with actual image URL
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
