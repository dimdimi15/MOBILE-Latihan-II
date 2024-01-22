import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Land jobs with priority slot & 14-day response guarantee'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
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
              //Tambahkan card lainnya sesuai kebutuhan
            ],
          ),
        ),
      ),
    );
  }
}