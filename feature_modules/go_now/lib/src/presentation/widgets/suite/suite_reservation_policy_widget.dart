import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';

class SuiteReservationPolicyWidget extends StatelessWidget {
  const SuiteReservationPolicyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'política de reserva', // TODO: Check translations
            style: TextStyle(fontSize: 32),
          ),
        ),
        SuiteUtils.buildItem(
          'após confirmação da reserva, você terá até 10 minutos para efetuar o cancelamento sem pagar nada.', // TODO: Check translations
          Icon(Symbols.timer_10_alt_1),
        ),
        SizedBox(height: 8.0),
        SuiteUtils.buildItem(
          'assim que chegar no motel, é obrigatório informar na recepção que você fez uma reserva guia de motéis go para que seu check-in seja feito na suíte certa.', // TODO: Check translations
          Icon(Icons.security_update_good_outlined),
        ),
        SizedBox(height: 8.0),
        SuiteUtils.buildItem(
          'a categoria de suite escolhida pode oferecer diferentes decorações. deste modo, a reserva é efetuada conforme a disponibilidade, sem a possibilidade de escolha.', // TODO: Check translations
          Icon(Symbols.emergency_home),
        ),
        SizedBox(height: 8.0),
        Container(
          width: context.screenSize.width,
          color: Colors.blue,
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.credit_card_outlined,
                color: Colors.white,
                size: 38,
              ),
              SizedBox(height: 8.0),
              Text(
                'não comparecimento', // TODO: Check translations
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'quando esgotar o tempo de deslogamento, sua reserva continuará garantida por mais 25 minutos.', // TODO: Check translations
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'depois disso, se você não tiver realizado o check-in, ela será automaticamente cancelada e será cobrado um valor adicional de ', // TODO: Check translations
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    WidgetSpan(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          'R\$ 12,00 como taxa de no-show', // TODO: Check translations
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
