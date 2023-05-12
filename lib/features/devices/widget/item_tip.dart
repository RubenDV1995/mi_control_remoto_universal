part of 'content_tips.dart';

class ItemTip extends StatelessWidget {
  final TipModel tipModel;

  const ItemTip({
    required this.tipModel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: InkWell(
        onTap: () async {
          await showModalBottomSheetBase(
            context: context,
            child: Text(tipModel.description),
            title: tipModel.title,
            tipModel: tipModel,
          );
        },
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(tipModel.url),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
              ),
              child: tipModel.isNew
                  ? Stack(
                      children: const [
                        Positioned(
                          top: 10,
                          left: 10,
                          child: BadgeBase(
                            title: lblNew,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    )
                  : const SizedBox.shrink(),
            ),
            const SizedBox(
              height: 5,
            ),
            TitleBase(
              title: tipModel.title,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}
