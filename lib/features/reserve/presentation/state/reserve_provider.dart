import 'package:flutter/material.dart';
import 'package:hotel_reservation/features/reserve/presentation/state/tourist_provider.dart';

class ReserveProvider extends ChangeNotifier {
  final List<TouristInfo> _tourists = [
    TouristInfo(
      index: 0,
    ),
  ];
  List<TouristInfo> get tourists => _tourists;

  void addTourist(TouristInfo tourist) {
    _tourists.add(tourist);
    notifyListeners();
  }

  void removeTourist(int index) {
    _tourists.removeAt(index);
    notifyListeners();
  }
}
