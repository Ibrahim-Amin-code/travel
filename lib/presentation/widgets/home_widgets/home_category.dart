import 'package:flutter/material.dart';
import 'package:travel/constants/colors.dart';
import 'package:travel/presentation/screens/detail/detail.dart';
import 'package:travel/presentation/screens/home/componnent/componnent.dart';

class HomeCategory extends StatefulWidget {
  const HomeCategory({Key? key}) : super(key: key);

  @override
  _HomeCategoryState createState() => _HomeCategoryState();
}

class _HomeCategoryState extends State<HomeCategory> {
  List<String> text = [
    "Resturants",
    "Hotels",
    "Cafes",
    "Parks",
  ];
  late PageController pageController;
  @override
  void initState() {
    pageController = PageController(initialPage: currentIndex);
    super.initState();
  }

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
              text.length, (index) => buildDot(index: index, h: h, w: w),
              growable: true),
        ),
        SizedBox(
          height: h * 0.01,
        ),
        Container(
          width: w,
          height: h * 0.2,
          color: Colors.transparent,
          child: PageView.builder(
              itemCount: text.length,
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return SizedBox(
                  width: w,
                  height: h * 0.2,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const DetailScreen())),
                            child: categoryCard(w: w, h: h),
                          ),
                      separatorBuilder: (context, index) => SizedBox(
                            width: w * 0.025,
                          ),
                      itemCount: 5),
                );
              }),
        ),
      ],
    );
  }

  AnimatedContainer buildDot(
      {required int index, required double h, required double w}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      color: Colors.transparent,
      padding: EdgeInsets.symmetric(horizontal: w * 0.01),
      child: InkWell(
        onTap: () {
          pageController.animateToPage(index,
              duration: const Duration(microseconds: 500),
              curve: Curves.fastOutSlowIn);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                text[index],
                style: headingStyle.copyWith(
                    fontSize: w * 0.04,
                    fontWeight: (currentIndex == index)
                        ? FontWeight.w600
                        : FontWeight.w400,
                    color: (currentIndex == index)
                        ? MyColors.mainColor
                        : MyColors.unslectedIconColor),
              ),
            ),
            Center(
              child: Container(
                width: w * 0.02,
                height: h * 0.01,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentIndex == index
                        ? MyColors.mainColor
                        : Colors.transparent),
              ),
            )
          ],
        ),
      ),
    );
  }
}
