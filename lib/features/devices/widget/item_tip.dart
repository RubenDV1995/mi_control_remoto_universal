part of 'content_tips.dart';

class ItemTip extends StatelessWidget {
  final TipModel tipModel;

  const ItemTip({
    required this.tipModel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await showModalBottomSheetBase(
          context: context,
          content: const Text(''),
          title: tipModel.title,
        );
      },
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 130,
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
                        child: BadgeBase(title: 'New',)
                      ),
                    ],
                  )
                : const SizedBox.shrink(),
          ),
          TDTitle(
            title: tipModel.title,
          ),
        ],
      ),
    );
  }
}
