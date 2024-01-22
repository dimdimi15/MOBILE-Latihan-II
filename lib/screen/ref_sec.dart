import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Judul'),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildContainer('All'),
                buildContainer('Finance & Accounting'),
                buildContainer('Data & Product'),
                buildContainer('Recruiting & People'),
                buildContainer('Business Dev & Sales'),
              ],
            ),
            SizedBox(height: 3.0), // Tambahkan jarak antar baris
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildContainer('IT & Engineering'),
                buildContainer('Design & Creative'),
                buildContainer('Admin & Ops'),
                buildContainer('Marketing & Social Me...'),
                buildContainer('Health & Science'),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Container buildContainer(String text) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 3.0, vertical: 3.0), // Tambahkan jarak 3 pixel
    padding: EdgeInsets.all(12.0),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Text(text),
  );
}
