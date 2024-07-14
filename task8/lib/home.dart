import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri toLaunch = Uri(scheme: 'https', host: 'www.developwithjr.info');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 300,
            ),
            ElevatedButton(
                onPressed: () async {
                  final Uri launchUri = Uri(
                    scheme: 'tel',
                    path: '4414124424',
                  );
                  await launchUrl(launchUri);
                },
                child: const Text("Make a Call")),
            ElevatedButton(
              onPressed: () async {
                if (!await launchUrl(
                  toLaunch,
                  mode: LaunchMode.externalApplication,
                )) {
                  throw Exception('Could not launch $toLaunch');
                }
              },
              child: const Text("Vist website"),
            )
          ],
        ),
      ),
    );
  }
}
