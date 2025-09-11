import 'package:flutter/material.dart';

class InternetExceptionWidget extends StatelessWidget {
  final VoidCallback onPress;
  const InternetExceptionWidget({super.key, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.sizeOf(context).height * 15),
          const Icon(Icons.cloud_off, color: Colors.red, size: 50),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                "We are unable to show results. Please check your internet connection",
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: ElevatedButton(onPressed: onPress, child: Text("Retry")),
          ),
        ],
      ),
    );
  }
}
