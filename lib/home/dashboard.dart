import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('cropsight'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/icon.png',
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome to cropsight',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'Identify different types of Basmati rice with ease using Machine Learning technology.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () async {
                String? filePath = await FilePicker.platform
                    .pickFiles(
                      type: FileType.image,
                      allowCompression: true,
                    )
                    .then((value) => value?.files.single.path);

                if (filePath != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            IdentificationScreen(imagePath: filePath)),
                  );
                }
              },
              child: const Text('Identify Now'),
            ),
          ],
        ),
      ),
    );
  }
}

class IdentificationScreen extends StatelessWidget {
  final String imagePath;

  const IdentificationScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Identification Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.file(
              File(imagePath),
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 20),
            const Text(
              'Identification Result',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
