import 'package:flutter/material.dart';

class StarredTaskScreen extends StatelessWidget {
  const StarredTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(left: 76, bottom: 16),
                child: Image.asset(
                  'lib/assets/images/starred_task.png',
                  scale: 2.5,
                ),
              )),
              Text(
                'No starred tasks',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 16),
                child: Text(
                    'Mark important tasks with star so that you can easily find them here',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
