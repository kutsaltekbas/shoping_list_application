import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shoping_list_application/product/init/navigation/app_router.dart';
import 'package:shoping_list_application/product/init/notifier/application_provider.dart';
import 'package:shoping_list_application/product/init/notifier/theme_notifier.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [...ApplicationProvider.instance.dependItems],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        builder: (context, child) => MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Material App',
          theme: context.watch<ThemeNotifier>().currentTheme,
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
          builder: (context, child) {
            ScreenUtil.init(context);
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: child!,
            );
          },
        ),
      ),
    );
  }
}
