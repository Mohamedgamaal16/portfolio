
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});
  static final Uri _instgramUrl = Uri.parse('https://www.instagram.com/mohamed_gamal167?igsh=ZzFoaDkyMmNoaHZw&utm_source=qr');
  static final Uri _faceBookUrl = Uri.parse('https://www.facebook.com/profile.php?id=100007829283648');
  static final Uri _github = Uri.parse('https://github.com/Mohamedgamaal16?tab=repositories');
  static final Uri _linkedIn = Uri.parse('https://www.linkedin.com/in/mohamed-gamal-19070422b/');

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          child: IconButton(
            icon: const Icon(
              FontAwesomeIcons.facebook,
            ),
            onPressed: () {
              _launchUrl(_faceBookUrl);
            },
          ),
        ),
        Flexible(
          child: IconButton(
            icon: const Icon(
              FontAwesomeIcons.github,
            ),
            onPressed: () {
              _launchUrl(_github);
            },
          ),
        ),
        Flexible(
          child: IconButton(
            icon: const Icon(
              FontAwesomeIcons.instagram,
            ),
            onPressed: () {
              _launchUrl(_instgramUrl);
            },
          ),
        ),
        Flexible(
          child: IconButton(
            icon: const Icon(
              FontAwesomeIcons.linkedin,
            ),
            onPressed: () {
              _launchUrl(_linkedIn);
            },
          ),
        ),
      ],
    );
  }

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
