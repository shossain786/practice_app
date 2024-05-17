import 'package:flutter/material.dart';

class RichTextLib extends StatelessWidget {
  const RichTextLib({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              RichText(
                text: const TextSpan(
                  text:
                      'This is a very long text that might not fit in one line.',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 20),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: 'Centered ',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'RichText',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    TextSpan(
                      text: ' alignment.',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const SelectableText.rich(
                TextSpan(
                  text: 'You can ',
                  children: <TextSpan>[
                    TextSpan(
                      text: 'select',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    TextSpan(text: ' this text.'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text('Nested Text Example'),
              const SizedBox(height: 20),
              RichText(
                text: const TextSpan(
                  text: 'Flutter ',
                  style: TextStyle(color: Colors.blue),
                  children: [
                    TextSpan(
                      text: 'RichText ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    TextSpan(
                      text: 'example',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              RichText(
                text: const TextSpan(
                  text: 'Welcome to ',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Flutter ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    TextSpan(
                      text: 'development. ',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.grey,
                      ),
                    ),
                    TextSpan(
                      text: 'Enjoy ',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.green,
                      ),
                    ),
                    TextSpan(
                      text: 'coding!',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              RichText(
                text: const TextSpan(
                    text:
                        'This text will not exceed one line. This text will not exceed one line.'),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 20),
              SelectionArea(
                child: RichText(
                  text: const TextSpan(
                    text: 'You can select ',
                    style: TextStyle(color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'this text',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                      TextSpan(
                        text: ' to copy or share.',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
