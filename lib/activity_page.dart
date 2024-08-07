import 'package:flutter/material.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activity Routine'),
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
            children: [
              _buildActivityTile(
                context,
                'Jogging',
                'Start your day with a refreshing jog.',
                'https://cdn-icons-png.flaticon.com/128/7411/7411530.png', // Replace with actual image URL
                Colors.blue,
                Colors.blue.withOpacity(0.1),
              ),
              _buildActivityTile(
                context,
                'Running',
                'Enhance your stamina with regular running.',
                'https://cdn-icons-png.flaticon.com/128/6265/6265854.png', // Replace with actual image URL
                Colors.green,
                Colors.green.withOpacity(0.1),
              ),
              _buildActivityTile(
                context,
                'Yoga',
                'Relax and stretch with daily yoga practice.',
                'https://cdn-icons-png.flaticon.com/128/2647/2647625.png', // Replace with actual image URL
                Colors.orange,
                Colors.orange.withOpacity(0.1),
              ),
              _buildActivityTile(
                context,
                'Playing Badminton',
                'Engage in fun and energetic badminton matches.',
                'https://cdn-icons-png.flaticon.com/128/3009/3009482.png', // Replace with actual image URL
                Colors.red,
                Colors.red.withOpacity(0.1),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActivityTile(
    BuildContext context,
    String title,
    String description,
    String imageUrl,
    Color statusColor,
    Color statusBackgroundColor,
  ) {
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
                  'https://cdn-icons-png.flaticon.com/128/10580/10580933.png',
                  width: 16,
                  height: 16,
                ),
                const SizedBox(width: 4),
                Text(
                  title,
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
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
