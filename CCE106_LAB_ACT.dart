import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WaterTrackerScreen(),
    );
  }
}

class WaterTrackerScreen extends StatelessWidget {
  const WaterTrackerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F5F8), // Light grey/blue background
      appBar: AppBar(
        title: const Text(
          'Water Tracker',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF3B68CE), // Primary blue
        elevation: 0,
      ),
      // SingleChildScrollView prevents bottom overflow when resized/minimized
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              
              // Water Drop Icon
              const Icon(
                Icons.water_drop,
                size: 80,
                color: Color(0xFF3FA3FF),
              ),
              
              const SizedBox(height: 16),
              
              // Header Text
              const Text(
                'Stay Hydrated!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E293B),
                ),
              ),
              
              const SizedBox(height: 8),
              
              // Subtitle Text
              const Text(
                'Build a healthy daily habit',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF64748B),
                ),
              ),
              
              const SizedBox(height: 24),
              
              // Daily Water Goal Card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: const Column(
                  children: [
                    Text(
                      'Daily Water Goal',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF334155),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '8',
                      style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2563EB),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'glasses per day',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF64748B),
                      ),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 20),
              
              // Tip Container 1
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFDCEBFE),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: const Text(
                  'Drink water regularly',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1E40AF),
                  ),
                ),
              ),
              
              const SizedBox(height: 12),
              
              // Tip Container 2
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFDCEBFE),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: const Text(
                  'Bring your water bottle',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1E40AF),
                  ),
                ),
              ),
              
              // Fixed spacing instead of Spacer() to prevent layout crashes on scroll
              const SizedBox(height: 32),
              
              // Footer Text
              const Text(
                'Every glass counts!',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF64748B),
                ),
              ),
              
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}