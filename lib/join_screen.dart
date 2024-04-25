import 'package:flutter/material.dart';
import 'package:fullter_webrtc_videocall_antor/snack_msg.dart';

import 'main.dart';

class JoinMeetingScreen extends StatefulWidget {
  @override
  _JoinMeetingScreenState createState() => _JoinMeetingScreenState();
}

class _JoinMeetingScreenState extends State<JoinMeetingScreen> {
  final TextEditingController _roomIdController = TextEditingController();
  bool _isCameraOn = true;
  bool _isMicOn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Join Meeting'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _roomIdController,
              decoration: InputDecoration(
                labelText: 'Enter Room ID',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final roomId = _roomIdController.text;
                if (roomId.isNotEmpty) {
                  // Navigate to the meeting screen with the provided room ID and camera/mic settings
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyHomePage(roomId: roomId),
                    ),
                  ).then((value) {
                    setState(() {
                      // Update the camera/mic settings based on the result from the MeetingScreen
                      _isCameraOn = value['isCameraOn'] ?? _isCameraOn;
                      _isMicOn = value['isMicOn'] ?? _isMicOn;
                    });
                  });
                } else {
                  // Show error message if room ID is empty
                  SnackMsg.showError(context, 'Please enter a room ID');
                }
              },
              child: Text('Join Meeting'),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Camera:'),
                Switch(
                  value: _isCameraOn,
                  onChanged: (value) {
                    setState(() {
                      _isCameraOn = value;
                    });
                  },
                ),
                SizedBox(width: 20),
                Text('Mic:'),
                Switch(
                  value: _isMicOn,
                  onChanged: (value) {
                    setState(() {
                      _isMicOn = value;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
