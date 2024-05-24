import 'package:flutter/material.dart';
import 'contact.dart';
// Import for icons

// Assuming you have a contact.dart file defining the Contact class

class ContactsPage extends StatelessWidget {
  final List<String> contacts; // List of contacts to display

  ContactsPage({required this.contacts});
  final List<Widget> _navBarIcons = [
    Image.asset(
      'assets/images/chat_icon.png', // Replace with your chat icon
      width: 30, // Adjust icon size as needed
      height: 30,
    ),
    Image.asset(
      'assets/images/contact_icon.png', // Replace with your contacts icon
      width: 30, // Adjust icon size as needed
      height: 30,
    ),
    Image.asset(
      'assets/images/settings_icon.png', // Replace with your settings icon
      width: 30, // Adjust icon size as needed
      height: 30,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contacts',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              // Handle add contact button press (e.g., navigate to add contact page)
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          String contact = contacts[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/image/img.png'), // Add default avatar image asset path
              backgroundColor: Colors.grey[200],
              // contact.avatarUrl != null
              //                   ? NetworkImage(contact.avatarUrl!)
              //                   :
            ),
            title: Text(contact),
          );
        },
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.contacts),
          label: 'Contacts',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Chats',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
      currentIndex: 0, // Set the default selected index (optional)
      selectedItemColor: Colors.blue,
      onTap: (index) {
        // Handle navigation bar item tap (e.g., switch between pages)
      },
    );
  }
}
