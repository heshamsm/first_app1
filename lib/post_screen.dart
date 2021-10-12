import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  int _counter = 0;
  bool _isLiked = false;
  bool _isComment = false;
  bool _isShare = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: const CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                'https://scontent.fcai20-2.fna.fbcdn.net/v/t1.6435-9/90134599_1911462408985797_3283136888700928000_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=aCHyY9DIY6UAX-s8F-E&tn=D7u8aDl8g47DOU_L&_nc_ht=scontent.fcai20-2.fna&oh=6269aa8d7cb0a6991d3efaf4464b9757&oe=618B23A0',
              ),
            ),
            title: const Text(
              'التراس حاسبات ومعلومات',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Row(
              children: const [
                Text('16m'),
                SizedBox(
                  width: 2.0,
                ),
                Icon(
                  Icons.sports_basketball_outlined,
                  size: 14,
                ),
              ],
            ),
            trailing: const Icon(Icons.close),
          ),
          const Padding(
            padding: EdgeInsetsDirectional.only(
              start: 20.0,
              bottom: 5.0,
            ),
            child: Text('Linkedin🤡'),
          ),
          Image.asset('assets/images/w.jpeg'),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 10,
                  backgroundColor: _isLiked ? Colors.blueAccent : Colors.white,
                  child: const Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
                const SizedBox(
                  width: 2.0,
                ),
                // Text('${_isLiked ? _counter: ''}'),
                _isLiked ? Text(_counter.toString()) : const SizedBox(),
                const SizedBox(
                  width: 170.0,
                ),
                const Text('31 Comments'),
                const SizedBox(
                  width: 10.0,
                ),
                const Text('130 Shares'),
              ],
            ),
          ),
          const Divider(
            height: 0.0,
            thickness: 0,
            color: Colors.black,
            indent: 20,
            endIndent: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _isLiked = !_isLiked;
                      _isLiked ? _counter++ : _counter--;
                    });
                  },
                  icon: Icon(
                    _isLiked ? Icons.thumb_up : Icons.thumb_up_alt_outlined,
                    color: _isLiked ? Colors.blueAccent : Colors.grey,
                  ),
                ),
                const SizedBox(
                  width: 120.0,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _isComment = !_isComment;
                    });
                  },
                  icon: Icon(
                    Icons.comment,
                    color: _isComment ? Colors.blueAccent : Colors.grey,
                  ),
                ),
                const SizedBox(
                  width: 120.0,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _isShare = !_isShare;
                    });
                  },
                  icon: Icon(
                    Icons.share,
                    color: _isShare ? Colors.blueAccent : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
