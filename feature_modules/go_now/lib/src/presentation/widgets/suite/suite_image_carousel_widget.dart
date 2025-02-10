import 'package:carousel_slider/carousel_slider.dart';
import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';

class SuiteImageCarouselWidget extends StatelessWidget {
  final SuiteModel suite;
  const SuiteImageCarouselWidget({super.key, required this.suite});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CarouselBloc(),
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Stack(
              children: [
                Stack(
                  children: [
                    BlocBuilder<CarouselBloc, CarouselState>(builder: (context, state) {
                      return CarouselSlider.builder(
                        itemCount: suite.fotos?.length ?? 0,
                        itemBuilder: (context, index, realIndex) => Image.network(
                          suite.fotos![index],
                          width: context.screenSize.width,
                          height: 350,
                        ),
                        options: CarouselOptions(
                          height: 350,
                          enlargeCenterPage: true,
                          aspectRatio: 1,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) => context.read<CarouselBloc>().changePage(index),
                        ),
                      );
                    }),
                    AppBar(
                      automaticallyImplyLeading: false,
                      leading: IconButton(
                          onPressed: () => Navigator.of(context).pop(),
                          icon: Icon(
                            Icons.navigate_before,
                            color: Colors.white,
                          )),
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
                  ],
                ),
                Positioned(
                  bottom: 35,
                  left: 0,
                  right: 0,
                  child: BlocBuilder<CarouselBloc, CarouselState>(
                    builder: (context, state) {
                      int currentIndex = state is CarouselPageChanged ? state.pageIndex : 0;
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: suite.fotos!.map((url) {
                          int index = suite.fotos!.indexOf(url);
                          return Container(
                            width: 8.0,
                            height: 8.0,
                            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentIndex == index ? Colors.white : Colors.grey,
                            ),
                          );
                        }).toList(),
                      );
                    },
                  ),
                ),
              ],
            ),
            SuiteNameWidget(
              suite: suite,
            ),
            SuiteCategoryWidget(
              categories: suite.categoriaItens,
              onTap: () {
                navigateTransition(
                  nextPage: SuiteItemsPage(suite: suite),
                  direction: TransitionDirectionEnum.bottomToTop,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
