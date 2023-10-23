import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shopping_cart_project/data/cart_items.dart';

import '../../../data/wishlist_items.dart';
import '../../home/models/home_product_data_model.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistInitial()) {
    on<WishlistInitialEvent>(wishlistInitialEvent);
    on<RemoveFromWishlistEvent>(removeFromWishlistevent);
    on<WishlistToCartButtonEventClicked>(wishlistToCartButtonEventClicked);
  }

  FutureOr<void> wishlistInitialEvent(WishlistInitialEvent event, Emitter<WishlistState> emit) {
    emit(WishlistSuccessState(wishlistItems: wishlistItems));
  }

  FutureOr<void> removeFromWishlistevent(RemoveFromWishlistEvent event, Emitter<WishlistState> emit) {
    wishlistItems.remove(event.productDataModel);
    emit(WishlistSuccessState(wishlistItems: wishlistItems));
  }

  FutureOr<void> wishlistToCartButtonEventClicked(WishlistToCartButtonEventClicked event, Emitter<WishlistState> emit) {
    cartItems.add(event.clickedProduct);
    emit(WishlistSuccessState(wishlistItems: wishlistItems));
  }
}
