import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    FindJobs(),
    MyJobs(),
    Mentoring(),
    Profile(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Find Jobs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'My Jobs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Mentoring',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.purple,
        onTap: onTabTapped,
      ),
    );
  }
}

class FindJobs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Land jobs with priority slot & 14-day response guarantee'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            TextField(
              decoration: InputDecoration(
                labelText: 'Filter',
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Company'),
                Text('Location'),
                Text('Employment Type'),
              ],
            ),
            SizedBox(height: 16),
            Card(
              child: ListTile(
                leading: Icon(Icons.business),
                title: Text('ENSEVAL'),
                subtitle: Text('Cirebon'),
                trailing: Text('On-Site'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.data_exploration),
                title: Text('AEON'),
                subtitle: Text('Jakarta'),
                trailing: Text('Full Time'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.data_exploration),
                title: Text('AEON'),
                subtitle: Text('Jakarta'),
                trailing: Text('Full Time'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.data_exploration),
                title: Text('AEON'),
                subtitle: Text('Jakarta'),
                trailing: Text('Full Time'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.data_exploration),
                title: Text('AEON'),
                subtitle: Text('Jakarta'),
                trailing: Text('Full Time'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.data_exploration),
                title: Text('AEON'),
                subtitle: Text('Jakarta'),
                trailing: Text('Full Time'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyJobs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('My Jobs'),
    );
  }
}

class Mentoring extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Mentoring'),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Profile'),
    );
  }
}
