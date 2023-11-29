import 'package:flutter/material.dart';
import 'package:prototipo_x/components/favorites/favorites_components.dart';
import 'package:prototipo_x/components/headers/header_default.dart';

class Favorites extends StatefulWidget {
  const Favorites({super.key});

  @override
  State<Favorites> createState() => _FavoritesState();
}


class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
        HeaderDefault(text: "Favoritos"),
        Favorite_Component(),
      ],
      ),
    );
  }
}