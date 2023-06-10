// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class Profile {
  String username;
  String bio;
  String email;
  Profile({
    required this.username,
    required this.bio,
    required this.email,
  });

  Map<String, dynamic> toMap();
}
