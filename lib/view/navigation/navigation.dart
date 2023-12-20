import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:numicorn_mobile/view/main/home/view/home_view.dart';
import 'package:numicorn_mobile/view/main/lecture/view/lecture_view.dart';
import 'package:numicorn_mobile/view/main/level_order/view/level_order_view.dart';
import 'package:numicorn_mobile/view/main/mission_badges/view/mission_badges_view.dart';
import 'package:numicorn_mobile/view/main/super/view/super_view.dart';
import 'package:numicorn_mobile/view/question/view/transition/transition_model.dart';

import '../../../../core/extension/color_extension.dart';
import '../../../../core/extension/context_extension.dart';
import '../../../../core/extension/font_extension.dart';
import '../../../core/init/navigation/navigation_service.dart';
import '../main/profile/view/profile_view.dart';

class Navigation extends StatefulWidget {
  int? initialIndex;
  FinishPage finishPage;
  Navigation({
    Key? key,
    this.initialIndex,
    required this.finishPage,
  }) : super(key: key);

  @override
  NavigationState createState() => NavigationState();
}

class NavigationState extends State<Navigation> with TickerProviderStateMixin {
  late TabController tabController;
  late ScrollController scrollController;
  NavigationService navigation = NavigationService.instance;
  bool splashView = true;
  bool splashViewContainer = true;
  bool profileUpdateDateView = false;
  bool profileUpdateDateViewContainer = false;
  double scrollAnimationProgress = 0;
  int _current = 2;
  int _profileUpdateCurrent = 5;
  int _profileForUpdateCurrent = 5;
  bool inboxCheck = false;
  bool notificationCheck = false;
  bool mainIconCheck = false;
  String profileUpdateMessage = '';
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();

  late Animation<double> animation;
  late AnimationController controller;

  scrollListener() {
    if (scrollController.offset < -20) {
      setState(() {
        scrollAnimationProgress =
            double.parse((scrollController.offset.abs() * 0.25).toString());
      });
    } else {
      setState(() {
        scrollAnimationProgress = 0;
      });
    }
  }

  countDownTimer() async {
    for (int x = 2; x > 0; x--) {
      await Future.delayed(const Duration(seconds: 1)).then((_) {
        setState(() {
          _current -= 1;
          if (_current == 0) {
            splashView = false;
          }
        });
      });
    }
  }

  countProfileUpdateTimer() async {
    for (int x = _profileForUpdateCurrent; x > 0; x--) {
      await Future.delayed(const Duration(seconds: 1)).then((_) {
        setState(() {
          _profileUpdateCurrent -= 1;
          if (_profileUpdateCurrent < 1) {
            profileUpdateDateViewContainer = false;
          } else if (_profileUpdateCurrent > 0) {
            profileUpdateDateViewContainer = true;
          }
        });
      });
    }
  }

