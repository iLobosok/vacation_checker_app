import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'navigation_bar_items.dart';
part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState(NavbarItem.home, 0));

  void getNavBarItem(NavbarItem navbarItem) {
    switch (navbarItem) {
      case NavbarItem.home:
        emit(NavigationState(NavbarItem.home, 0));
        break;
      case NavbarItem.search:
        emit(NavigationState(NavbarItem.search, 1));
        break;
      case NavbarItem.alers:
        emit(NavigationState(NavbarItem.alers, 2));
        break;
      case NavbarItem.settings:
        emit(NavigationState(NavbarItem.settings, 3));
        break;
    }
  }
}
