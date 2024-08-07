import 'dart:io';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class TomatoCommunityChatPage extends StatefulWidget {
  const TomatoCommunityChatPage({Key? key}) : super(key: key);

  @override
  _TomatoCommunityChatPageState createState() =>
      _TomatoCommunityChatPageState();
}

class _TomatoCommunityChatPageState extends State<TomatoCommunityChatPage> {
  late TextEditingController _messageController;
  late ScrollController _scrollController;
  late ImagePicker _imagePicker;

  @override
  void initState() {
    super.initState();
    _messageController = TextEditingController();
    _scrollController = ScrollController();
    _imagePicker = ImagePicker();
  }

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _sendMessage({String? imageUrl}) {
    String messageText = _messageController.text.trim();
    if (messageText.isNotEmpty || imageUrl != null) {
      FirebaseFirestore.instance.collection('communityChats').add({
        'text': messageText,
        'imageUrl': imageUrl,
        'uid': FirebaseAuth.instance.currentUser?.uid,
        'timestamp': DateTime.now(),
      });
      _messageController.clear();
      // Scroll to the bottom after sending a message
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  Future<void> _sendImage() async {
    final pickedFile =
        await _imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      String? imageUrl = await _uploadImage(File(pickedFile.path));
      _sendMessage(imageUrl: imageUrl);
    }
  }

  Future<String?> _uploadImage(File imageFile) async {
    try {
      // Upload image to Firebase Storage
      final storageRef = FirebaseStorage.instance
          .ref()
          .child('chat_images')
          .child('image_${DateTime.now().millisecondsSinceEpoch}');
      await storageRef.putFile(imageFile);
      String imageUrl = await storageRef.getDownloadURL();
      return imageUrl;
    } catch (e) {
      print("Error uploading image: $e");
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Agronomi Chat')),
      body: Column(
        children: [
          SizedBox(height: 50,),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20),
          //   child: Text(
          //     "Welcome to the Tomato Community Chat! Feel free to share your thoughts, ask questions, or discuss anything related to tomatoes.",
          //     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          //   ),
          // ),
          
          
          Expanded(
            child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('communityChats')
                  .orderBy('timestamp', descending: true)
                  .snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                  return const Center(child: Text("No messages yet"));
                }
                return ListView.builder(
                  controller: _scrollController,
                  reverse: true,
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (BuildContext context, int index) {
                    var message = snapshot.data!.docs[index];
                    var uid = FirebaseAuth.instance.currentUser?.uid;
                    bool isCurrentUser = message['uid'] == uid;

                    // Format timestamp
                    DateTime timestamp = message['timestamp'].toDate();
                    String formattedTime =
                        DateFormat('HH:mm').format(timestamp);

                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: isCurrentUser
                            ? MainAxisAlignment.end
                            : MainAxisAlignment.start,
                        children: [
                          Container(
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 0.7,
                            ),
                            decoration: BoxDecoration(
                              color: isCurrentUser
                                  ? Colors.pink
                                  : Colors.grey[300],
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 5.0,
                                  spreadRadius: 1.0,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            padding: const EdgeInsets.all(12.0),
                            margin: EdgeInsets.only(
                              left: isCurrentUser ? 50 : 0,
                              right: isCurrentUser ? 0 : 50,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (message['text'] != null)
                                  Text(
                                    message['text'],
                                    style: TextStyle(
                                      color: isCurrentUser
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                if (message['imageUrl'] != null)
                                  Image.network(
                                    message['imageUrl'],
                                    width: 200,
                                    height: 200,
                                  ),
                                const SizedBox(height: 4),
                                Text(
                                  formattedTime,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: isCurrentUser
                                        ? Colors.white.withOpacity(0.8)
                                        : Colors.black.withOpacity(0.8),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      hintText: 'Type your message...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    textInputAction: TextInputAction.send,
                    onSubmitted: (_) => _sendMessage(),
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: _sendMessage,
                  icon: const Icon(Icons.send),
                  color: Theme.of(context).primaryColor,
                ),
                IconButton(
                  onPressed: _sendImage,
                  icon: const Icon(Icons.image),
                  color: Theme.of(context).primaryColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
