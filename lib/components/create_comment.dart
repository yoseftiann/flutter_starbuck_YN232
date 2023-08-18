import 'package:flutter/material.dart';
import 'package:qualif_yn232/models/comment.dart';
import 'package:qualif_yn232/utils/gap.dart';
import 'package:qualif_yn232/utils/gap_width.dart';

class CreateComment extends StatefulWidget {
  final Comment comment;
  CreateComment({Key? key, required this.comment});

  @override
  State<CreateComment> createState() => _CreateCommentState();
}

class _CreateCommentState extends State<CreateComment> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Gambar
          Container(
            alignment: Alignment.topCenter,
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(widget.comment.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
    
          //isi text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Stack(
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(15)),
                          color: Colors.grey[200]
                        ),
                      ),
    
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.comment.username,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),
                            ),
    
                            Text(widget.comment.description,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 100,
                            )
                          ],
                        )
                      )
                    ]
                  ),
                ),
                Gap(3),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 15,
                      height: 15,
                      decoration: const BoxDecoration(
                        shape : BoxShape.circle,
                        // color: Colors.red
                      ),
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 15,
                      ),
                    ),
    
                    GapHorizontal(5),
                    Text("${widget.comment.numberOfLikes} likes",
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400
                      ),
                    ),
    
    
                    GapHorizontal(20),
                    Container(
                      width: 15,
                      height: 15,
                      decoration: const BoxDecoration(
                        shape : BoxShape.circle,
                        // color: Colors.red
                      ),
                      child: const Icon(
                        Icons.reply_all_rounded,
                        color: Colors.blue,
                        size: 15,
                      ),
                    ),
    
                    GapHorizontal(5),
                    const Text("Reply",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                  ]
                )
              ]
            ),
          )
        ],
      ),
      Gap(15)
      ]
    );
  }
}