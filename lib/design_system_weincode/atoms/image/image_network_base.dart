import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../domain/models/device_model.dart';
import '../titles/title_base.dart';

class ImageNetworkBase extends StatelessWidget {
  final Items item;
  final double? width;

  const ImageNetworkBase({
    required this.item,
    Key? key,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(item.urlImage != '') {
      return CachedNetworkImage(
        imageUrl: item.urlImage,
        width: width ?? 150,
        placeholder: (context, url) =>
        const SizedBox(
          width: 30,
          height: 30,
          child: CircularProgressIndicator(),
        ),
        errorWidget: (context, url, error) {
          return Center(
            child: TitleBase(
              title: item.brand,
              size: width != null ? 16 : 30,
            ),
          );
        },
      );
    }
    return Center(
      child: TitleBase(
        title: item.brand,
        size: width != null ? 16 : 30,
      ),
    );
  }
}
