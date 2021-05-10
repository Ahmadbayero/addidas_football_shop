class Club {
  Club({
    this.name,
    this.logo,
    this.homeKit,
    this.awayKit,
    this.thirdKit,
    this.accessories,
  });

  final String name;
  final String logo;
  final Kit homeKit;
  final Kit awayKit;
  final Kit thirdKit;
  final List<Accessory> accessories;
}

class Kit {
  Kit({
    this.name,
    this.imageUrl,
    this.available,
    this.price,
    this.sizes,
  });
  final String name;
  final String imageUrl;
  final bool available;
  final double price;
  final List<String> sizes;
}

class Accessory {
  Accessory({
    this.name,
    this.imageUrl,
    this.available,
    this.price,
  });
  final name;
  final imageUrl;
  final bool available;
  final double price;
}
