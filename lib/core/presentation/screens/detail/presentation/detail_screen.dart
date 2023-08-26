import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_travel_app/core/domain/controllers/places_controller.dart';
import 'package:flutter_travel_app/core/presentation/screens/detail/presentation/widgets/button_book_now.dart';
import 'package:get/get.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PlacesController>(builder: (controller) {
      return SafeArea(
          child: Scaffold(
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                title: Text(controller.getSelectedItem().name ?? 'Unknown',
                    maxLines: 3,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy',
                        color: Color(0xFF452933))),
                leading: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    color: Color(0xFF452933),
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
                actions: [
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating: controller.getSelectedItem().rating ?? 0,
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
                      const SizedBox(width: 10),
                      Text('${controller.getSelectedItem().rating ?? 0}',
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Gilroy',
                              color: Color(0xFF452933))),
                      const SizedBox(width: 20),
                    ],
                  ),
                ],
              ),
              body: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          controller.getSelectedItem().imageUrl ?? '',
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width,
                          height: 400,
                        )),
                    const SizedBox(height: 20),
                    Text(controller.getSelectedItem().description ?? '',
                        maxLines: 13,
                        style: const TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 14,
                            fontFamily: 'Gilroy',
                            color: Color(0xFF73848C))),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const Text('Total Price',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Gilroy',
                                    color: Color(0xFF201E1E))),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const Text('\$',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Gilroy',
                                        color: Color(0xFFFF7029))),
                                const SizedBox(width: 5),
                                Text('${controller.getSelectedItem().price}',
                                    style: const TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Gilroy',
                                        color: Color(0xFF452933))),
                              ],
                            ),
                          ],
                        ),
                        const ButtonBookNow(),
                      ],
                    )
                  ],
                ),
              )));
    });
  }
}
