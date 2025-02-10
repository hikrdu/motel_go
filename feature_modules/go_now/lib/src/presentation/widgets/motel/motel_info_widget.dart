import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';

class MotelInfoWidget extends StatelessWidget {
  final MotelModel? motel;
  final bool showMoreInfo;

  final Function? onTap;
  const MotelInfoWidget({
    super.key,
    this.motel,
    this.showMoreInfo = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        motel?.fantasia?.decode() ?? '',
        style: TextStyle(fontSize: 22),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '${motel!.distancia!.toStringAsFixed(2)} km - ${motel?.bairro?.decode()}',
            style: TextStyle(fontSize: 18),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              MotelBadgeRateWidget(
                rate: motel?.media,
                qtdAvaliacoes: motel?.qtdAvaliacoes,
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    showDragHandle: true,
                    builder: (_) => MotelRateDetailsWidget(motel: motel),
                  );
                },
              ),
            ],
          )
        ],
      ),
      leading: motel?.logo == null
          ? null
          : ClipOval(
              child: Image.network(
                motel!.logo!,
                width: 35,
                height: 35,
                fit: BoxFit.cover,
              ),
            ),
      trailing: showMoreInfo
          ? GestureDetector(
              onTap: () => onTap!(),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'mais info',
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 16),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 16,
                  )
                ],
              ),
            )
          : BlocProvider(
              create: (_) => FavoriteBloc(),
              child: BlocBuilder<FavoriteBloc, FavoriteState>(builder: (context, state) {
                bool isFavorited = state is FavoriteChangedState ? state.isFavorited : false;
                return IconButton(
                  onPressed: () {
                    context.read<FavoriteBloc>().changeFavorite(isFavorited);
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: isFavorited ? Colors.red : Colors.grey,
                  ),
                );
              }),
            ),
    );
  }
}
