import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';

class MotelInfoWidget extends StatelessWidget {
  final MotelModel? motel;
  final Function? onTap;
  const MotelInfoWidget({
    super.key,
    this.motel,
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
      trailing: Icon(
        Icons.favorite,
      ),
    );
  }
}
