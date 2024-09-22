import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MailProvider extends ChangeNotifier {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  bool isLoading = false;
  String? errorMessage;

  Future<void> sendMail() async {
    // Set loading to true and clear previous errors
    isLoading = true;
    errorMessage = null;
    notifyListeners();

    // Get user input
    final String userEmail = emailController.text.trim();
    final String userMessage = messageController.text.trim();

    // Perform validation before sending the email
    if (userEmail.isEmpty) {
      errorMessage = 'Please write your email';
      isLoading = false;
      notifyListeners();
      return;
    }

    if (userMessage.isEmpty) {
      errorMessage = 'Please write your message';
      isLoading = false;
      notifyListeners();
      return;
    }

    // Compose the email content
    final String subject = 'Message from $userEmail';
    final String body = 'Message: $userMessage\n\nFrom: $userEmail';
    final String mailTo = 'mailto:mahooomar53@gmail.com?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull(body)}';

    try {
      // Try to launch the mail app
      if (await canLaunch(mailTo)) {
        await launch(mailTo);
      } else {
        throw 'Could not launch $mailTo';
      }
    } catch (e) {
      // Handle the error if the email could not be sent
      errorMessage = 'Failed to send email: $e';
    } finally {
      // Stop loading regardless of success or failure
      isLoading = false;
      notifyListeners();
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    messageController.dispose();
    super.dispose();
  }
}
