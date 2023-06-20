import 'package:flutter/material.dart';
class profile extends StatelessWidget {
  final String data;
  final String data1;
  final String data2;

  profile(this.data,this.data1,this.data2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile page'),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text(data2),
            subtitle: Text(data),
            trailing: IconButton(onPressed: (){showDialog(context: context,
                builder: (context){
              return AlertDialog(
                title: Text('Your password:'),

                content: Text(data1),
                actions: [
                  TextButton(onPressed: (){Navigator.pop(context);}, child: Text('Close'))
                ],
              );
                });},icon: Icon(Icons.password),),
          ),
        ],

      ),
    );
  }
}
