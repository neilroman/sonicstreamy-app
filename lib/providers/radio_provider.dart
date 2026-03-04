import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RadioProvider with ChangeNotifier {
  // State for radio functionality
  bool _isPlaying = false;
  String _currentStation = '';
  double _volume = 1.0;

  bool get isPlaying => _isPlaying;
  String get currentStation => _currentStation;
  double get volume => _volume;

  void play(String station) {
    _currentStation = station;
    _isPlaying = true;
    notifyListeners();
  }

  void pause() {
    _isPlaying = false;
    notifyListeners();
  }

  void setVolume(double volume) {
    _volume = volume.clamp(0.0, 1.0); // Ensure volume is between 0.0 and 1.0
    notifyListeners();
  }
}