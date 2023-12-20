import 'dart:math' as math;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:numicorn_mobile/core/base/view/base_widget.dart';
import 'package:numicorn_mobile/core/extension/font_extension.dart';
import 'package:numicorn_mobile/core/global/validation/isEmail.dart';
import 'package:numicorn_mobile/view/_product/_widgets/authentication/container/auth_container.dart';
import 'package:numicorn_mobile/view/_product/_widgets/authentication/container/header/auth_container_header.dart';
import 'package:numicorn_mobile/view/_product/_widgets/authentication/text/button_alt_text.dart';
import 'package:numicorn_mobile/view/_product/_widgets/loading/loading_spink.dart';
import 'package:numicorn_mobile/view/authentication/forgot_refresh/model/forgot_refresh_request_model.dart';

import '../../../../core/extension/color_extension.dart';
import '../../../../core/extension/context_extension.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import '../../../_product/_widgets/button/fancy_button.dart';
import '../../../_product/_widgets/input/fancy_text_input.dart';
import '../view_model/forgot_refresh_view_model.dart';

class ForgotRefreshView extends StatelessWidget {
  ForgotRefreshRequestModel requestModel;
  ForgotRefreshView(this.requestModel, {Key? key}) : super(key: key);

  int getCurrentTimestamp() {
    DateTime now = DateTime.now();
    return now.millisecondsSinceEpoch ~/ 1000; // Milisaniyeyi saniyeye çevirme
  }

  int getFutureTimestamp(int minutes) {
    DateTime now = DateTime.now();
    DateTime futureTime = now.add(Duration(minutes: minutes));
    return futureTime.millisecondsSinceEpoch ~/ 1000;
  }

