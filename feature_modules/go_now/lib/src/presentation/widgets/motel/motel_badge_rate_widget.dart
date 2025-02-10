import 'package:flutter/material.dart';

class MotelBadgeRateWidget extends StatelessWidget {
  final double? rate;
  final int? qtdAvaliacoes;
  final Function onTap;
  const MotelBadgeRateWidget({
    super.key,
    required this.rate,
    required this.qtdAvaliacoes,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.orange,
              ),
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  size: 16,
                  color: Colors.orange,
                ),
                SizedBox(width: 4.0),
                Text(
                  rate.toString(),
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 8.0),
          Text(
            '$qtdAvaliacoes avaliações', // TODO: Check translations
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          Icon(
            Icons.arrow_drop_down,
            size: 16.0,
          ),
        ],
      ),
    );
  }
}
