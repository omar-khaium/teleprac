import 'package:flutter/material.dart';
import 'package:teleprac/model/doctors/session_model.dart'; // Import your session model here

class AvailabilityScreen extends StatelessWidget {
  final List<TokenDetailsModel> tokenDetails; // Assuming you pass token details to this screen

  const AvailabilityScreen({Key? key, required this.tokenDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Availability'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: tokenDetails.length,
          itemBuilder: (context, index) {
            final token = tokenDetails[index];
            bool available = token.tokenType == '1'; // Assuming '1' indicates availability

            return ListTile(
              title: Text(
                token.tokenStartTime ?? 'No time specified',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: available ? Colors.green : Colors.red, // Color based on availability
                ),
              ),
              subtitle: Text(available ? 'Available' : 'Not Available'),
              // You can add more details or actions here based on your requirements
            );
          },
        ),
      ),
    );
  }
}
