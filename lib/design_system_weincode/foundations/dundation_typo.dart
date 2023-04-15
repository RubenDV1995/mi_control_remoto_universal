import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/tokens/typography.dart';

class WeincodeTypographyFoundation {
  WeincodeTypographyFoundation._();

  //fonts
  static const String familyHeadings = WeincodeTypography.familyOpenSans;
  static const String familyBody = WeincodeTypography.familyRoboto;

  //sizes
  static const double fontSizeH1 = WeincodeTypography.sizeXXL;
  static const double fontSizeH2 = WeincodeTypography.sizeXL;
  static const double fontSizeH3 = WeincodeTypography.sizeLG;
  static const double fontSizeH4 = WeincodeTypography.sizeMD;
  static const double fontSizeH5 = WeincodeTypography.sizeSL;
  static const double fontSizeH6 = WeincodeTypography.sizeSM;
  static const double fontSizeBodyText = WeincodeTypography.sizeXS;
  static const double fontSizeLabel = WeincodeTypography.sizeXS;
  static const double fontSizeLink = WeincodeTypography.sizeXS;
  static const double fontSizeSmall = WeincodeTypography.sizeXXS;
  static const double fontSizeXSmall = WeincodeTypography.sizeXXS;

  //
  static const TextStyle buttonStyle = TextStyle(
    fontSize: fontSizeH5,
    fontFamily: familyHeadings,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle primaryTextStyle = TextStyle(
    fontSize: fontSizeH4,
    fontFamily: familyHeadings,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle secondaryTextStyle = TextStyle(
    fontSize: fontSizeH6,
    fontFamily: familyHeadings,

  );
}
