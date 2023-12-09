import 'package:flutter/material.dart';
import 'package:google_task_ui/screens/my_tasks_screen/my_tasks_screen.dart';
import 'package:google_task_ui/screens/new_list_screen/new_list_screen.dart';
import 'package:google_task_ui/screens/starred_task_screen/starred_task_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int numberOfTabs = 3;

    return DefaultTabController(
      length: numberOfTabs,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            'Tasks',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          actions: [
            CircleAvatar(
              child: Image.asset('lib/assets/images/task.png'),
            ),
            SizedBox(width: 16.0),
          ],
          bottom: TabBar(
            automaticIndicatorColorAdjustment: true,
            padding: EdgeInsets.only(right: 100),
            indicator: UnderlineTabIndicator(),
            indicatorWeight: 4.0 / numberOfTabs,
            isScrollable: true,
            labelPadding: EdgeInsets.symmetric(horizontal: 12.0),
            tabs: [
              Tab(
                icon: Icon(Icons.star),
              ),
              Tab(text: 'My tasks'),
              Tab(
                child: Row(
                  children: [Icon(Icons.add), Text('New list')],
                ),
              ),
            ],
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white54,
            dividerColor: Colors.white,
            labelStyle: TextStyle(fontSize: 16.0),
          ),
        ),
        body: TabBarView(
          children: [
            StarredTaskScreen(),
            MyTasksScreen(),
            NewListScreen(),
          ],
        ),
        bottomNavigationBar: Container(
          width: double.infinity,
          height: 90,
          color: Theme.of(context).primaryColor,
          child: Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.list_alt,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.mobiledata_off_rounded,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.more_horiz_rounded,
                    ),
                  ],
                ),
                SizedBox(
                  width: 160,
                ),
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.blue.shade700,
                      ),
                      child: FloatingActionButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        backgroundColor: Colors.blue.shade700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
