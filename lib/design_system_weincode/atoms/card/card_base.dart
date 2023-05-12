import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/foundations/foundation_colors.dart';
import 'package:unicons/unicons.dart';

import '../../../utilities/constants/constants.dart';

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
      onTap: () {},
      child: SizedBox(
        height: 110,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                _currentCard.url,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 4.0,
                      sigmaY: 4.0,
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 20.0,
                      ),
                      color: Colors.white.withOpacity(0.5),
                      child: Content(
                        currentCard: _currentCard,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Content extends StatelessWidget {
  final CurrentCard currentCard;

  const Content({
    required this.currentCard,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          currentCard.iconData,
          color: WeincodeColorsFoundation.titleLargeLight,
          size: 30.0,
          semanticLabel: lblSocialIcon,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              currentCard.subtitle,
              style: const TextStyle(
                fontSize: 12,
                color: WeincodeColorsFoundation.titleLargeLight,
              ),
            ),
            Text(
              currentCard.title,
              style: const TextStyle(
                fontSize: 16,
                color: WeincodeColorsFoundation.titleLargeLight,
              ),
            ),
          ],
        ),
      ],
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
    String title = lblFacebook,
    String subtitle = lblConnectWith,
    String url = urlFacebookBackground,
    String background = '',
    IconData iconData = UniconsLine.facebook_f,
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
    String title = lblTwitter,
    String subtitle = lblConnectWith,
    String url = urlTwitterBackground,
    String background = '',
    IconData iconData = UniconsLine.twitter_alt,
  }) : super(
          title = title,
          subtitle = subtitle,
          url = url,
          background = background,
          iconData = iconData,
        );
}
