import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkiFy extends StatelessWidget {
  const LinkiFy({super.key});
  Future<void> _onOpen(LinkableElement link) async {
    if (!await launchUrl(Uri.parse(link.url))) {
      throw Exception('Could not launch ${link.url}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Linkify(
                onOpen: _onOpen,
                text: "Made by https://cretezy.com\n\nMail: example@gmail.com",
              ),
              const SizedBox(height: 64),
              SelectableLinkify(
                onOpen: _onOpen,
                text: "Made by https://cretezy.com\n\nMail: example@gmail.com",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
