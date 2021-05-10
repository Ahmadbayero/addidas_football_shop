import 'package:addidas_football_shop/models/club_model.dart';

List<String> allSizes = ['S', 'M', 'L', 'XL', '2X', '3X'];

List<String> logos = [
  'assets/images/logos/Juventus_logo.png',
  'assets/images/logos/FC Barcelona_logo.png',
  'assets/images/logos/Manchester United_logo.png',
  'assets/images/logos/Real Madrid_logo.png',
  'assets/images/logos/Bayern Munich_logo.png',
];

Club manU = Club(
    name: 'Manchester united',
    homeKit: Kit(
      name: 'Home 19/20',
      imageUrl: 'assets/images/man_u/man_u_homeKit.png',
      available: true,
      price: 180,
      sizes: allSizes,
    ),
    awayKit: Kit(
      name: 'Away 19/20',
      imageUrl: 'assets/images/man_u/man_u_awayKit.png',
      available: true,
      price: 100,
      sizes: allSizes,
    ),
    thirdKit: Kit(
      name: 'Third 19/20',
      imageUrl: 'assets/images/man_u/man_u_thirdKit.png',
      available: true,
      price: 90,
      sizes: allSizes,
    ),
    accessories: [
      Accessory(
        name: 'Facemask',
        imageUrl: 'assets/images/man_u/man_u_facemask.png',
        available: true,
        price: 35,
      ),
      Accessory(
        name: 'Backpack',
        imageUrl: 'assets/images/man_u/man_u_backpack.png',
        available: true,
        price: 55,
      ),
      Accessory(
        name: 'Facemask',
        imageUrl: 'assets/images/man_u/man_u_facemask.png',
        available: true,
        price: 35,
      ),
      Accessory(
        name: 'Backpack',
        imageUrl: 'assets/images/man_u/man_u_backpack.png',
        available: true,
        price: 55,
      ),
    ]);

Club realMadrid = Club(
    name: 'Real Madrid',
    homeKit: Kit(
      name: 'Home 19/20',
      imageUrl: 'assets/images/Real_madrid/real-madrid-home-kit.jpg',
      available: true,
      price: 180,
      sizes: allSizes,
    ),
    awayKit: Kit(
      name: 'Away 19/20',
      imageUrl: 'assets/images/Real_madrid/madrid_awayKit.png',
      available: true,
      price: 100,
      sizes: allSizes,
    ),
    thirdKit: Kit(
      name: 'Third 19/20',
      imageUrl: 'assets/images/Real_madrid/madrid_thirdKit.png',
      available: true,
      price: 90,
      sizes: allSizes,
    ),
    accessories: [
      Accessory(
        name: 'Facemask',
        imageUrl: 'assets/images/Real_madrid/madrid_facemask.png',
        available: true,
        price: 35,
      ),
      Accessory(
        name: 'Backpack',
        imageUrl: 'assets/images/Real_madrid/madrid_backpack.png',
        available: true,
        price: 55,
      ),
    ]);
