import 'package:flutter_travel_app/core/domain/models/place.dart';

class Places {
  List<Place> data = [];
  Places() {
    data = [
      Place(
          name: "Carpathian Mountains",
          imageUrl:
              "https://imgs.search.brave.com/U6vCygHBExEIgyzfswnojcGXK7JDKitXD8pG_qravq0/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE0/NTc0NTk2ODYyMjUt/YzdkYjc5ZDRlNTlm/P2l4bGliPXJiLTQu/MC4zJml4aWQ9TTN3/eE1qQTNmREI4TUh4/bGVIQnNiM0psTFda/bFpXUjhNVFo4Zkh4/bGJud3dmSHg4Zkh3/PSZ3PTEwMDAmcT04/MA",
          description:
              "The Carpathian Mountains or Carpathians are a range of mountains forming an arc across Central Europe. Roughly 1,500 km (930 mi) long, it is the third-longest European mountain range after the Urals at 2,500 km (1,600 mi) and the Scandinavian Mountains at 1,700 km (1,100 mi). The range stretches from the far eastern Czech Republic (3%) and Austria (1%) in the northwest through Slovakia (21%), Poland (10%), Ukraine (10%), Romania (50%) to Serbia (5%) in the south.[1][2][3][4] The highest range within the Carpathians is known as the Tatra mountains in Slovakia, where the highest peaks exceed 2,600 m (8,500 ft). The second-highest range is the Southern Carpathians in Romania, where the highest peaks range between 2,500 m (8,200 ft) and 2,550 m (8,370 ft).", //deskription about Karpty,
          price: "450",
          rating: 4.0),
      Place(
          name: "Maldives",
          imageUrl:
              "https://imgs.search.brave.com/QFu9GNcQUkVtspSnTFCgnXFpowEhisf8qkS2bISywcg/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jZG4u/d2FsbHBhcGVyc2Fm/YXJpLmNvbS8zOC82/Ni80em1TaU8uanBn",
          description:
              "The Maldives (MAHL-deevz; romanized: Dhivehi Raajje, Dhivehi pronunciation), officially the Republic of Maldives (ދިވެހިރާއްޖޭގެ ޖުމްހޫރިއްޔާ, Dhivehi Raajjeyge Jumhooriyyaa, Dhivehi pronunciation), is an archipelagic state and country in South Asia, situated in the Indian Ocean. It lies southwest of Sri Lanka and India, about 750 kilometres (470 miles; 400 nautical miles) from the Asian continent's mainland. The Maldives' chain of 26 atolls stretches across the equator from Ihavandhippolhu Atoll in the north to Addu Atoll in the south.",
          price: "5678",
          rating: 5),
      Place(
          name: "New York City",
          imageUrl:
              "https://imgs.search.brave.com/PtfcUdRDUXMlS4Bp5X_idQTHYiiPDC3-sW1Atdh3ErQ/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzZXQuY29t/L3cvZnVsbC8zLzIv/YS80OTA5OS5qcGc",
          description:
              "New York, often called New York City[a] or NYC, is the most populous city in the United States. With a 2020 population of 8,804,190 distributed over 300.46 square miles (778.2 km2), New York City is the most densely populated major city in the United States.",
          price: "1234",
          rating: 3.5),
      Place(
          name: "New England–Acadian forests",
          imageUrl:
              "https://imgs.search.brave.com/9rV40wz5sCs0WbpEL_SRdVyvZXIX_z-aD-gadwlIpNI/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzZXQuY29t/L3cvZnVsbC84L2Uv/NC8xNDQxMzQuanBn",
          description:
              "The New England-Acadian forests are a temperate broadleaf and mixed forest ecoregion in North America that includes a variety of habitats on the hills, mountains and plateaus of New England and New York State in the Northeastern United States, and Quebec and the Maritime Provinces of Eastern Canada.",
          price: "567",
          rating: 3),
    ];
  }
}
