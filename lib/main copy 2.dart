import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'dart:io';

void addNumbers(double num1, double num2) {
  print(num1 + num2);
}

/*void main() {
  return runApp(MyApp());
}
*/
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Future<void> listDir() async {
    //var systemTempDir = new Directory('');
    var systemTempDir = Directory.fromUri(uri)

    systemTempDir
        .list(recursive: true, followLinks: false)
        .listen((FileSystemEntity entity) {
      print(entity.path);
    });
  }
  /*final myDir = new Directory('/data/data/com.whatsapp/files/');
    if (await Permission.contacts.request().isGranted) {
      // Either the permission was already granted before or the user just granted it.
      myDir.exists().then((isThere) {
        isThere ? print('exists') : print('non-existent');
      });
    }*/

  @override
  build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My First App')),
      body: Column(
        children: [
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: listDir,
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: null,
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: null,
          ),
        ],
      ),
    ));
  }
}
