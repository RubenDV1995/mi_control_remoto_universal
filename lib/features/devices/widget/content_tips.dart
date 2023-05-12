import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/atoms/titles/title_base.dart';
import 'package:mi_control_remoto_universal/domain/models/tip_model.dart';
import 'package:mi_control_remoto_universal/utilities/constants/constants.dart';

import '../../../design_system_weincode/atoms/badge/badge_base.dart';
import '../../../utilities/bottom_sheet/bottom_sheet_base.dart';

part 'item_tip.dart';

class ContentTips extends StatefulWidget {
  const ContentTips({Key? key}) : super(key: key);

  static  List<TipModel> listTips = [
    TipModel(title: 'Personalizacion al maximo', description: 'En la sección de ajustes de nuestra app móvil de control remoto universal, podrás personalizar al máximo tu experiencia. \n\nDesde aquí podrás acceder a la opción de modo oscuro, para adaptar la apariencia de la app a ambientes con poca luz y cuidar de tus ojos. Además, en la sección de ajustes también encontrarás la opción de selector de wallpaper, para que puedas cambiar el fondo de pantalla de la app y hacerla aún más personalizada. \n\nAsí que no esperes más, ¡personaliza al máximo tu experiencia con nuestra app de control remoto universal!', url: 'assets/images/jpg/background_tip1.jpg', isNew: false),
    TipModel(title: 'Manten la app actualizada', description: 'Mantener actualizada la aplicación de control remoto universal es importante para acceder a nuevas funciones y mejoras de seguridad. \n\nLa mayoría de las aplicaciones ofrecen actualización automática, lo que facilita el proceso. \n\nActualiza tu aplicación y disfruta al máximo de la experiencia de controlar tus dispositivos desde tu dispositivo móvil. \n\n¡No te quedes atrás, mantente al día!', url: 'assets/images/jpg/background_tip2.jpg', isNew: true),
    TipModel(title: 'Filtro por modelo', description: 'Simplemente puedes utilizar el campo de filtrado que se encuentra debajo de la lista de dispositivos. \n\nAllí podrás ingresar el modelo exacto que estás buscando y nuestra app de control remoto universal te mostrará los resultados correspondientes. \n\nEs una función muy útil y eficiente, especialmente si tienes un modelo específico en mente y deseas encontrarlo rápidamente sin tener que navegar por cientos de opciones. \n\nNo esperes más y utiliza nuestra función de filtrado para encontrar el modelo exacto que necesitas en nuestra app de control remoto universal. \n\n¡Todo el control que necesitas al alcance de tu mano!', url: 'assets/images/jpg/background_tip3.jpg', isNew: false)
  ];

  @override
  State<ContentTips> createState() => _ContentTipsState();
}

class _ContentTipsState extends State<ContentTips> {
  late int currentSlider = 0;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: ContentTips.listTips.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
        bool focusWidget = currentSlider == itemIndex ? true : false;
        return AnimatedOpacity(
          opacity: focusWidget ? 1.0 : 0.3,
          duration: const Duration(microseconds: 800),
          child: ItemTip(
            tipModel: ContentTips.listTips[itemIndex],
          ),
        );
      },
      options: CarouselOptions(
        height: 200,
        aspectRatio: 2.0,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 4),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.2,
        scrollDirection: Axis.horizontal,
        onPageChanged: (index, reason) => setState(() => currentSlider = index),
      ),
    );
  }
}
