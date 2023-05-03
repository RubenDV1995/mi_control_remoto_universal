import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/atoms/titles/TDTitle.dart';
import 'package:mi_control_remoto_universal/domain/models/tip_model.dart';

import '../../../design_system_weincode/atoms/badge/badge_base.dart';
import '../../../utilities/bottom_sheet/bottom_sheet_base.dart';

part 'item_tip.dart';

class ContentTips extends StatefulWidget {
  const ContentTips({Key? key}) : super(key: key);

  static  List<TipModel> listTips = [
    TipModel(title: 'Personalizacion al maximo', description: 'Personaliza al maximo los colores y agrega imaganes geniales.', url: 'assets/images/jpg/background_tip1.jpg', isNew: false),
    TipModel(title: 'Filtrado por modelo', description: 'Utiliza la funcion de filtrado para enconrar tu dsipositivo', url: 'assets/images/jpg/background_tip2.jpg', isNew: true),
    TipModel(title: 'Manten la app actualizada', description: 'Manten la app actualizada y no te pierdas del mejor contenido', url: 'assets/images/jpg/background_tip3.jpg', isNew: false)
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
