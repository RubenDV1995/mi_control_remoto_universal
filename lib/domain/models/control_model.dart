import 'package:mi_control_remoto_universal/features/remote_control/controller/main/main_signal_emmiter_controller.dart';

class ControlModel {
  ControlModel({
    required this.id,
    this.brand,
  });

  int? id;
  ControlBrand? brand;

  factory ControlModel.fromJson(Map<String, dynamic> json) => ControlModel(
    id: json["id"],
    brand: json["brand"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "brand": brand,
  };
}