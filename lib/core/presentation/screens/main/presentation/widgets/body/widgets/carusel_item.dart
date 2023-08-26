import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_travel_app/core/domain/controllers/places_controller.dart';
import 'package:flutter_travel_app/core/domain/models/place.dart';
import 'package:get/get.dart';

class CaruselItem extends StatelessWidget {
  const CaruselItem({super.key, required this.place});

  final Place place;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PlacesController>(builder: (controller) {
      return InkWell(
        onTap: () {
          Get.toNamed('/detail');
          controller.setSelectedItemIndex(controller.getItemIndex(place));
        },
        child: Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        place.imageUrl ?? '',
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                      )),
                ),
                SizedBox(height: 10),
                Text(place.name ?? '',
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Gilroy',
                        color: Color(0xFF452933))),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RatingBar.builder(
                        initialRating: 3.5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 20,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      Text('${place.price}\$',
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Gilroy',
                              color: Color(0xFF452933)))
                    ],
                  ),
                ),
              ],
            )),
      );
    });
  }
}
