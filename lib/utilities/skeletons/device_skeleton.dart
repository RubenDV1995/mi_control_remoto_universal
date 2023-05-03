import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class DeviceSkeleton extends StatelessWidget {
  const DeviceSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return const DeviceSkeletonItem();
        },
      ),
    );
  }
}

class DeviceSkeletonItem extends StatelessWidget {
  const DeviceSkeletonItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 140,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SkeletonAvatar(
                style: SkeletonAvatarStyle(
                  shape: BoxShape.circle,
                  width: 50,
                  height: 50,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SkeletonParagraph(
                    style: const SkeletonParagraphStyle(
                      lines: 1,
                      lineStyle: SkeletonLineStyle(
                        height: 12,
                        width: 60,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const SkeletonAvatar(
                    style: SkeletonAvatarStyle(
                      height: 30,
                      width: 50,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
