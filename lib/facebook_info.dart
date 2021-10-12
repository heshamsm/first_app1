// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FacebookInfo extends StatelessWidget {
  const FacebookInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FaceBook(),
    );
  }
}

class FaceBook extends StatefulWidget {
  const FaceBook({Key? key}) : super(key: key);

  @override
  _FaceBookState createState() => _FaceBookState();
}

class _FaceBookState extends State<FaceBook> {
  bool _isLiked = false;
  bool _isFollow = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FaceBook'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/hs.jpg'),
            ),
            title: Text('Hesham Saad',
                style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('Flutter Developer'),
            trailing: IconButton(
              onPressed: () {
                setState(() {
                  _isLiked = !_isLiked;
                });
              },
              icon: Icon(
                _isLiked
                    ? Icons.thumb_up
                    : Icons.thumb_up_alt_outlined,
                color: _isLiked ? Colors.blueAccent : Colors.grey,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _isFollow = !_isFollow;
              });
            },
            child: Text(_isFollow? 'Follow' : 'unFollow'),
          ),
          // ListTile(
          //   leading: TextButton(
          //     onPressed: () {},
          //     child: Row(
          //       children: [
          //         Icon(Icons.check),
          //         Text('Follow'),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
