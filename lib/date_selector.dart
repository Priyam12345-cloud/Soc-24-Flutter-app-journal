import 'package:flutter/material.dart';

class DateSelector extends StatelessWidget {
  const DateSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Journal',
              style: TextStyle(
                color: Color(0xFF0B0B0B),
                fontSize: 18,
                fontWeight: FontWeight.w700,
                fontFamily: 'Inter',
              ),
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF5987),
                          borderRadius: BorderRadius.circular(999),
                        ),
                        child: const Text(
                          'Day',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                      const SizedBox(width: 6),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        child: const Text(
                          'Week',
                          style: TextStyle(
                            color: Color(0xFF6D6D6D),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 36,
                  height: 36,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    'https://cdn-icons-png.flaticon.com/512/6683/6683815.png',
                    width: 18,
                    height: 18,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildDateItem('M', '29'),
            _buildDateItem('T', '30', isSelected: true),
            _buildDateItem('W', '01'),
            _buildDateItem('T', '02'),
            _buildDateItem('F', '03'),
            _buildDateItem('S', '04'),
            _buildDateItem('S', '05'),
          ],
        ),
      ],
    );
  }

  Widget _buildDateItem(String day, String date, {bool isSelected = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFFFFEEF3) : null,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Column(
        children: [
          Text(
            day,
            style: const TextStyle(
              color: Color(0xFF0B0B0B),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: 'Inter',
            ),
          ),
          const SizedBox(height: 8),
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: isSelected ? const Color(0xFFFF5987) : null,
              borderRadius: BorderRadius.circular(999),
              boxShadow: isSelected
                  ? [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.17),
                        blurRadius: 3,
                        offset: const Offset(0, 2),
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        blurRadius: 3,
                        offset: const Offset(0, 0),
                      ),
                    ]
                  : null,
            ),
            child: Center(
              child: Text(
                date,
                style: TextStyle(
                  color: isSelected ? Colors.white : const Color(0xFF0B0B0B),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inter',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
