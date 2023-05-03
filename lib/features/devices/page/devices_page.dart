import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/atoms/subtitles/subtitle.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/atoms/titles/TDTitle.dart';
import 'package:mi_control_remoto_universal/utilities/toast.dart';
import 'package:provider/provider.dart';

import '../../../design_system_weincode/atoms/information/DSInformationPane.dart';
import '../../../design_system_weincode/atoms/textfiled/text_field_filter_base.dart';
import '../../../design_system_weincode/templates/pages/ds_base_page.dart';
import '../../../domain/models/device_model.dart';
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
      final String response =
          await rootBundle.loadString('assets/json/devices.json');
      Map<String, dynamic> valueMap = json.decode(response);
      final data = DeviceModel.fromJson(valueMap);
      device.setLoading(true);
      await Future.delayed(
        const Duration(seconds: 1),
        () {
          currentItems = data.items ?? [];
          device.getDevices(currentItems);
        },
      );
    } catch (e) {
      device.getDevices([]);
      await showToast(
        title: 'Error al recuperar dispositivos',
        typeToast: TypeToast.error,
      );
    }
  }

  void _runFilter({
    required String enteredKeyword,
    required BuildContext context,
  }) async {
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
  }

  @override
  Widget build(BuildContext context) {
    return DSBasePage(
      template: DSTemplate.devices,
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 20.0),
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
                    const TDTitle(
                      title: 'Simplify Your Life with UniRemote.',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Subtitle(
                      subtitle:
                          'Revolutionize the way you control your devices with just one powerful app.',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const DSInformationPane(),
                    const SizedBox(
                      height: 30,
                    ),
                    const TDTitle(
                      title: 'Devices',
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
                    const TDTitle(
                      title: 'Tips',
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
