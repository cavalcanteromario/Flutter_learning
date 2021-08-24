import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  final String uuid;
  final String name;
  final String image;
  final String contact;

  const RestaurantCard(
      {required this.uuid,
      required this.name,
      required this.image,
      required this.contact});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 2.5,
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade200),
            borderRadius: BorderRadius.all(Radius.circular(4)),
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.all(4),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                  width: 80,
                  height: 80,
                  child: (ClipOval(
                    // child: Image.asset('assets/images/IconFlutterFood.png'),
                    child: CachedNetworkImage(
                      imageUrl: image != '' ? image: 'assets/images/IconFlutterFood.png',
                    ),
                  )),
                ),
                VerticalDivider(color: Colors.black54),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Container(
                    child: Expanded(
                      child: Text(
                        name,
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
