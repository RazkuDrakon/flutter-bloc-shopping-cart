import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_cart_project/features/wishlist/bloc/wishlist_bloc.dart';

import 'wishlist_tile_widget.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  final WishlistBloc wishlistBloc = WishlistBloc();

  @override
  void initState() {
    wishlistBloc.add(WishlistInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.teal,
      title: Text('Wishlist items'),
    ),
        body: BlocConsumer<WishlistBloc, WishlistState>(
          bloc: wishlistBloc,
          listener: (context, state) {},
          listenWhen: (previous, current) => current is WishlisActiontState,
          buildWhen: (previous, current) => current is !WishlisActiontState,
          builder: (context, state) {
            switch (state.runtimeType) {
              case WishlistSuccessState:
                final successState = state as WishlistSuccessState;
                return ListView.builder(
                    itemCount: successState.wishlistItems.length,
                    itemBuilder: (context, index) {
                      return WishlistTileWidget(
                        wishlistBloc: wishlistBloc,
                        productDataModel: successState.wishlistItems[index],
                      );
                    });
              default:
            }
            return Container();
          },
        ));
  }
}
