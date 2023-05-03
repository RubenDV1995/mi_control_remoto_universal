import 'package:flutter/material.dart';

enum CardBaseDesign {
  facebook,
  twitter,
}

class CardBase extends StatelessWidget {
  final CardBaseDesign cardBaseDesign;

  const CardBase({
    required this.cardBaseDesign,
    Key? key,
  }) : super(key: key);

  CurrentCard get _currentCard => cardBaseDesign == CardBaseDesign.facebook
      ? CurrentCardFacebook()
      : CurrentCardTwitter();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: 120,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/png/bacground.png"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                _currentCard.iconData,
                color: Colors.white,
                size: 34.0,
                semanticLabel: 'Social media icon',
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(_currentCard.subtitle),
                  Text(_currentCard.title),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CurrentCard {
  final String title;
  final String subtitle;
  final String url;
  final String background;
  final IconData iconData;

  CurrentCard(
    this.title,
    this.subtitle,
    this.url,
    this.background,
    this.iconData,
  );
}

class CurrentCardFacebook extends CurrentCard {
  CurrentCardFacebook({
    String title = 'Facebook',
    String subtitle = 'Connect with',
    String url = '',
    String background = '',
    IconData iconData = Icons.facebook,
  }) : super(
          title = title,
          subtitle = subtitle,
          url = url,
          background = background,
          iconData = iconData,
        );
}

class CurrentCardTwitter extends CurrentCard {
  CurrentCardTwitter({
    String title = 'Twitter',
    String subtitle = 'Connect with',
    String url = '',
    String background = '',
    IconData iconData = Icons.soap,
  }) : super(
          title = title,
          subtitle = subtitle,
          url = url,
          background = background,
          iconData = iconData,
        );
}
