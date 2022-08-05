class AccessModel {
  String name;
  int price;
  String av;
  String img;

  AccessModel(
      {required this.name,
      required this.price,
      required this.img,
      required this.av});
}

List<AccessModel> dataAccessories = [
  AccessModel(
      name: 'AKG N700NCM2 Wireless',
      price: 25,
      img: 'images/img3.jpg',
      av: 'Available'),
  AccessModel(
      name: 'AIAIA TM2 Modular',
      price: 15,
      img: 'images/img4.jpg',
      av: 'Unavailable'),
  AccessModel(
      name: 'AKG N700NCM2 Wireless',
      price: 25,
      img: 'images/img2.jpg',
      av: 'Available'),
  AccessModel(
      name: 'AIAIA TM2 Modular',
      price: 15,
      img: 'images/img1.jpg',
      av: 'Unavailable')
];
