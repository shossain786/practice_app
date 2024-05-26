import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: NotchedBar(),
  ));
}

class NotchedBar extends StatelessWidget {
  const NotchedBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notched App Bar'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
        ),
        child: const Icon(Icons.brightness_4_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home),
            ),
            IconButton(
              icon: const Icon(Icons.local_taxi),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.train),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.flight),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
