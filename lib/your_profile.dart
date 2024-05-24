import 'package:flutter/material.dart';
import 'contacts_page.dart';
import 'contact.dart';

// has to be fetched from gmail
final List<String> myContacts = [
  'ok', 'hi'
  // Contact(
  //   name: 'John Doe',
  //   phoneNumber: '+1234567890',
  //   email: 'john.doe@example.com',
  //   avatarUrl: 'https://example.com/profile_pics/john_doe.jpg', // Replace with a real image URL if needed
  // ),
  // Contact(
  //   name: 'Jane Smith',
  //   phoneNumber: '+9876543210',
  //   email: 'jane.smith@example.com',
  //   avatarUrl: 'https://example.com/profile_pics/jane_smith.jpg', // Replace with a real image URL if needed
  // ),
  // Contact(
  //   name: 'Alice Johnson',
  //   phoneNumber: '+5678901234',
  //   email: 'alice.johnson@example.com',
  //   avatarUrl: 'https://example.com/profile_pics/alice_johnson.jpg', // Replace with a real image URL if needed
  // ),
  // ... Add more contacts here
];

class YourProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Profile',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => Navigator.pop(context), // Navigate back to previous screen
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/images/prf_pic.png'),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'First Name',
                border: OutlineInputBorder(),
              ),
            ),
            InkWell(
              onTap: () {
                // Navigate to ContactsPage, passing the contacts list
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactsPage(contacts: myContacts)),
                );
              },
              child: Container(
                height: 50, // Adjust height as needed
                width: 100, // Adjust width as needed
                decoration: BoxDecoration(
                  image: DecorationImage(
                    //navigate to contacts list
                    image: AssetImage('assets/images/save_btn.png'),
                    fit: BoxFit.cover, // Fills the container with the image
                  ),
                ),
              ),
            ),
            SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }
}
