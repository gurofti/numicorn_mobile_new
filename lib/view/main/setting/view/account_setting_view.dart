import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:numicorn_mobile/core/base/view/base_widget.dart';
import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/extension/string_extension.dart';
import 'package:numicorn_mobile/core/global/validation/isEmail.dart';
import 'package:numicorn_mobile/core/init/lang/locale_keys.g.dart';
import 'package:numicorn_mobile/view/_product/_widgets/button/fancy_button.dart';
import 'package:numicorn_mobile/view/_product/_widgets/container/app/app_container.dart';
import 'package:numicorn_mobile/view/_product/_widgets/input/fancy_text_input.dart';
import 'package:numicorn_mobile/view/_product/_widgets/loading/loading_spink.dart';
import 'package:numicorn_mobile/view/main/profile/view/profile_view.dart';
import 'package:numicorn_mobile/view/main/setting/view/setting_view.dart';
import 'package:numicorn_mobile/view/main/setting/view_model/setting_view_model.dart';
import '../../../../core/extension/color_extension.dart';
import '../../../../core/extension/context_extension.dart';
import '../../../../core/extension/font_extension.dart';

class AccountSettingView extends StatelessWidget {
  const AccountSettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<SettingViewModel>(
      viewModel: SettingViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
        model.fetchProfileService();
      },
      onPageBuilder: (BuildContext context, SettingViewModel viewModel) =>
          AppContainer(
        header: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          width: context.width,
          height: 50,
          child: SettingView().buildHeader(context, "Hesap Ayarları"),
        ),
        body: Observer(builder: (_) {
          return Container(
            color: Colors.white,
            child: buildContent(context, viewModel),
          );
        }),
      ),
    );
  }

  Widget buildContent(BuildContext context, SettingViewModel viewModel) {
    return Form(
      key: viewModel.formState,
      child: Container(
        width: context.width,
        height: context.height,
        color: Colors.white,
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: FancyTextInput(
                labelText: "Adınız",
                hintText: "Adınız",
                fieldController: viewModel.nameController,
                validation: (value) => value!.isNotEmpty
                    ? null
                    : LocaleKeys.form_validation_required.tr(),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: FancyTextInput(
                labelText: "Soyadınız",
                hintText: "Soyadınız",
                fieldController: viewModel.surnameController,
                validation: (value) => value!.isNotEmpty
                    ? null
                    : LocaleKeys.form_validation_required.tr(),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: FancyTextInput(
                labelText: LocaleKeys.pages_register_email.tr(),
                hintText: LocaleKeys.pages_register_email.tr(),
                fieldController: viewModel.emailController,
                validation: (value) => value!.isNotEmpty
                    ? isEmail(value)
                        ? null
                        : LocaleKeys.form_validation_email.tr()
                    : LocaleKeys.form_validation_required.tr(),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
              ),
              child: FancyTextInput(
                labelText: LocaleKeys.pages_register_userName.tr(),
                hintText: LocaleKeys.pages_register_userName.tr(),
                fieldController: viewModel.userNameController,
                validation: (value) => value!.isNotEmpty
                    ? (value.length < 6)
                        ? LocaleKeys.form_validation_min
                            .tr(namedArgs: {'min': '6'})
                        : null
                    : LocaleKeys.form_validation_required.tr(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: FancyTextInput(
                onTap: () {
                  viewModel.passwordChange();
                },
                labelText: LocaleKeys.pages_register_password.tr(),
                hintText: LocaleKeys.pages_register_password.tr(),
                fieldController: viewModel.passwordController,
                obscureText: viewModel.isLockOpen,
                suffixIcon: GestureDetector(
                  onTap: () => viewModel.isLockOpen = !viewModel.isLockOpen,
                  child: Observer(builder: (_) {
                    return Icon(
                      viewModel.isLockOpen
                          ? Icons.remove_red_eye_rounded
                          : Icons.remove_red_eye_outlined,
                      color: context.appColor,
                    );
                  }),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(38.0),
              child: FancyButton(
                child: SizedBox(
                  width: context.width * 0.45,
                  child: Center(
                    child: !viewModel.formLoading
                        ? Text(
                            "Kaydet",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'PoppinsBold',
                            ),
                          )
                        : const LoadingSpink(),
                  ),
                ),
                size: 50,
                color: context.appColor,
                onPressed: () {
                  viewModel.accountUpdate();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
