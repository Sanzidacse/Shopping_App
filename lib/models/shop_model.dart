class ShopModel {
  String name;
  String cat;
  int price;
  String img;

  ShopModel(
      {required this.name,
      required this.cat,
      required this.price,
      required this.img});
}

List<ShopModel> dataProducts = [
  ShopModel(
      name: 'AKG N700NCM2 Wireless',
      cat: 'Headphones',
      price: 199,
      img: 'images/img1.jpg'),
  ShopModel(
      name: 'AIAIA TM2 Modular',
      cat: 'Headphones',
      price: 250,
      img: 'images/img2.jpg'),
  ShopModel(
      name: 'AKG N700NCM2 Wireless',
      cat: 'Headphones',
      price: 199,
      img: 'images/img3.jpg'),
  ShopModel(
      name: 'AIAIA TM2 Modular',
      cat: 'Headphones',
      price: 250,
      img: 'images/img4.jpg')
];
