import 'package:flutter/material.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Campus Connect Feeder'),
      ),
      body: const Center(
        child: Text('Feed'),
      ),  
      bottomNavigationBar: BottomNavigationBar(
        items: [],
      ),
    );
  }
}