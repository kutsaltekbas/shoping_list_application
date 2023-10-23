import 'package:auto_route/auto_route.dart';
import '../../../feature/onboard/view/onboard_view.dart';
import '../../../feature/sign_up/view/sign_up_view.dart';
import '../../../feature/login/view/login_view.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: OnBoardRoute.page, path: '/'),
        AutoRoute(page: SignUpRoute.page, path: '/signUp'),
        AutoRoute(page: LoginRoute.page, path: '/login'),
      ];
}
