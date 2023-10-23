import 'package:auto_route/auto_route.dart';
import '../../../feature/onboard/view/onboard_view.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [AutoRoute(page: OnBoardRoute.page, path: '/')];
}
