import 'package:flutter/material.dart';
import 'package:qualif_yn232/components/create_comment.dart';
import 'package:qualif_yn232/components/send_comment.dart';
import 'package:qualif_yn232/models/comment.dart';
import 'package:qualif_yn232/utils/gap.dart';
import 'package:qualif_yn232/utils/gap_width.dart';

class ForumPage extends StatefulWidget {
  const ForumPage({super.key});

  @override
  State<ForumPage> createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage> {
  //Variables
  List<Comment> comments = [
    Comment(username: "BT23-2", description: "Great taste, very refreshing. Definitely my new favourite coffee", image: "assets/profil_picture.jpg", numberOfLikes: 232),
  ];

  String currenetUsername = "YN23-2";
  String currentImage = "assets/profil_picture.jpg";
  int currentLikes = 12;

  void addComment(String commentText){
    if(commentText.trim().isEmpty){
      return;
    }

    setState(() { 
      comments.add(Comment(username: currenetUsername, description: commentText, image: currentImage, numberOfLikes: currentLikes));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: 
            ListView.builder(
              itemCount: comments.length,
                itemBuilder: (context, index) {
                  return CreateComment(comment: comments[index]);
                },
              ),
            ),
            SendComment(onSend: addComment,),
          ],
        )
    );
  }
}

// ListView.builder(
//   itemCount: comments.length,
//   itemBuilder: (context, index) {
//     return CreateComment(comment: comments[index]);
//   },
// ),