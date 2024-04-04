import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TextFieldDemoPage(),
    );
  }
}

// A StatefulWidget always has two parts (two classes), as you can see below. Names are
// important (they need to match).
class TextFieldDemoPage extends StatefulWidget {
  const TextFieldDemoPage({Key? key}) : super(key: key);

  @override
  _TextFieldDemoPageState createState() => _TextFieldDemoPageState();
}

class _TextFieldDemoPageState extends State<TextFieldDemoPage> {
  // State. This is a variable that will change its value at different moments. In a
  // StatelessWidget all variables must be const or final (so, they are not that variable
  // after all). In a StatefulWidget we can have real variables. We call them state.
  var whatUserSays = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField Demo'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            decoration: const InputDecoration(
                hintText: "Type here and check debug console..."),
            // Save value into state everytime it changes. This way our variable always
            // contains what user has entered and we can use this value to do whatever we
            // need with it. There are other ways to achieve the same, of course.
            onChanged: (value) {
              whatUserSays = value;
              // ignore: avoid_print
              print(whatUserSays);
            },
          ),
        ),
      ),
    );
  }
}
