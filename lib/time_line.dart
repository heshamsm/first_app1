import 'package:flutter/material.dart';

class PostModel {
  final String? photoProfile;
  final String? nameProfile;
  final String? posts;
  PostModel({
    @required this.photoProfile,
    @required this.nameProfile,
    @required this.posts,
  });
}

class TimeLine extends StatefulWidget {
  const TimeLine({Key? key}) : super(key: key);

  @override
  _TimeLineState createState() => _TimeLineState();
}

class _TimeLineState extends State<TimeLine> {
  int _counter = 0;
  bool _isLiked = false;
  bool _isComment = false;
  bool _isShare = false;

  List<PostModel> post = [
    PostModel(
        photoProfile: 'assets/images/amin.jpg',
        nameProfile: 'Amin Mohamed',
        posts: 'Hdbukhdkjicovjadoijcpoakdpockpadokcdkdd'),
    PostModel(
        photoProfile: 'assets/images/attris.png',
        nameProfile: 'Haitham Atrees',
        posts: 'Hdbukhdkjicovjadoijcpoakdpockpadokcdkdd'),
    PostModel(
        photoProfile: 'assets/images/elgrem.JPG',
        nameProfile: 'Mostafa Abdul ghany',
        posts: 'Hdbukhdkjicovjadoijcpoakdpockpadokcdkdd'),
    PostModel(
        photoProfile: 'assets/images/fahd.png',
        nameProfile: 'Fahd Ibrahim',
        posts: 'Hdbukhdkjicovjadoijcpoakdpockpadokcdkdd'),
    PostModel(
        photoProfile: 'assets/images/karim.jpg',
        nameProfile: 'Karim Hamed',
        posts: 'Hdbukhdkjicovjadoijcpoakdpockpadokcdkdd'),
    PostModel(
        photoProfile: 'assets/images/rabee.jpg',
        nameProfile: 'Haitham Rabee',
        posts: 'Hdbukhdkjicovjadoijcpoakdpockpadokcdkdd'),
    PostModel(
        photoProfile: 'assets/images/amin.jpg',
        nameProfile: 'Amin Mohamed',
        posts: 'Hdbukhdkjicovjadoijcpoakdpockpadokcdkdd'),
    PostModel(
        photoProfile: 'assets/images/attris.png',
        nameProfile: 'Haitham Atrees',
        posts: 'Hdbukhdkjicovjadoijcpoakdpockpadokcdkdd'),
    PostModel(
        photoProfile: 'assets/images/elgrem.JPG',
        nameProfile: 'Mostafa Abdul ghany',
        posts: 'Hdbukhdkjicovjadoijcpoakdpockpadokcdkdd'),
    PostModel(
        photoProfile: 'assets/images/fahd.png',
        nameProfile: 'Fahd Ibrahim',
        posts: 'Hdbukhdkjicovjadoijcpoakdpockpadokcdkdd'),
    PostModel(
        photoProfile: 'assets/images/karim.jpg',
        nameProfile: 'Karim Hamed',
        posts: 'Hdbukhdkjicovjadoijcpoakdpockpadokcdkdd'),
    PostModel(
        photoProfile: 'assets/images/rabee.jpg',
        nameProfile: 'Haitham Rabee',
        posts: 'Hdbukhdkjicovjadoijcpoakdpockpadokcdkdd'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Facebook'),
        elevation: 0.0,
      ),
      body: ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) => buildPostScreen(post[index]),
        separatorBuilder: (context, index) => const Divider(
          height: 0.0,
          thickness: 7,
        ),
        itemCount: post.length,
      ),
    );
  }

  Widget buildPostScreen(PostModel post) => Container(
        width: 60.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(
                  '${post.photoProfile}',
                ),
              ),
              title: Text(
                '${post.nameProfile}',
                style: const TextStyle(
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
            Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 20.0,
                bottom: 5.0,
              ),
              child: Text(
                '${post.posts}',
                maxLines: 9,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            // Image.asset('assets/images/w.jpeg'),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: _isLiked
                        ? Colors.blueAccent
                        : const Color.fromRGBO(0, 0, 1, 0),
                    child: Icon(
                      Icons.thumb_up,
                      color: _isLiked
                          ? Colors.white
                          : const Color.fromRGBO(0, 0, 1, 0),
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
