import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My first Flutter App!"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            String name = 'Emre';
            String greeting = 'Hey there';
            String message = '$greeting, $name!';

            if (name == 'Alper') {
              message = 'Oh, hey boss!';
            } else {
              message = '$greeting, $name!';
            }

            var alert = AlertDialog(
              title: Text("Greeting"),
              content: Text(message),
            );
            showDialog(
                context: context, builder: (BuildContext context) => alert);
          },
          child: Text("Body Widget"),
        ),
      ),
    );
  }
}
