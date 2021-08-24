import 'package:flutter/material.dart';

import 'package:flutterfood/screens/auth/models/Restaurant.dart';
import 'package:flutterfood/screens/auth/restaurants/widgets/restaurantCard.dart';

class RestaurantsPage extends StatefulWidget {
  RestaurantsPage({Key? key}) : super(key: key);

  @override
  _RestaurantsPageState createState() => _RestaurantsPageState();
}

class _RestaurantsPageState extends State<RestaurantsPage> {
  List<Restaurant> _restaurants = [
    new Restaurant(
      name: 'Restaurant A',
      image: 'Image A',
      contact: 'Contact A',
      uuid: 'ID A',
    ),
    new Restaurant(
      name: 'Restaurant B',
      image: 'Image B',
      contact: 'Contact B',
      uuid: 'ID B',
    ),
    new Restaurant(
      name: 'Restaurant C',
      image: 'Image C',
      contact: 'Contact C',
      uuid: 'ID C',
    ),
    new Restaurant(
      name: 'Restaurant D',
      image: 'Image D',
      contact: 'Contact D',
      uuid: 'ID D',
    ),
    new Restaurant(
      name: 'Restaurant E',
      image: 'Image E',
      contact: 'Contact E',
      uuid: 'ID E',
    ),
    new Restaurant(
      name: 'Restaurant F',
      image: 'Image F',
      contact: 'Contact F',
      uuid: 'ID F',
    ),
    new Restaurant(
      name: 'Restaurant G',
      image: 'Image G',
      contact: 'Contact G',
      uuid: 'ID G',
    ),
    new Restaurant(
      name: 'Restaurant H',
      image: 'Image H',
      contact: 'Contact H',
      uuid: 'ID H',
    ),
    new Restaurant(
      name: 'Restaurant I',
      image: 'Image I',
      contact: 'Contact I',
      uuid: 'ID I',
    ),
    new Restaurant(
      name: 'Restaurant J',
      image: 'Image J',
      contact: 'Contact J',
      uuid: 'ID J',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurantes'),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: _buildRestaurants(context),
    );
  }

  Widget _buildRestaurants(context) {
    return Container(
      child: ListView.builder(
        itemCount: _restaurants.length,
        itemBuilder: (context, index) {
          final Restaurant restaurant = _restaurants[index];
          return RestaurantCard(
            uuid: restaurant.uuid,
            name: restaurant.name,
            image: restaurant.image,
            contact: restaurant.contact,
          );
        },
      ),
    );
  }
}
