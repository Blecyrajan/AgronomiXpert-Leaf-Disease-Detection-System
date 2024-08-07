import 'package:flutter/material.dart';
import 'package:cropsight/constants.dart';
import 'package:cropsight/home_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
class ServerIPInputPage extends StatefulWidget {
  const ServerIPInputPage({super.key});

  @override
  _ServerIPInputPageState createState() => _ServerIPInputPageState();
}

class _ServerIPInputPageState extends State<ServerIPInputPage> {
  late TextEditingController _ipController;
  bool _isSubmitted = false;

  @override
  void initState() {
    super.initState();
    _ipController = TextEditingController();
  }

  @override
  void dispose() {
    _ipController.dispose();
    super.dispose();
  }

  void _submitIP() {
    String ipAddress = _ipController.text.trim();
    if (ipAddress.isNotEmpty) {
      serverIp = ipAddress;
      setState(() {
        _isSubmitted = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return _isSubmitted
        ? const HomePage()
        : Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text('Agronomi Xpert'),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset('assets/images/icon.png',
                        fit: BoxFit.contain, height: 250),
                    const SizedBox(height: 40),
                    const Text(
                      'Please enter the IP address of the server to continue.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: _ipController,
                      decoration: const InputDecoration(
                        labelText: 'Server IP Address',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _submitIP,
                      child: const Text('Submit'),
                    ),
                    if (_isSubmitted)
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          'IP Address Submitted: ${_ipController.text}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          );
  }
}
