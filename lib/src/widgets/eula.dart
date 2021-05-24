import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

class Eula extends StatelessWidget {
  final urlEULA = 'https://mvral.app/end-user-license-agreement/';
  final urlPP = 'https://www.iubenda.com/privacy-policy/71276044';
  @override
  Widget build(BuildContext context) {
    final linkStyle = TextStyle(color: Colors.blue);

    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        RichText(
          textAlign: TextAlign.center,
          text:
              TextSpan(style: Theme.of(context).textTheme.bodyText2, children: [
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
          ]),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Future _launchURLEULA() async => await canLaunch(urlEULA)
      ? await launch(urlEULA)
      : throw 'Could not launch $urlEULA';
  Future _launchURLPP() async => await canLaunch(urlPP)
      ? await launch(urlPP)
      : throw 'Could not launch $urlPP';
}
