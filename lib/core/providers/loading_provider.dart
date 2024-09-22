import 'package:flutter/material.dart';

class LoadingProvider extends ChangeNotifier {
  bool _isLoading = true;

  bool get isLoading => _isLoading;

  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  // Simulate loading process
  Future<void> loadContent() async {
    await Future.delayed(const Duration(seconds: 3)); // Simulate loading delay
    setLoading(false); // Set loading to false when done
  }
}
