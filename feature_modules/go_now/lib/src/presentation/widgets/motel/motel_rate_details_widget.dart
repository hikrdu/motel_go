import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';

class MotelRateDetailsWidget extends StatelessWidget {
  final MotelModel? motel;
  const MotelRateDetailsWidget({super.key, this.motel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text(
                'avaliação geral', // TODO: Check translations
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        '${motel?.media}',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 42),
                      ),
                      ...buildStars(motel!.media!)
                    ],
                  ),
                  Text('${motel?.qtdAvaliacoes} avaliações'), // TODO: Check translations
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  buildStars(double rating) {
    List<Widget> stars = [];
    int fullStars = rating.floor();
    bool hasHalfStar = (rating - fullStars) >= 0.5;

    for (int i = 0; i < 5; i++) {
      if (i < fullStars) {
        stars.add(Icon(
          Icons.star,
          color: Colors.yellow,
        ));
      } else if (i == fullStars && hasHalfStar) {
        stars.add(Icon(
          Icons.star_half,
          color: Colors.yellow,
        ));
      } else {
        stars.add(Icon(
          Icons.star_border,
          color: Colors.yellow,
        ));
      }
    }

    return stars;
  }
}
