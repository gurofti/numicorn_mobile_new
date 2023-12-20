import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/constants/navigation/navigation_constants.dart';
import 'package:numicorn_mobile/core/extension/string_extension.dart';
import 'package:numicorn_mobile/view/authentication/auth/view/auth_view.dart';
import 'package:numicorn_mobile/view/authentication/detail/view/detail_view.dart';
import 'package:numicorn_mobile/view/authentication/forgot/view/forgot_view.dart';
import 'package:numicorn_mobile/view/authentication/forgot_refresh/model/forgot_refresh_request_model.dart';
import 'package:numicorn_mobile/view/authentication/forgot_refresh/view/forgot_refresh_view.dart';
import 'package:numicorn_mobile/view/authentication/login/view/login_view.dart';
import 'package:numicorn_mobile/view/authentication/register/view/register_view.dart';
import 'package:numicorn_mobile/view/main/home/model/home_units_model.dart';
import 'package:numicorn_mobile/view/main/lecture/view/lecture_view.dart';
import 'package:numicorn_mobile/view/main/setting/view/account_password_view.dart';
import 'package:numicorn_mobile/view/main/setting/view/account_setting_view.dart';
import 'package:numicorn_mobile/view/main/setting/view/notification_setting_view.dart';
import 'package:numicorn_mobile/view/main/setting/view/setting_view.dart';
import 'package:numicorn_mobile/view/main/super/view/super_statistics_view.dart';
import 'package:numicorn_mobile/view/main/super/view/super_trial_create_view.dart';
import 'package:numicorn_mobile/view/main/super/view/super_trials_view.dart';
import 'package:numicorn_mobile/view/main/super/view/super_wrongs_view.dart';
import 'package:numicorn_mobile/view/navigation/navigation.dart';
import 'package:numicorn_mobile/view/question/view/question_view.dart';
import 'package:numicorn_mobile/view/question/view/transition/achievement_page/achievement_page.dart';
import 'package:numicorn_mobile/view/question/view/transition/cup_page/cup_page.dart';
import 'package:numicorn_mobile/view/question/view/transition/daily_series_page/daily_series_page.dart';
import 'package:numicorn_mobile/view/question/view/transition/diamond_page/diamond_page.dart';
import 'package:numicorn_mobile/view/question/view/transition/doping_page/doping_page.dart';
import 'package:numicorn_mobile/view/question/view/transition/doping_reload_page/view/doping_reload_view.dart';
import 'package:numicorn_mobile/view/question/view/transition/finish_lesson_page/finish_lesson_page.dart';
import 'package:numicorn_mobile/view/question/view/transition/question_answer/view/question_answer_view.dart';
import 'package:numicorn_mobile/view/question/view/transition/question_answer_detail/view/question_answer_detail_view.dart';
import 'package:numicorn_mobile/view/question/view/transition/rosette_page/rosette_page.dart';
import 'package:numicorn_mobile/view/question/view/transition/target_page/target_page.dart';
import 'package:numicorn_mobile/view/question/view/transition/task_page/task_page.dart';
import 'package:numicorn_mobile/view/question/view/transition/transition_model.dart';

import '../../constants/enums/locale_keys_enum.dart';
import '../cache/locale_manager.dart';

class NavigationRoute {
  static NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get intance => _instance;

  NavigationRoute._init();

  LocaleManager localeManager = LocaleManager.instance;

