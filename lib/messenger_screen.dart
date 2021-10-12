import 'package:flutter/material.dart';

class MessengerModel {
  final String? photo;
  final String? name;
  MessengerModel({
    @required this.photo,
    @required this.name,
  });
}

class MessengerScreen extends StatefulWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  _MessengerScreen createState() => _MessengerScreen();
}

class _MessengerScreen extends State<MessengerScreen> {
  List<MessengerModel> messenger = [
    MessengerModel(
      photo: 'assets/images/amin.jpg',
      name: 'Amin Mohamed',
    ),
    MessengerModel(
      photo: 'assets/images/attris.png',
      name: 'Haitham Atrees',
    ),
    MessengerModel(
      photo: 'assets/images/elgrem.JPG',
      name: 'Mostafa Abdul ghany',
    ),
    MessengerModel(
      photo: 'assets/images/fahd.png',
      name: 'Fahd Ibrahim',
    ),
    MessengerModel(
      photo: 'assets/images/karim.jpg',
      name: 'Karim Hamed',
    ),
    MessengerModel(
      photo: 'assets/images/rabee.jpg',
      name: 'Haitham Rabee',
    ),
    MessengerModel(
      photo: 'assets/images/amin.jpg',
      name: 'Amin Mohamed',
    ),
    MessengerModel(
      photo: 'assets/images/attris.png',
      name: 'Haitham Atrees',
    ),
    MessengerModel(
      photo: 'assets/images/elgrem.JPG',
      name: 'Mostafa Abdul ghany',
    ),
    MessengerModel(
      photo: 'assets/images/fahd.png',
      name: 'Fahd Ibrahim',
    ),
    MessengerModel(
      photo: 'assets/images/karim.jpg',
      name: 'Karim Hamed',
    ),
    MessengerModel(
      photo: 'assets/images/rabee.jpg',
      name: 'Haitham Rabee',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: AssetImage(
                'assets/images/hesham.JPG',
              ),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.camera_alt,
                size: 16.0,
                color: Colors.white,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                size: 16.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey[300],
                ),
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text('Search'),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      buildStoryItem(messenger[index]),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 20.0,
                  ),
                  itemCount: messenger.length,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) =>
                    buildChatItem(messenger[index]),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20.0,
                ),
                itemCount: messenger.length,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildChatItem(MessengerModel messenger) => Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: AssetImage("${messenger.photo}"),
          ),
          const Padding(
            padding: EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 3.0,
            ),
            child: CircleAvatar(
              radius: 7.0,
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
      const SizedBox(
        width: 20.0,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${messenger.name}',
              style: const TextStyle(
                  fontSize: 16.0, fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'hello my name is ${messenger.name}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  child: Container(
                    width: 7.0,
                    height: 7.0,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                const Text('02:00 pm'),
              ],
            ),
          ],
        ),
      ),
    ],
  );
  Widget buildStoryItem(MessengerModel messenger) => Container(
    width: 60.0,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage(
                '${messenger.photo}',
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.only(
                bottom: 3.0,
                end: 3.0,
              ),
              child: CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 6.0,
        ),
        Text(
          '${messenger.name}',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );
}
