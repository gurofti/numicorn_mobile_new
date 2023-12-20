import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/extension/font_extension.dart';

import '../../../../core/extension/color_extension.dart';
import '../../../core/init/lang/locale_keys.g.dart';
import '../../../core/init/navigation/navigation_service.dart';

mixin ServiceHelper {
  NavigationService navigation = NavigationService.instance;

  showMessageContext(BuildContext context, dynamic response,
      {String? message, snacbarType}) {
    print("status code: " + response.statusCode.toString());
    if (response.statusCode == 200) {
      print("response.data 2: ");
      print(response.data.message);
      scaffoldMessageContextItem(context, response.data.message,
          snacbarType:
              snacbarType == null || snacbarType == true ? true : false);
    } else if (response.statusCode == 404 || response.statusCode == 409) {
      // print("message: " + response.data!.message);
      scaffoldMessageContextItem(
        context,
        response.errors['message'],
        snacbarType: snacbarType,
      );
    } else if (response.statusCode >= 400 || response.statusCode <= 499) {
      response.errors['errors'].forEach(
        (error) => {
          scaffoldMessageContextItem(
            context,
            error[error.keys.toList().first],
            snacbarType: snacbarType,
          )
        },
      );
      return;
    } else if (response.statusCode == 500) {
      scaffoldMessageContextItem(
        context,
        LocaleKeys.response_global__500.tr(),
        snacbarType: snacbarType,
      );
    }
    return;
  }

  scaffoldMessageContextItem(BuildContext context, message, {snacbarType}) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Expanded(
              flex: 7,
              child: Text(
                message,
                style: TextStyle(
                  fontSize: serviceSnackbarText,
                  height: 1.4,
                  fontFamily: context.fontFamily500,
                  color: (snacbarType != null && snacbarType != false)
                      ? Colors.white
                      : Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Icon(
                (snacbarType != null && snacbarType != false)
                    ? Icons.done_all_outlined
                    : Icons.close_outlined,
                color: (snacbarType != null && snacbarType != false)
                    ? Colors.white
                    : Colors.white,
              ),
            )
          ],
        ),
        duration: const Duration(milliseconds: 4000),
        elevation: 1000,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
          side: BorderSide(
            width: 2,
            color: (snacbarType != null && snacbarType != false)
                ? appColor
                : Colors.red,
          ),
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: (snacbarType != null && snacbarType != false)
            ? appColor
            : Colors.red,
      ),
    );
  }
}
