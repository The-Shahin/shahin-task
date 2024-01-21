import 'package:flutter/material.dart';

class TouristInfo {
  final int index;
  final String? firstName;
  final String? lastName;
  final String? birthdate;
  final String? nationality;
  final String? passportNumber;
  final String? passportExpiryDate;

  TouristInfo({
    required this.index,
    this.firstName,
    this.lastName,
    this.birthdate,
    this.nationality,
    this.passportNumber,
    this.passportExpiryDate,
  });
}

class TouristProvider extends ChangeNotifier {
  TouristInfo _info = TouristInfo(index: 0);

  String? _firstName;
  String? _lastName;
  String? _birthdate;
  String? _nationality;
  String? _passportNumber;
  String? _passportExpiryDate;
  bool _tileCollapsed = false;

  TouristInfo? get touristInfo => TouristInfo(
        index: _info.index,
        firstName: _info.firstName ?? _firstName,
        lastName: _info.lastName ?? _lastName,
        birthdate: _info.birthdate ?? _birthdate,
        nationality: _info.nationality ?? _nationality,
        passportNumber: _info.passportNumber ?? _passportNumber,
        passportExpiryDate: _info.passportExpiryDate ?? _passportExpiryDate,
      );

  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get birthdate => _birthdate;
  String? get nationality => _nationality;
  String? get passportNumber => _passportNumber;
  String? get passportExpiryDate => _passportExpiryDate;
  bool get tileCollapsed => _tileCollapsed;

  set info(TouristInfo? value) {
    _info = value ?? TouristInfo(index: 0);
    notifyListeners();
  }

  set firstName(String? value) {
    _firstName = value;
    notifyListeners();
  }

  set lastName(String? value) {
    _lastName = value;
    notifyListeners();
  }

  set birthdate(String? value) {
    _birthdate = value;
    notifyListeners();
  }

  set nationality(String? value) {
    _nationality = value;
    notifyListeners();
  }

  set passportNumber(String? value) {
    _passportNumber = value;
    notifyListeners();
  }

  set passportExpiryDate(String? value) {
    _passportExpiryDate = value;
    notifyListeners();
  }

  toggleTileCollapsed() {
    _tileCollapsed = !_tileCollapsed;
    notifyListeners();
  }
}
