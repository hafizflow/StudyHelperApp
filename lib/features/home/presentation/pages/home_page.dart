import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildMenuItem(
              context,
              icon: Icons.style,
              title: 'Flashcard Generation',
              color: const Color(0xFFFFB6C1),
              onTap: () => context.push('/create-flashcard'),
            ),
            const SizedBox(height: 16),
            _buildMenuItem(
              context,
              icon: Icons.quiz,
              title: 'Quiz Race',
              color: const Color(0xFFD8BFD8),
              onTap: () => context.push('/upload-resources?type=quiz'),
            ),
            const SizedBox(height: 16),
            _buildMenuItem(
              context,
              icon: Icons.sports_esports,
              title: 'Matching Sprint',
              color: const Color(0xFFADD8E6),
              onTap: () => context.push('/upload-resources?type=matching'),
            ),
            const SizedBox(height: 16),
            _buildMenuItem(
              context,
              icon: Icons.book,
              title: 'Study Guide Builder',
              color: const Color(0xFFFFDAB9),
              onTap: () => context.push('/upload-resources?type=study-guide'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required Color color,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: color.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, size: 28, color: color),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Icon(Icons.arrow_forward_ios, size: 18, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
