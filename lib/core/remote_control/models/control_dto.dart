import 'package:mi_control_remoto_universal/features/remote_control/controller/main/main_signal_emmiter_controller.dart';

class ControlDTO {
  ControlDTO({
    required this.id,
    this.brand,
  });

  int? id;
  ControlBrand? brand;

  factory ControlDTO.fromJson(Map<String, dynamic> json) => ControlDTO(
    id: json["id"],
    brand: json["brand"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "brand": brand,
  };
}