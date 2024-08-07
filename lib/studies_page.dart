import 'package:flutter/material.dart';

class StudiesPage extends StatelessWidget {
  const StudiesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Studies Routine'),
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
              _buildTaskItem(
                status: 'Revision',
                title: 'Revision',
                description: 'Focus on revising key concepts.',
                imageUrl: 'https://cdn-icons-png.flaticon.com/128/4301/4301966.png', // Replace with actual image URL
                statusColor: Colors.blue,
                statusBackgroundColor: Colors.blue.withOpacity(0.1),
              ),
              _buildTaskItem(
                status: 'Writing',
                title: 'Writing',
                description: 'Write summaries and notes.',
                imageUrl: 'https://cdn-icons-png.flaticon.com/128/3271/3271154.png', // Replace with actual image URL
                statusColor: Colors.green,
                statusBackgroundColor: Colors.green.withOpacity(0.1),
              ),
              _buildTaskItem(
                status: 'Learning',
                title: 'Learning',
                description: 'Engage in new learning activities.',
                imageUrl: 'https://cdn-icons-png.flaticon.com/128/2490/2490421.png', // Replace with actual image URL
                statusColor: Colors.orange,
                statusBackgroundColor: Colors.orange.withOpacity(0.1),
              ),
              _buildTaskItem(
                status: 'Drawing',
                title: 'Drawing',
                description: 'Practice drawing and sketching.',
                imageUrl: 'https://cdn-icons-png.flaticon.com/128/4335/4335667.png', // Replace with actual image URL
                statusColor: Colors.red,
                statusBackgroundColor: Colors.red.withOpacity(0.1),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTaskItem({
    required String status,
    required String title,
    required String description,
    required String imageUrl,
    required Color statusColor,
    required Color statusBackgroundColor,
    bool isCompleted = false,
  }) {
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
                  'https://cdn-icons-png.flaticon.com/128/1081/1081040.png', // Example icon
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
                'https://cdn-icons-png.flaticon.com/128/13635/13635973.png', // Example checkmark icon
                width: 22,
                height: 22,
              ),
            ),
        ],
      ),
    );
  }
}
