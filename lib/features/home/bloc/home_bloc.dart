import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shopping_cart_project/data/cart_items.dart';
import 'package:shopping_cart_project/data/grocery_data.dart';
import 'package:shopping_cart_project/data/wishlist_items.dart';

import '../models/home_product_data_model.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeInitialEvent>(_homeInitialEvent);
    on<HomeProductWishlistButtonClickedEvent>(_homeProductWishlistButtonClickedEvent);
    on<HomeProductCartButtonClickedEvent>(_homeProductCartButtonClickedEvent);
    on<HomeWishlistButtonNavigateEvent>(_homeWishlistButtonNavigateEvent);
    on<HomeCartButtonNavigateEvent>(_homeCartButtonNavigateEvent);
  }

  FutureOr<void> _homeInitialEvent(
      HomeInitialEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoadingState());
    await Future.delayed(Duration(seconds: 3));
    emit(HomeLoadedSuccessState(
        products: GroceryData.groceryProducts
            .map((e) => ProductDataModel(
                id: e['id'],
                name: e['name'],
                description: e['description'],
                price: e['price'],
                imageUrl: e['imageUrl']))
            .toList()));
  }
}

FutureOr<void> _homeProductWishlistButtonClickedEvent(
    HomeProductWishlistButtonClickedEvent event, Emitter<HomeState> emit) {
  print('Wishlist Product clicked');
  wishlistItems.add(event.clickedProduct);
  emit(HomeProductItemWishlistedActionState());
}

FutureOr<void> _homeProductCartButtonClickedEvent(
    HomeProductCartButtonClickedEvent event, Emitter<HomeState> emit) {
  print('Cart Product clicked');
  cartItems.add(event.clickedProduct);
  emit(HomeProductItemCartedActionState());
}

FutureOr<void> _homeWishlistButtonNavigateEvent(
    HomeWishlistButtonNavigateEvent event, Emitter<HomeState> emit) {
  print('Wishlist Navigate clicked');
  emit(HomeNavigateToWishlistPageActionState());
}

FutureOr<void> _homeCartButtonNavigateEvent(
    HomeCartButtonNavigateEvent event, Emitter<HomeState> emit) {
  print('Cart Navigate clicked');
  emit(HomeNavigateToCartPageActionState());
}
