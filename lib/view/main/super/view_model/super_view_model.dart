import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:numicorn_mobile/core/base/model/base_view_model.dart';
import 'package:numicorn_mobile/core/constants/navigation/navigation_constants.dart';
import 'package:numicorn_mobile/view/main/super/view/super_view.dart';

part 'super_view_model.g.dart';

class SuperViewModel = _SuperViewModelBase with _$SuperViewModel;

abstract class _SuperViewModelBase extends BaseViewModel with Store {
  @override
  void setContext(BuildContext context) => this.buildContext = context;

  @override
  void init() {}

  List<SuperItem> items = [
    SuperItem(
      title: "Konu Anlatım",
      description:
          "Her seviyeden öğrenciye hitap eden açıklamalarla matematik konularını kavrama imkanı.",
      path: "asset/super/book.png",
      link: NavigationConstants.LECTURE,
    ),
    SuperItem(
      title: "Hatalarım",
      description:
          "Yapılan hataları anlamak ve bu hatalardan öğrenmek için bir alan.",
      path: "asset/super/wrongs.png",
      link: NavigationConstants.SUPER_WRONGS,
    ),
    SuperItem(
      title: "İstatistiklerim",
      description:
          "Genel matematik performansınızı izlemenizi sağlayan bir bölüm.",
      path: "asset/super/statistics.png",
      link: NavigationConstants.SUPER_STATISTICS,
    ),
    SuperItem(
      title: "Favorilerim",
      description:
          "Öne çıkan matematik sorularını işaretleyerek kişisel öğrenme planınızı oluşturabileceğiniz bir bölüm.",
      path: "asset/super/favorite.png",
      link: NavigationConstants.LECTURE,
    ),
    SuperItem(
      title: "Denemelerim",
      description:
          "Matematik bilgisini farklı zorluklarda test et, performans analizi ile eksik konulara odaklan.",
      path: "asset/super/quiz.png",
      link: NavigationConstants.SUPER_TRIALS,
    ),
  ];

  @action
  toPage(String page) async {
    await navigation.navigateToPage(path: page);
  }
}
