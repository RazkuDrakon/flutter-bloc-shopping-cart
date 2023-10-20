import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_cart_project/features/home/bloc/home_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeBloc homeBloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      //listenWhen: (previous, current){},
      //buildWhen: (previous, current){},
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
              title: Text('Grocery UI App'),
            actions: [
              IconButton(onPressed: (){
                homeBloc.add(HomeWishlistButtonNavigateEvent());
              }, icon: Icon(Icons.favorite_border)),
              IconButton(onPressed: (){
                homeBloc.add(HomeCartButtonNavigateEvent());
              }, icon: Icon(Icons.shopping_bag_outlined)),
            ],
          ),
        );
      },
    );
  }
}