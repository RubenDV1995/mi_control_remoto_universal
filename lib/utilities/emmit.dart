import 'dart:convert';
import 'dart:math';

import 'package:ir_sensor_plugin/ir_sensor_plugin.dart';
import 'package:isolate_handler/isolate_handler.dart';
import 'package:mi_control_remoto_universal/utilities/toast.dart';

void emmit(String pattern) async {
  try {
    final bool hasIrEmitter = await IrSensorPlugin.hasIrEmitter;
    if (hasIrEmitter) {
      final _isolateName = Random().nextInt(100).toString();

      _isolates = IsolateHandler();

      _isolates.spawn(
        _entryPoint,
        name: _isolateName,
        onInitialized: () => _isolates.send(
          jsonEncode({
            'isolate': _isolateName,
            'pattern': pattern,
          }),
          to: _isolateName,
        ),
      );
    } else {
      await showToast(
        title: 'Tu dispositivo no cuenta con sensor infrarojo.',
        typeToast: TypeToast.error,
      );
    }
  } catch (e) {
    await showToast(
      title: 'Lo siento no pudimos sincronizarnos',
      typeToast: TypeToast.error,
    );
  }
}

IsolateHandler _isolates = IsolateHandler();

void _entryPoint(Map<String, dynamic> context) {
  final _messenger = HandledIsolate.initialize(context);

  _messenger.listen((pattern) {
    _emmit(pattern);
  });
}

void _emmit(String json) async {
  final _map = jsonDecode(json);

  await IrSensorPlugin.transmitString(pattern: _map['pattern']!);

  _isolates.kill(_map['isolate']!);
}
