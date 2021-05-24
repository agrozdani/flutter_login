import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quiver/strings.dart';
import 'package:url_launcher/url_launcher.dart';

class Eula extends StatelessWidget {
  final urlEULA = 'https://mvral.app/end-user-license-agreement/';
  final urlPP = 'https://www.iubenda.com/privacy-policy/71276044';
  @override
  Widget build(BuildContext context) {
    final linkStyle = TextStyle(color: Colors.blue);

    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(text: 'By clicking Sign up, you agree to our '),
          TextSpan(
              text: 'Terms of Service, ',
              style: linkStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  await _launchURLEULA();
                }),
          TextSpan(text: 'and have read our '),
          TextSpan(
              text: 'Privacy Policy',
              style: linkStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  await _launchURLPP();
                })
        ]));

    // Wrap(
    //   children: [
    //     TextButton(onPressed: _launchURLEULA, child: Text('EULA')),
    //     Text('This should contain eula'),
    //   ],
    // );
  }

  Future _launchURLEULA() async => await canLaunch(urlEULA)
      ? await launch(urlEULA)
      : throw 'Could not launch $urlEULA';
  Future _launchURLPP() async => await canLaunch(urlPP)
      ? await launch(urlPP)
      : throw 'Could not launch $urlPP';
}
