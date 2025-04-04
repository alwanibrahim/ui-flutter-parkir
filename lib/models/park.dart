class Park {
  final String title;
  final String image;
  final String distance;
  final String price;
  final ParkType? type;
  final String? typeTeks;
  final double? ratingStar;
  final double? ratingCount;

  Park({
    required this.title,
    required this.image,
    required this.distance,
    required this.price,
    this.type,
    this.typeTeks,
    this.ratingStar,
    this.ratingCount,
  });
}

enum ParkType { discount, popular }

var parks = [
  Park(
      title: 'Angga Park',
      image: 'assets/images/park_1.png',
      distance: '1.3km',
      price: '5/hr',
      type: ParkType.discount,
      typeTeks: 'OFF 55%'),
  Park(
      title: 'Masa Mart',
      image: 'assets/images/park_2.png',
      distance: '1.9km',
      price: '2/hr',
      type: ParkType.popular,
      typeTeks: 'POPULAR'),
  Park(
      title: 'Senayan Park',
      image: 'assets/images/park_3.png',
      distance: '1.3km',
      price: '5/hr',
      type: ParkType.popular,
      typeTeks: 'POPULAR'),
];

var mores = [
  Park(title: 'Senayan', image: 'assets/images/senayan.png', distance: '5.3km', price: '\$1/hr',ratingStar: 4,ratingCount: 14.593),
  Park(title: 'Kota Baru', image: 'assets/images/kota_baru.png', distance: '7.4km', price: '\$1/hr',ratingStar: 3,ratingCount: 4.355),
  Park(title: 'Senayan', image: 'assets/images/senayan2.png', distance: '5.3km', price: '\$1/hr',ratingStar: 5,ratingCount: 14.593),
];
