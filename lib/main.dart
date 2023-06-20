import 'package:flutter/material.dart';
import 'package:profile/profile.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Myhome(),
    );
  }
}
class Myhome extends StatefulWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  TextEditingController _EmailController = TextEditingController();
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _PasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log In'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _EmailController,
              decoration: InputDecoration(
                label: Text('Enter your Email'),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _userNameController,
              decoration: InputDecoration(
                label: Text('Enter your User Name'),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _PasswordController,
              decoration: InputDecoration(
                label:const Text('Enter your User Password'),
                border: OutlineInputBorder(),
              ),
            ),
          ),

          SizedBox(
            height: 15,
          ),
          ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>profile(_EmailController.text,_PasswordController.text,_userNameController.text)));}, child: Text('Register')),
        ],
      ),
    );
  }
}

