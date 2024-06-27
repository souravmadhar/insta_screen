//import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_3/insta_post_model.dart';

import 'singlepostscreen.dart';

class InstaScreen extends StatefulWidget {
  const InstaScreen({super.key});

  @override
  State<InstaScreen> createState() => _instascreenState();
}

class _instascreenState extends State<InstaScreen> {
  var instaPostArray = <InstaPostModel>[
    InstaPostModel(
      image: "assets/images/image.jpeg",
      content: "First",
      likes: 20,
    ),
  ];
  List<InstaPostModel> instaPostModel = [InstaPostModel()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("USER ID"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_box_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            //crossAxisAlignment: CrossAxisAlignment.start,
            //  mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.065,
                      backgroundImage: NetworkImage(
                          "https://www.thephotoargus.com/wp-content/uploads/2017/07/earth-1.jpg")),
                  Padding(
                    padding: EdgeInsets.only(left: 100),
                    child: TextButton(onPressed: () {}, child: Text("post")),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child:
                        TextButton(onPressed: () {}, child: Text("follower")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child:
                        TextButton(onPressed: () {}, child: Text("following")),
                  ),
                ],
              ),
              Row(
                children: [
                  Text("user name"),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                OutlinedButton(onPressed: () {}, child: Text("Edit profile")),
                OutlinedButton(onPressed: () {}, child: Text("Share profile")),
                OutlinedButton(onPressed: () {}, child: Icon(Icons.person_add)),
              ]),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
                iconSize: 56,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
                    child: Text("New"),
                  )
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.apps),
                iconSize: 35,
              ),
              SizedBox(
                width: 150,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.play_arrow),
                iconSize: 35,
              ),
              SizedBox(
                width: 150,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.account_box),
                iconSize: 35,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  itemCount: instaPostModel.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SinglePostScreen(
                                //  instaPostObject: instaPostModel[index]
                                )));
                      },
                      child: Container(
                        color: Color.fromARGB(255, 132, 12, 12),
                        alignment: Alignment.center,
                        child: Image.network(
                          instaPostModel[index].image ??
                              "https://www.thephotoargus.com/wp-content/uploads/2017/07/earth-1.jpg",
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    );
                  })
            ],
          ),
        ));
  }
}
