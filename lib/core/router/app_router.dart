import 'package:auto_route/auto_route.dart';
import 'package:hotel_reservation/features/hotel-list/presentation/view/hotel_reservation_page.dart';
import 'package:hotel_reservation/features/reserve/presentation/view/reserve_page.dart';
import 'package:hotel_reservation/features/select-room/presentation/view/select_number_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HotelReservationRoute.page, initial: true),
        AutoRoute(page: SelectNumberRoute.page),
        AutoRoute(page: ReserveRoute.page),
      ];
}