  @override
  void initState() {
    scrollController = ScrollController();
    scrollController.addListener(scrollListener);
    super.initState();

    splashViewContainer = widget.initialIndex! >= 1 ? false : true;
    tabController = TabController(
      initialIndex: widget.initialIndex ?? 1,
      length: 5,
      vsync: this,
    );
    tabController.index = widget.initialIndex ?? 1;
    tabController.addListener(() {
      setState(() {
        widget.initialIndex = tabController.index;
      });
    });
    countDownTimer();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Material(
          child: WillPopScope(
            onWillPop: () async {
              return false;
            },
            child: Scaffold(
              body: DefaultTabController(
                length: 5,
                child: buildScaffoldContainer(context),
              ),
            ),
          ),
        ),
        AnimatedPositioned(
          width: splashViewContainer ? null : 0,
          height: splashViewContainer ? null : 0,
          duration: const Duration(seconds: 0),
          child: AnimatedOpacity(
            onEnd: () {
              setState(() {
                splashViewContainer = false;
              });
            },
            // child: const SplashView(),
            duration: const Duration(seconds: 1),
            opacity: splashView ? 1.0 : 0.0,
          ),
        )
      ],
    );
  }

  Scaffold buildScaffoldContainer(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: [
          CustomScrollView(
            // key: PageStorageKey<String>('Feed'),
            controller: scrollController,
            slivers: [
              SliverToBoxAdapter(
                child: HomeView(
                  finishPage: widget.finishPage,
                ),
              )
            ],
          ),
          CustomScrollView(
            // key: PageStorageKey<String>('Applications'),
            controller: scrollController,
            slivers: [
              SliverToBoxAdapter(
                child: SuperView(),
              )
            ],
          ),
          CustomScrollView(
            // key: PageStorageKey<String>('Applications'),
            controller: scrollController,
            slivers: [
              SliverToBoxAdapter(
                child: LevelOrderView(),
              )
            ],
          ),
          CustomScrollView(
            // key: PageStorageKey<String>('Notification'),
            slivers: [
              SliverToBoxAdapter(
                child: MissionBadgesView(),
              )
            ],
          ),
          CustomScrollView(
            // key: const PageStorageKey<String>('Profile'),
            slivers: [
              SliverToBoxAdapter(
                child: ProfileView(),
              )
            ],
          )
        ],
      ),
      bottomSheet: BottomAppBar(
        height: 80,
        color: Colors.white,
        child: Padding(
          padding: context.navigationBottomPadding,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              InkWell(
                onTap: () {
                  setState(() {
                    scrollController.animateTo(0,
                        duration: Duration(milliseconds: 250),
                        curve: Curves.ease);
                    tabController.index = 0;
                  });
                },
                borderRadius: BorderRadius.circular(
                  context.navigationItemSize,
                ),
                child: SvgPicture.asset(
                  'asset/navigation/home.svg', //'asset/image/rocket_login.png',
                  fit: BoxFit.cover,
                  height: 35,
                ),
              ),
              InkWell(
                child: SvgPicture.asset(
                  'asset/navigation/lecture.svg', //'asset/image/rocket_login.png',
                  fit: BoxFit.cover,
                  height: 35,
                ),
                onTap: () {
                  setState(() {
                    tabController.index = 1;
                  });
                },
              ),
              InkWell(
                borderRadius: BorderRadius.circular(
                  context.navigationItemSize,
                ),
                child: SvgPicture.asset(
                  'asset/navigation/cup.svg', //'asset/image/rocket_login.png',
                  fit: BoxFit.cover,
                  height: 45,
                ),
                onTap: () {
                  setState(() {
                    tabController.index = 2;
                  });
                },
              ),
              InkWell(
                borderRadius: BorderRadius.circular(
                  context.navigationItemSize,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 13.0),
                  child: SvgPicture.asset(
                    'asset/navigation/rozet.svg', //'asset/image/rocket_login.png',
                    fit: BoxFit.cover,
                    height: 35,
                  ),
                ),
                onTap: () {
                  setState(() {
                    tabController.index = 3;
                  });
                },
              ),
              InkWell(
                borderRadius: BorderRadius.circular(
                  context.navigationItemSize,
                ),
                child: SvgPicture.asset(
                  'asset/navigation/profile.svg', //'asset/image/rocket_login.png',
                  fit: BoxFit.cover,
                  height: 35,
                ),
                onTap: () {
                  setState(() {
                    tabController.index = 4;
                  });
                },
              ),
            ],
          ),
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: Container(
      //   height: context.width * 0.17,
      //   width: context.width * 0.17,
      //   child: FloatingActionButton(
      //     splashColor: Colors.red,
      //     child: SvgPicture.asset(
      //       'asset/navigation/' +
      //           'cup' +
      //           '.svg', //'asset/image/rocket_login.png',
      //       fit: BoxFit.cover,
      //       height: context.width * 0.13 - 15,
      //       width: context.width * 0.13 - 15,
      //       color: context.appColor,
      //     ),
      //     backgroundColor: context.appColorYellow100,
      //     onPressed: () {},
      //     // shape: new BeveledRectangleBorder(
      //     //     borderRadius: new BorderRadius.circular(50.0)),
      //   ),
      // ),
    );
  }
}
