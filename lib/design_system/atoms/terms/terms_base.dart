import 'package:flutter/material.dart';

import '../../../utilities/bottom_sheet/bottom_sheet_base.dart';
import '../../../utilities/constants/constants.dart';

part 'content_terms_base.dart';

class TermsBase extends StatelessWidget {
  const TermsBase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () async {
          return await showModalBottomSheetBase(
            title: lblTerms,
            context: context,
            child: const ContentTermsBase(),
          );
        },
        child: const Text(
          lblTerms,
          style: TextStyle(
            decoration: TextDecoration.underline,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
