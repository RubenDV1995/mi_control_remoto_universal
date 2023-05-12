import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/atoms/titles/title_base.dart';
import 'package:mi_control_remoto_universal/utilities/constants/constants.dart';
import 'package:unicons/unicons.dart';

import '../../design_system_weincode/atoms/badge/badge_base.dart';
import '../../domain/models/tip_model.dart';

Future<T?> showModalBottomSheetBase<T>({
  required BuildContext context,
  required Widget child,
  required String title,
  TipModel? tipModel,
}) async {
  return await showModalBottomSheet(
    elevation: 2,
    enableDrag: true,
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 35.0,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: TitleBase(
                            title: title,
                            lightTheme: true,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        if (tipModel != null && tipModel.isNew == true)
                          const BadgeBase(
                            title: lblNew,
                            color: Colors.red,
                          ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      UniconsLine.times,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  child,
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
