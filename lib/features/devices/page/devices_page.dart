import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mi_control_remoto_universal/core/remote_control/models/devices.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/molecules/slot/DSSlot.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/templates/pages/ds_base_page.dart';
import 'package:mi_control_remoto_universal/features/loading/page/loading_page.dart';
import 'package:mi_control_remoto_universal/features/remote_control/controller/main/main_signal_emmiter_controller.dart';
import 'package:mi_control_remoto_universal/features/settings/widget/channel_button.dart';
import 'package:ux_tigomoney_designsystem/molecules/remittances/tdsm_remittances.dart';

class DevicesPage extends ConsumerWidget {
  DevicesPage({Key? key}) : super(key: key);

  late int tabIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    tabIndex = ref.read(modelControlProvider.notifier).getTabIndex();
    return DSBasePage(
      title: 'Dispositivos',
      child: Device(
        tabIndex: tabIndex,
        ref: ref,
      ),
    );
  }
}

class Device extends StatefulWidget {
  final int tabIndex;
  final WidgetRef ref;

  const Device({Key? key, required this.tabIndex, required this.ref})
      : super(key: key);

  @override
  State<Device> createState() => _DeviceState();
}

class _DeviceState extends State<Device> {
  List<Items>? _items;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    readJsonDevices();
  }

  Future<void> readJsonDevices() async {
    _isLoading = true;
    try {
      final String response =
          await rootBundle.loadString('assets/json/devices.json');
      Map<String, dynamic> valueMap = json.decode(response);
      final data = Devices.fromJson(valueMap);
      setState(() {
        _items = data.items;
      });
      /*
      await Future.delayed(const Duration(seconds: 2), () {
        setState(() {
          _items = null;
          _isLoading = false;
        });
      });
       */
      _isLoading = false;
    } catch (e) {
      _isLoading = false;
      Fluttertoast.showToast(
          msg: "Error al recuperar dispositivos",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red.shade400,
          textColor: Colors.white,
          fontSize: 16.0);
    }
    _isLoading = false;
  }

  ControlBrand _setBrand(String nameBrand) {
    ControlBrand currentControlBrand = ControlBrand.generic;
    switch (nameBrand) {
      case 'Genereic':
        currentControlBrand = ControlBrand.generic;
        break;
      case 'Samsumg':
        currentControlBrand = ControlBrand.samsung;
        break;
      case 'LG':
        currentControlBrand = ControlBrand.lg;
        break;
      default:
        break;
    }
    return currentControlBrand;
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading == true) {
      return const LoadingPage(title: 'Buscando... \nPorfavor espere');
    }
    return _items != null
        ? ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: _items?.length,
            itemBuilder: (BuildContext context, int index) {
              return TDSMRemittances(type: TDSMRemittance.moneyGram, onTapFunction: (){}, isTap: false);
              return ChannelButton(
                urlImage: _items![index].urlImage,
                onPress: () {
                  widget.ref
                      .read(modelControlProvider.notifier)
                      .setControlType(_setBrand(_items![index].brand));
                },
                deviceStatus: index == widget.tabIndex ? true : false,
              );
            },
          )
        : DSSlot(
            title: 'Lo sentimos \nNo hay dispositivos',
            titleButton: 'Volver a intentar',
            onPressed: readJsonDevices,
          );
  }
}
