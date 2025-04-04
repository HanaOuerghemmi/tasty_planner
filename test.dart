import 'package:flutter/material.dart';
import 'dart:async';

class PhoneNumberScreen extends StatelessWidget {
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Enter Phone Number")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(labelText: "Phone Number"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OtpScreen(),
                  ),
                );
              },
              child: Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _otpController = TextEditingController();
  int _counter = 60;
  int _otpAttempts = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    setState(() => _counter = 60);
    _timer?.cancel();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_counter > 0) {
        setState(() => _counter--);
      } else {
        _timer?.cancel();
      }
    });
  }

  void _requestNewOtp() {
    if (_otpAttempts < 2) {
      setState(() => _otpAttempts++);
      _startTimer();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Maximum OTP requests reached. Try again in 3 hours.")),
      );
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Enter OTP")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _otpController,
              keyboardType: TextInputType.number,
              maxLength: 4,
              decoration: InputDecoration(labelText: "Enter 4-digit OTP"),
            ),
            SizedBox(height: 20),
            Text("Time remaining: $_counter seconds"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print("OTP Entered: \${_otpController.text}");
              },
              child: Text("Verify"),
            ),
            SizedBox(height: 20),
            if (_counter == 0)
              ElevatedButton(
                onPressed: _requestNewOtp,
                child: Text("Resend OTP"),
              ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PhoneNumberScreen(),
  ));
}
