import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';

class GoNowMainPage extends StatelessWidget {
  final DataModel? data;
  const GoNowMainPage({
    super.key,
    this.data,
  });

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
          appBar: PageAppBarWidget(),
          drawer: MenuDrawerWidget(),
          body: Column(
            children: [
              ClipPath(
                key: Key('go_now_clippath_key'),
                clipper: BottomRoundedClipper(),
                child: Container(
                    height: context.screenSize.height * 0.1,
                    color: context.theme.primaryColor,
                    width: context.screenSize.width,
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'minha localização', // TODO: Check translations
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                            size: 16,
                          )
                        ],
                      ),
                    )),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ListView.builder(
                    itemCount: data?.moteis?.length ?? 0,
                    itemBuilder: (context, index) {
                      final motel = data?.moteis?[index];
                      return MotelItemWidget(motel: motel);
                    },
                  ),
                ),
              ),
            ],
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Align(
            alignment: Alignment.bottomCenter,
            child: FloatingActionButton.extended(
              backgroundColor: Colors.white,
              foregroundColor: context.theme.primaryColor,
              elevation: 5,
              onPressed: () async {
                // go to maps
              },
              label: Text(
                'Mapas', // TODO: Check translations
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              icon: Icon(Icons.map),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
          )),
    );
  }
}

class BottomRoundedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double radius = 20.0;
    path.lineTo(0, size.height);
    final firstCurve = Offset(0, size.height - radius);
    final lastCurve = Offset(30, size.height - radius);
    path.quadraticBezierTo(firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

    final secondFirstCurve = Offset(0, size.height - radius);
    final secondLastCurve = Offset(size.width - radius, size.height - radius);
    path.quadraticBezierTo(secondFirstCurve.dx, secondFirstCurve.dy, secondLastCurve.dx, secondLastCurve.dy);

    final thirdFirstCurve = Offset(size.width, size.height - radius);
    final thirdLastCurve = Offset(size.width, size.height);
    path.quadraticBezierTo(thirdFirstCurve.dx, thirdFirstCurve.dy, thirdLastCurve.dx, thirdLastCurve.dy);

    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
