import 'package:flutter/material.dart';

class NewListScreen extends StatelessWidget {
  const NewListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.cancel_outlined,
        ),
        actions: [
          Center(
              child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              'Done',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.grey.shade400),
            ),
          ))
        ],
        title: Text(
          'Create new list',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: Expanded(
                child: Divider(
                  color: Colors.white,
                  height: 10,
                  thickness: 1,
                ),
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(hintText: '    Enter list tile'),
          ),
        ],
      ),
    );
  }
}
