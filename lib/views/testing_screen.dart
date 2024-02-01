import 'package:flutter/material.dart';


class TestingScreen extends StatelessWidget {
  const TestingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Circular Container Example'),
        ),
        body: const Center(
          child: HorizontalCircularContainer(),
        ),
      ),
    );
  }
}

class HorizontalCircularContainer extends StatelessWidget {
  const HorizontalCircularContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircularContainer(),
          );
        },
      ),
    );
  }
}

class CircularContainer extends StatelessWidget {
  const CircularContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: const BoxDecoration(
        color: Colors.blue, // Container color
        shape: BoxShape.circle,
      ),
      child: const Center(
        child: Text(
          'Circular',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