  @override
  Widget build(BuildContext context) {
    var forgotTime = getFutureTimestamp(15);
    print('# requestModel' + requestModel.email.toString());
    // bu alan silinecek...
    var forgotRefresh = true;
    if (forgotRefresh != null) {
      // var division = forgotRefresh.split('/');
      // forgotEposta = division[0];
      // forgotToken = division[1];
      // var expiresMinute = division[2];
      var nowTime = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      forgotTime = forgotTime - nowTime;
    }

    return BaseView<ForgotRefreshViewModel>(
      viewModel: ForgotRefreshViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
        model.emailController.text = requestModel.email.toString();
      },
      onPageBuilder: (BuildContext context, ForgotRefreshViewModel viewModel) =>
          Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: context.height,
                child: AuthContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            child: SafeArea(
                              child: Padding(
                                padding:
                                    EdgeInsets.only(top: context.height * 0.05),
                                child: SvgPicture.asset(
                                  'asset/auth/forgot.svg', //'asset/image/rocket_login.png',
                                  fit: BoxFit.cover,
                                  height: context.width * 0.4,
                                ),
                              ),
                            ),
                          ),
                          AuthContainerHeader(header: "Yeni Şifre Oluştur"),
                        ],
                      ),
                      // CountDownTimer(
                      //   forgotTime: forgotTime,
                      //   finishTime: () {
                      //     // viewModel.fetchRefreshTokenService();
                      //     print("FINISH");
                      //   },
                      // ),
                      Center(
                        child: Observer(builder: (_) {
                          return Form(
                            key: viewModel.formState,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            child: Column(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: FancyTextInput(
                                        labelText:
                                            LocaleKeys.pages_forgot_email.tr(),
                                        hintText:
                                            LocaleKeys.pages_forgot_email.tr(),
                                        fieldController:
                                            viewModel.emailController,
                                        validation: (value) => value!.isNotEmpty
                                            ? isEmail(value)
                                                ? null
                                                : LocaleKeys
                                                    .form_validation_email
                                                    .tr()
                                            : LocaleKeys
                                                .form_validation_required
                                                .tr(),
                                        keyboardType:
                                            TextInputType.emailAddress,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: FancyTextInput(
                                        labelText: LocaleKeys
                                            .pages_forgot_refresh_newPassword
                                            .tr(),
                                        hintText: LocaleKeys
                                            .pages_forgot_refresh_newPassword
                                            .tr(),
                                        fieldController:
                                            viewModel.passwordController,
                                        validation: (value) => value!.isNotEmpty
                                            ? (value.length < 6)
                                                ? LocaleKeys.form_validation_min
                                                    .tr(namedArgs: {'min': '6'})
                                                : null
                                            : LocaleKeys
                                                .form_validation_required
                                                .tr(),
                                        obscureText: viewModel.isLockOpen,
                                        suffixIcon: Observer(builder: (_) {
                                          return GestureDetector(
                                            onTap: () {
                                              viewModel.isLockOpen =
                                                  !viewModel.isLockOpen;
                                            },
                                            child: Icon(
                                              viewModel.isLockOpen
                                                  ? Icons.remove_red_eye_rounded
                                                  : Icons
                                                      .remove_red_eye_outlined,
                                              color: context.appColor,
                                            ),
                                          );
                                        }),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: FancyTextInput(
                                        labelText: "Güvenlik Kodu",
                                        hintText:
                                            "E-posta adresinize gönderilen güvenlik kodu",
                                        fieldController:
                                            viewModel.codeController,
                                        validation: (value) => value!.isNotEmpty
                                            ? (value.length < 6)
                                                ? LocaleKeys.form_validation_min
                                                    .tr(namedArgs: {'min': '6'})
                                                : null
                                            : LocaleKeys
                                                .form_validation_required
                                                .tr(),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          );
                        }),
                      ),
                      Column(
                        children: [
                          FancyButton(
                            child: SizedBox(
                              width: context.width * 0.5,
                              child: Observer(builder: (_) {
                                return Center(
                                  child: viewModel.loading
                                      ? LoadingSpink()
                                      : Text(
                                          LocaleKeys
                                              .pages_forgot_refresh_formButton
                                              .tr(),
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontFamily: 'PoppinsBold',
                                          ),
                                        ),
                                );
                              }),
                            ),
                            size: 50,
                            color: context.appColor,
                            onPressed: () {
                              viewModel.handleRefreshPassword();
                            },
                          ),
                          ButtonAltText(
                            onTap: () => viewModel.loginToPage(),
                            text: LocaleKeys
                                .pages_forgot_refresh_rememberedMyPassword
                                .tr(),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CountDownTimer extends StatefulWidget {
  int? forgotTime;
  dynamic? finishTime;
  CountDownTimer({Key? key, this.forgotTime, this.finishTime})
      : super(key: key);
  @override
  _CountDownTimerState createState() => _CountDownTimerState();
}

class _CountDownTimerState extends State<CountDownTimer>
    with TickerProviderStateMixin {
  late AnimationController controller;

  dynamic timerValue;
  String get timerString {
    // setState(() {
    //   timerValue = controller.value;
    // });
    Duration duration = controller.duration! * controller.value;
    return '${duration.inMinutes}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(
          seconds: (widget.forgotTime! <= 0 ? 0 : widget.forgotTime) ?? 0),
    );
    controller.reverse(from: controller.value == 0.0 ? 1.0 : controller.value);
    controller.addListener(() {
      if (controller.value <= 0) {
        widget.finishTime();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return buildAnimatedBuilder(themeData);
  }

  AnimatedBuilder buildAnimatedBuilder(ThemeData themeData) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    height: 70,
                    child: Align(
                      alignment: FractionalOffset.center,
                      child: AspectRatio(
                        aspectRatio: 1.0,
                        child: Stack(
                          children: <Widget>[
                            Positioned.fill(
                              child: CustomPaint(
                                painter: CustomTimerPainter(
                                  animation: controller,
                                  backgroundColor: context.appColorGray,
                                  color: context.appColor,
                                ),
                              ),
                            ),
                            Align(
                              alignment: FractionalOffset.center,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    timerString,
                                    style: TextStyle(
                                        fontFamily: context.fontFamily400,
                                        fontSize: 13.0,
                                        color: context.appColor),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class CustomTimerPainter extends CustomPainter {
  CustomTimerPainter({
    required this.animation,
    required this.backgroundColor,
    required this.color,
  }) : super(repaint: animation);

  final Animation<double> animation;
  final Color backgroundColor, color;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = backgroundColor
      ..strokeWidth = 5.0
      ..strokeCap = StrokeCap.butt
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(size.center(Offset.zero), size.width / 2.0, paint);
    paint.color = color;
    double progress = (1.0 - animation.value) * 2 * math.pi;
    canvas.drawArc(Offset.zero & size, math.pi * 1.5, -progress, false, paint);
  }

  @override
  bool shouldRepaint(CustomTimerPainter old) {
    return animation.value != old.animation.value ||
        color != old.color ||
        backgroundColor != old.backgroundColor;
  }
}
