import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {

    on<HomeProductWishlistButtonClickedEvent>(
        _homeProductWishlistButtonClickedEvent);

    on<HomeProductCartButtonClickedEvent>(
        _homeProductCartButtonClickedEvent);

    on<HomeWishlistButtonNavigateEvent>(
      _homeWishlistButtonNavigateEvent);

    on<HomeCartButtonNavigateEvent>(
      _homeCartButtonNavigateEvent);
  }

  FutureOr<void> _homeProductWishlistButtonClickedEvent(HomeProductWishlistButtonClickedEvent event, Emitter<HomeState> emit) {
    print('Wishlist Product clicked');
  }

  FutureOr<void> _homeProductCartButtonClickedEvent(HomeProductCartButtonClickedEvent event, Emitter<HomeState> emit) {
    print('Cart Product clicked');
  }

  FutureOr<void> _homeWishlistButtonNavigateEvent(HomeWishlistButtonNavigateEvent event, Emitter<HomeState> emit) {
    print('Wishlist Navigate clicked');
  }

  FutureOr<void> _homeCartButtonNavigateEvent(HomeCartButtonNavigateEvent event, Emitter<HomeState> emit) {
    print('Cart Navigate clicked');
  }
}