  Route<dynamic> generateRoute(RouteSettings args) {
    final token = localeManager.getStringValue(PreferencesKeys.TOKEN);
    print("token " + token);

    print("Route: " + args.name!);
    // return normalNavigate(const MyHomePage());

    switch (args.name) {
      case NavigationConstants.AUTH:
        print("buradaym2");
        if (!token.isNullOrEmpty) {
          print("args: " + args.arguments.toString());
          return normalNavigate(Navigation(
            initialIndex: 0,
            finishPage: FinishPage(page: '', y: 0),
          ));
        }
        return normalNavigate(const AuthView());

      case NavigationConstants.LOGIN:
        return normalNavigate(const LoginView());

      case NavigationConstants.REGISTER:
        return normalNavigate(const RegisterView());

      case NavigationConstants.DETAIL:
        return normalNavigate(const DetailView());

      case NavigationConstants.FORGOT:
        return normalNavigate(const ForgotView());

      case NavigationConstants.FORGOT_REFRESH:
        return normalNavigate(ForgotRefreshView(
          args.arguments as ForgotRefreshRequestModel,
        ));

      case NavigationConstants.SETTING:
        return normalNavigate(const SettingView());

      case NavigationConstants.LECTURE:
        return normalNavigate(const LectureView());

      case NavigationConstants.SUPER_WRONGS:
        return normalNavigate(const SuperWrongsView());

      case NavigationConstants.SUPER_STATISTICS:
        return normalNavigate(const SuperStatisticsView());

      case NavigationConstants.SUPER_TRIALS:
        return normalNavigate(const SuperTrialsView());

      case NavigationConstants.SUPER_TRIAL_CREATE:
        return normalNavigate(const SuperTrialCreateView());

      case NavigationConstants.ACCOUNT_SETTING_VIEW:
        return normalNavigate(const AccountSettingView());

      case NavigationConstants.ACCOUNT_PASSWORD_VIEW:
        return normalNavigate(const AccountPasswordView());

      case NavigationConstants.NOTIFICATION_SETTING_VIEW:
        return normalNavigate(const NotificationSettingView());

      case NavigationConstants.QUESTION:
        return normalNavigate(QuestionView(args.arguments as Sections));

      case NavigationConstants.QUESTION_ANSWER:
        return normalNavigate(QuestionAnswerView(args.arguments as Sections));

      case NavigationConstants.QUESTION_ANSWER_DETAIL:
        return normalNavigate(
            QuestionAnswerDetailView(args.arguments as Sections));

      case NavigationConstants.TRANSITION_CUP_PAGE:
        return normalNavigate(
          CupPage(args.arguments as TransitionModel),
        );

      case NavigationConstants.TRANSITION_DAILY_SERIES_PAGE:
        return normalNavigate(
          DailySeriesPage(args.arguments as TransitionModel),
        );

      case NavigationConstants.TRANSITION_DIAMOND_PAGE:
        return normalNavigate(
          DiamondPage(args.arguments as TransitionModel),
        );

      case NavigationConstants.TRANSITION_DOPING_RELOAD_PAGE:
        return normalNavigate(
            DopingReloadView(args.arguments as TransitionModel));

      case NavigationConstants.TRANSITION_FINISH_LESSON_PAGE:
        return normalNavigate(
          FinishLessonPage(args.arguments as TransitionModel),
        );

      // case NavigationConstants.QUESTION_ANSWER:
      //   return normalNavigate(
      //     QuestionAnswerView(args.arguments as QuestionModel),
      //   );

      case NavigationConstants.TRANSITION_TASK_PAGE:
        return normalNavigate(
          TaskPage(args.arguments as TransitionModel),
        );

      case NavigationConstants.TRANSITION_TARGET_PAGE:
        return normalNavigate(
          TargetPage(args.arguments as TransitionModel),
        );

      case NavigationConstants.TRANSITION_ACHIEVEMENT_PAGE:
        return normalNavigate(
          AchievementPage(args.arguments as TransitionModel),
        );

      case NavigationConstants.TRANSITION_ROSETTE_PAGE:
        return normalNavigate(
          RosettePage(args.arguments as TransitionModel),
        );

      case NavigationConstants.TRANSITION_DOPING_PAGE:
        return normalNavigate(
          DopingPage(args.arguments as TransitionModel),
        );

      case NavigationConstants.HOME:
        return normalNavigate(
          Navigation(
            initialIndex: 0,
            finishPage: args.arguments != Null
                ? args.arguments as FinishPage
                : FinishPage(page: '', y: 0),
          ),
        );

      default:
        var arguments = 0;
        if (args.arguments != null) {
          arguments = int.parse(args.arguments.toString());
        }
        print("buradaym");
        return normalNavigate(
          Navigation(
            initialIndex: arguments,
            finishPage: args.arguments != Null
                ? args.arguments as FinishPage
                : FinishPage(page: '', y: 0),
          ),
        );
    }
  }

  MaterialPageRoute normalNavigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}
