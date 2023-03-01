import 'package:flutter_riverpod/flutter_riverpod.dart';

final bottomNavigationProvider =
    StateNotifierProvider.autoDispose<BottomNavigationController, int>(
  (ref) => BottomNavigationController(),
);

class BottomNavigationController extends StateNotifier<int> {
  BottomNavigationController() : super(0);

  void setPosition(int position) {
    state = position;
  }
}