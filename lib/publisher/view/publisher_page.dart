import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PublisherPage extends StatelessWidget {
  const PublisherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Publisher Home')),
      body: Column(
        children: [
          TextButton(
            child: const Text('Publisher Info'),
            onPressed: () {
              context.goNamed('publisherInfo');
            },
          ),
        ],
      ),
    );
  }
}
