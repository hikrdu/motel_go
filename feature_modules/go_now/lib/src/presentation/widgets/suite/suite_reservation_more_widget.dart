import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';

class SuiteReservationMoreWidget extends StatelessWidget {
  const SuiteReservationMoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SuiteUtils.buildItem(
            'você pode ganhar 1 selinho após sua hospedagem', // TODO: Check translations
            Icon(
              Icons.check_box,
              color: context.theme.primaryColor,
            ),
            subtitle:
                'a cada 10 selinhos você ganha uma reserva grátis!\ntermos e condições', // TODO: Check translations
            borderColor: Colors.red),
        SizedBox(height: 8.0),
        SuiteUtils.buildItem('30 minutos de tolerância', Icon(Symbols.hourglass_top),
            subtitle:
                'legal! o motel oferece 30 minutos para você chegar antes de começar a contar o tempo da hospedagem. chegando antes, seu check-in será antecipado!'), // TODO: Check translations
        SizedBox(height: 8.0),
        SuiteUtils.buildItem(
          'tempo estimado até o motel', // TODO: Check translations
          Icon(Icons.timer_outlined),
          trailing: TextButton(
            onPressed: null,
            child: Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black26,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                'calcular',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
        SizedBox(height: 8.0),
        SuiteUtils.buildItem(
          'valor para hospedagem de até duas pessoas', // TODO: Check translations
          Icon(Icons.people_alt),
        ),
        SizedBox(height: 8.0),
        SuiteUtils.buildItem(
          'hospedagem permitida somente para maiores de 18 anos.',
          Icon(Icons.eighteen_up_rating),
        ) // TODO: Check translations
      ],
    );
  }
}
