import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/atoms/subtitles/subtitle.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/atoms/titles/title_base.dart';
import 'package:mi_control_remoto_universal/utilities/toast.dart';
import 'package:provider/provider.dart';

import '../../../design_system_weincode/atoms/information/inoformation_pane.dart';
import '../../../design_system_weincode/atoms/textfiled/text_field_filter_base.dart';
import '../../../design_system_weincode/templates/pages/page_base.dart';
import '../../../domain/models/device_model.dart';
import '../../../domain/repositories/control_repository.dart';
import '../../../utilities/constants/constants.dart';
import '../../remote_control/controller/main/main_controller.dart';
import '../widget/content_device.dart';
import '../widget/content_tips.dart';

class DevicesPage extends StatefulWidget {
  const DevicesPage({Key? key}) : super(key: key);

  @override
  State<DevicesPage> createState() => _DevicesPageState();
}

class _DevicesPageState extends State<DevicesPage> {
  List<Items> currentItems = [];

  @override
  void initState() {
    super.initState();
    readJsonDevices();
  }

  Future<void> readJsonDevices() async {
    final device = Provider.of<MainController>(context, listen: false);
    try {
      List<Items> data = await Provider.of<ControlRepository>(
        context,
        listen: false,
      ).getDevicesFromLocalJson();
      device.setLoading(true);
      await Future.delayed(
        const Duration(seconds: 1),
        () {
          currentItems = data;
          device.getDevices(currentItems);
        },
      );
    } catch (e) {
      device.getDevices([]);
      await showToast(
        title: lblErrorDevices,
        typeToast: TypeToast.error,
      );
    }
  }

  void _runFilter({
    required String enteredKeyword,
    required BuildContext context,
  }) async {
    try {
      List<Items> _results = [];
      final _currentDevices = currentItems;
      if (enteredKeyword.isEmpty) {
        _results = _currentDevices;
      } else {
        _results = _currentDevices
            .where(
              (element) => element.brand.toLowerCase().contains(
                    enteredKeyword.toLowerCase(),
                  ),
            )
            .toList();
      }
      Provider.of<MainController>(context, listen: false).getDevices(_results);
    } catch (e) {
      showToast(
        title: lblErrorFilter,
        typeToast: TypeToast.error,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageBase(
      template: PageTemplate.devices,
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
      child: Builder(
        builder: (context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TitleBase(
                      title: lblSlogan,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Subtitle(
                      subtitle: lblDescriptionApp,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const InformationPane(),
                    const SizedBox(
                      height: 30,
                    ),
                    const TitleBase(
                      title: lblDevices,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ContentDevices(
                      onPressed: readJsonDevices,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFieldFilterBase(
                      onChanged: (value) => _runFilter(
                        context: context,
                        enteredKeyword: value,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const TitleBase(
                      title: lblToNew,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              const ContentTips(),
            ],
          );
        },
      ),
    );
  }
}
