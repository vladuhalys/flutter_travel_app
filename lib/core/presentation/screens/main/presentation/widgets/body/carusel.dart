import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_travel_app/core/domain/controllers/places_controller.dart';
import 'package:get/get.dart';

import 'widgets/carusel_item.dart';

class Carusel extends StatelessWidget {
  const Carusel({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PlacesController>(
      builder: (controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text('Recommended',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Gilroy',
                    color: Color(0xFF452933))),
            SizedBox(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return CaruselItem(place: controller.getItem(index));
                  },
                  itemCount: controller.getSize(),
                  viewportFraction: 0.7,
                  scale: 0.7,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
