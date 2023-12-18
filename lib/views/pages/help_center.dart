import 'package:app/utils/color_lib.dart';
import 'package:flutter/material.dart';

class ChatCenter extends StatelessWidget {
  const ChatCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorLib.kPrimary,
        title: Row(
          children: [
            Icon(Icons.help_outline),
            SizedBox(
              width: 2,
            ),
            Text('Help Centre'),
          ],
        ),
      ),
      body: Column(
        children: [
          // Chat messages container
          Expanded(
            child: Container(
              color: Colors.grey[200],
              child: ListView(
                children: [
                  // Example message widgets
                  _buildMessage('Hello!', true),
                  _buildMessage('Hi there!', false),
                  _buildMessage('How are you?', true),
                  // Add more message widgets as needed
                ],
              ),
            ),
          ),

          // Input field for sending messages
          _buildInputField(),
        ],
      ),
    );
  }

  // Helper method to build a message widget
  Widget _buildMessage(String message, bool isMe) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(
            child: Image.asset("assets/images/bot.png"),
          ),
          Container(
            alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
            margin: EdgeInsets.all(8.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: isMe ? ColorLib.kPrimary : ColorLib.kPrimary,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              message,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build the input field
  Widget _buildInputField() {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Type your message...',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(width: 8.0),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              // Implement sending message functionality
            },
          ),
        ],
      ),
    );
  }
}
