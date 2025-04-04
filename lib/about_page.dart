import 'package:flutter/material.dart';

// Ensure all text is sharp and clear.
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ListView(
              children: [
                const SizedBox(height: 40),
                // Title
                Text(
                  'About Us',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                    shadows: [
                      Shadow(
                        color: Colors.grey.withOpacity(0.3),
                        offset: const Offset(2, 2),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                // Description
                _buildSection(
                  'Our Mission',
                  'Welcome to our innovative app! We are a team of dedicated developers who are passionate about creating seamless, intuitive, and user-friendly digital experiences. Our mission is to simplify your daily tasks, connect you with what matters most, and inspire you to explore new horizons.',
                ),
                const SizedBox(height: 20),
                _buildSection(
                  'Our Philosophy',
                  'Our app is built with cutting-edge technology and a user-centric design philosophy. We believe in technology that is accessible, intuitive, and empowering. Every aspect of our app, from its sleek interface to its robust features, is carefully crafted to provide you with a platform that enhances your life.',
                ),
                const SizedBox(height: 20),
                _buildSection(
                  'Our Commitment',
                  'We are committed to continuous improvement and are always looking for ways to enhance our app based on your feedback and the latest industry trends. Thank you for joining our community, and we are excited to be a part of your digital journey.',
                ),
                const SizedBox(height: 40),
                // Contact Section
                _buildSection(
                  'Contact Us',
                  '',
                ),
                ListTile(
                  leading: const Icon(Icons.email, color: Colors.blue),
                  title: Text(
                    'Email: support@myapp.com',
                    style: TextStyle(fontSize: 16, color: Colors.grey[800]),
                  ),
                  onTap: () => {},
                ),
                ListTile(
                  leading: const Icon(Icons.phone, color: Colors.green),
                  title: Text(
                    'Phone: +1-555-123-4567',
                    style: TextStyle(fontSize: 16, color: Colors.grey[800]),
                  ),
                  onTap: () => {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSection(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title.isNotEmpty)
          Text(
            title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        const SizedBox(height: 8),
        Text(
          content,
          textAlign: TextAlign.justify,
          style: const TextStyle(fontSize: 16, height: 1.5),
        ),
      ],
    );
  }
}