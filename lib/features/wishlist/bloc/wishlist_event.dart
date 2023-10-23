part of 'wishlist_bloc.dart';

@immutable
abstract class WishlistEvent {}

class WishlistInitialEvent extends WishlistEvent {}

class WishlistToCartButtonEventClicked extends WishlistEvent {
  final ProductDataModel clickedProduct;

  WishlistToCartButtonEventClicked({required this.clickedProduct});
}

class RemoveFromWishlistEvent extends WishlistEvent {
  final ProductDataModel productDataModel;

  RemoveFromWishlistEvent({required this.productDataModel});
}
