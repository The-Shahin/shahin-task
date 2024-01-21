// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HotelReservationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HotelReservationPage(),
      );
    },
    ReserveRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ReservePage(),
      );
    },
    SelectNumberRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SelectNumberPage(),
      );
    },
  };
}

/// generated route for
/// [HotelReservationPage]
class HotelReservationRoute extends PageRouteInfo<void> {
  const HotelReservationRoute({List<PageRouteInfo>? children})
      : super(
          HotelReservationRoute.name,
          initialChildren: children,
        );

  static const String name = 'HotelReservationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ReservePage]
class ReserveRoute extends PageRouteInfo<void> {
  const ReserveRoute({List<PageRouteInfo>? children})
      : super(
          ReserveRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReserveRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SelectNumberPage]
class SelectNumberRoute extends PageRouteInfo<void> {
  const SelectNumberRoute({List<PageRouteInfo>? children})
      : super(
          SelectNumberRoute.name,
          initialChildren: children,
        );

  static const String name = 'SelectNumberRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
