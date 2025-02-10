import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';

GoNowRepository? goNowRepository;

class GoNowBase extends StatelessWidget {
  const GoNowBase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        goNowRepository ??= GoNowRepository();
        return GoNowBloc();
      },
      child: Scaffold(
        key: Key('go_now_base_key'),
        body: BlocBuilder<GoNowBloc, GoNowState>(
          builder: (context, state) {
            if (state is MotelsLoadingState || state is MotelsInitialState) {
              return Center(child: CircularProgressIndicator());
            } else if (state is MotelsLoadedState) {
              final data = state.base.data;

              return GoNowMainPage(
                data: data,
              );
            } else if (state is MotelsErrorState) {
              return Center(
                key: Key('error_key'),
                child: Text(state.error),
              );
            } else {
              return Center(
                child: Text('Erro desconhecido'),
              ); // TODO: Check translations
            }
          },
        ),
      ),
    );
  }
}
