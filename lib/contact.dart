class Contact {
  final String name;
  final String? phoneNumber;
  final String? email;
  final String? avatarUrl; // URL for the contact's avatar image

  Contact({
    required this.name,
    this.phoneNumber,
    this.email,
    this.avatarUrl,
  });
}
