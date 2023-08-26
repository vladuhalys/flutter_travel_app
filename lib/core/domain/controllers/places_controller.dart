import 'package:flutter_travel_app/core/data/source/places.dart';
import 'package:flutter_travel_app/core/domain/models/place.dart';
import 'package:get/get.dart';

class PlacesController extends GetxController {
  Places? places;
  @override
  void onInit() {
    places = Places();
    super.onInit();
  }

  var selectedItemIndex = 0.obs;

  setSelectedItemIndex(int index) {
    selectedItemIndex.value = index;
  }

  int getSize() {
    return places?.data.length ?? 0;
  }

  int getItemIndex(Place place) {
    return places?.data.indexOf(place) ?? 0;
  }

  Place getItem(int index) {
    return places?.data[index] ??
        Place(
            name: 'empty',
            imageUrl: 'empty',
            description: 'empty',
            price: 'empty',
            rating: 0);
  }

  Place getSelectedItem() {
    return places?.data[selectedItemIndex.value] ??
        Place(
            name: 'empty',
            imageUrl: 'empty',
            description: 'empty',
            price: 'empty',
            rating: 0);
  }
}
