import 'package:flutter/material.dart';

import '../../../../data/fake_data.dart';
import '../../../../data/models/place_model/place_model.dart';

class ListPlacesPage extends StatelessWidget {
  const ListPlacesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: Stack(children: [
              ListView.builder(
                  // padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: listPlaces.length,
                  itemBuilder: (context, index) =>
                      ListPlacesListPlacesItem(place: listPlaces[index])),
              const ListPlacesSearchInput(),
            ]),
          )
        ],
      ),
    );
  }
}

class ListPlacesListPlacesItem extends StatelessWidget {
  const ListPlacesListPlacesItem({Key? key, required this.place})
      : super(key: key);

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 73),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                    padding:
                        const EdgeInsets.only(top: 100, right: 28, left: 28),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(place.name,
                                style: const TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: 'PoppinsSemiBold',
                                    fontWeight: FontWeight.w600)),
                            Text(
                              place.distance != null
                                  ? (place.distance.toString() + ' m')
                                  : '',
                              style: const TextStyle(
                                  fontSize: 14.0, color: Color(0xFF5D5FEF)),
                            )
                          ],
                        ),
                        Row(children: [
                          Text(place.address,
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400))
                        ]),
                        const SizedBox(
                          height: 18,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                                place.minPrice != null
                                    ? ('от ' + place.minPrice.toString() + ' p')
                                    : '',
                                style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            if (place.avgRating != null)
                              ListPlacesPlaceRating(
                                place: place,
                              )
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        )
                      ],
                    )),
              ),
            ),
            Image.asset(place.imageAsset),
            Image.asset(place.backgroundAsset),
          ],
        ),
      ],
    );
  }
}

class ListPlacesPlaceRating extends StatelessWidget {
  const ListPlacesPlaceRating({Key? key, required this.place})
      : super(key: key);

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        Text(place.avgRating!.toString(),
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
        if (place.reviewsNumber != null)
          Text('(${place.reviewsNumber!.toString()})',
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFBDBDBD)))
      ],
    );
  }
}

class ListPlacesSearchInput extends StatelessWidget {
  const ListPlacesSearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(25.0),
      elevation: 5,
      child: Container(
        margin:
            const EdgeInsets.only(left: 25, top: 12.5, bottom: 12.5, right: 25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Flexible(
                child: TextField(
              style: Theme.of(context).textTheme.bodyText2,
              decoration: const InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.zero,
                border: InputBorder.none,
              ),
            )),
            const Icon(
              Icons.clear,
              size: 20,
              color: Color(0xFFBDBDBD),
            ),
            const SizedBox(width: 16),
            Container(
              height: 15,
              color: const Color(0xFFBDBDBD),
              width: 2,
            ),
            const SizedBox(width: 16),
            Image.asset(
              'assets/images/equalizer.png',
              scale: 7,
              color: Theme.of(context).primaryColor,
            )
          ],
        ),
      ),
    );
  }
}
