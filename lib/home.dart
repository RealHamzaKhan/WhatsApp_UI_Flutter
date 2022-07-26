import 'dart:ffi';
import 'package:dotted_border/dotted_border.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          actions: [
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert_outlined),
              itemBuilder: (context) => const [
                PopupMenuItem(
                  value: '1',
                  child: Text('New Group'),
                ),
                PopupMenuItem(
                  value: '2',
                  child: Text('New broadcast'),
                ),
                PopupMenuItem(
                  value: '3',
                  child: Text('Linked devices'),
                ),
                PopupMenuItem(
                  value: '4',
                  child: Text('Starred messages'),
                ),
                PopupMenuItem(
                  value: '5',
                  child: Text('Settings'),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
          ],
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Icon(Icons.camera_alt),
              Text('Chats'),
              Text('Status'),
              Text('Calls'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Text(''),
            ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2022/06/27/02/22/woman-7286576_960_720.jpg'),
                    ),
                    title: Text('Hamza'),
                    subtitle: Text('How are you?'),
                    trailing: Text('12:45'),
                  );
                }),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  subtitle: Text('Yesterday,8:34 pm'),
                  title: Text('My Status'),
                  leading: DottedBorder(
                    color: Colors.green,
                    borderType: BorderType.Circle,
                    dashPattern: [50, 3],
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2022/06/27/02/22/woman-7286576_960_720.jpg'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Recent updates',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return ListTile(
                    subtitle: Text('Today, 11:31'),
                    title: Text('Ana'),
                    trailing: index / 2 == 0
                        ? Icon(Icons.call, color: Colors.green)
                        : Icon(Icons.video_call_rounded, color: Colors.green),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2022/06/27/02/22/woman-7286576_960_720.jpg'),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
