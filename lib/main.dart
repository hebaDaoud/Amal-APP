import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:workapp/bindings/initialbindings.dart';
import 'package:workapp/constants/appcolor.dart';
import 'package:workapp/helper/services/services.dart';
import 'package:workapp/localization/mylocalization.dart';
import 'package:workapp/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        translations: MyLocalization(),
        // locale: const Locale("ar"),
        color: AppColor.primaryColor,
        // theme: ThemeData(fontFamilyq : "IBMPlexSansArabic"),
        // textDirection: TextDirection.rtl,
        initialBinding: InitialBindings(),
        getPages: routes,
      ),
    );
  }
}
