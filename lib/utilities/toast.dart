import 'package:fluttertoast/fluttertoast.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/foundations/foundation_colors.dart';

enum TypeToast {
  info,
  error,
  warning,
}

Future<bool?> showToast({
  required String title,
  required TypeToast typeToast,
}) async {
  await Fluttertoast.cancel();
  if (typeToast == TypeToast.error) {
    return await showErrorToast(title: title);
  }
  return await Fluttertoast.showToast(
    msg: title,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: WeincodeColorsFoundation.backgroundToastDark,
    textColor: WeincodeColorsFoundation.textToastDark,
    fontSize: 16.0,
  );
}

Future<bool?> showErrorToast({
  required String title,
}) async {
  return await Fluttertoast.showToast(
    msg: title,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: WeincodeColorsFoundation.backgroundToastDark,
    textColor: WeincodeColorsFoundation.textToastDark,
    fontSize: 16.0,
  );
}
