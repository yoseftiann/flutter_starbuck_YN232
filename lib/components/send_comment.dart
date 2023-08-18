import 'package:flutter/material.dart';
import 'package:qualif_yn232/utils/gap.dart';
import 'package:qualif_yn232/utils/gap_width.dart';

class SendComment extends StatefulWidget {
  Function(String) onSend;
  SendComment({Key?key, required this.onSend});

  @override
  State<SendComment> createState() => _SendCommentState();
}

class _SendCommentState extends State<SendComment> {

  //Variables
  TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey.withOpacity(0.2)
      ),
      child: Row(
        children: [
          GapHorizontal(15),
          //Child1
          const Icon(
            Icons.keyboard_alt_rounded,
            size: 19,
          ),

          //Child2
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextField(
                controller: _textController,
                style: const TextStyle(
                  fontSize: 19
                ),
                decoration: const InputDecoration.collapsed(
                  hintText: 'Message',
                  hintStyle: TextStyle(
                    fontSize: 19
                  )
                ),
              ),
            ),
          ),

          //Child3
          GestureDetector(
            onTap: () {
              widget.onSend(_textController.text);
              _textController.clear();
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: Icon(
              Icons.send_rounded
            ),
          ),

          GapHorizontal(5),
        ],
      ),
    );
  }
}