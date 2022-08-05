import 'package:flutter/material.dart';
import 'package:shopping_app/orde_details.dart';

class ViewProduct extends StatelessWidget {
  ViewProduct(
      {Key? key, required this.name, required this.img, required this.price})
      : super(key: key);

  String name;
  String img;
  String price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              _imageAndAppBar(context),
              const SizedBox(
                height: 10,
              ),
              _textes(context),
              const SizedBox(
                height: 10,
              ),
              const ListTile(
                title: Text('Aftabnagar Shopping Ave 57'),
                subtitle: Text('6,7 F Block, Sector 2'),
                trailing: Icon(Icons.play_arrow_sharp),
                leading: Icon(Icons.ac_unit_sharp),
              ),
              const SizedBox(
                height: 3,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                height: 1,
                width: double.infinity,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              _pricingText(context),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OrderDetail(
                                name: name,
                                price: price,
                                img: img,
                                cat: 'Headphones',
                              )));
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  height: 50,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Text('ADD TO CART'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _pricingText(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            price,
            style: const TextStyle(fontSize: 16, color: Colors.black),
            textAlign: TextAlign.left,
          ),
          const Text(
            'Tax Rate 2% - \$4% (-\$12343) ',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  _imageAndAppBar(BuildContext context) {
    return SizedBox(
      height: 210,
      width: double.infinity,
      child: Stack(
        children: [
          Image.asset(
            img,
            height: 200,
            width: double.infinity,
          ),
          Positioned(
              top: 20,
              left: 20,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.1),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Icon(Icons.arrow_back_ios)),
              )),
        ],
      ),
    );
  }

  _textes(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
              ),
              label: Text('Shopping')),
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              name,
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            Spacer(),
            TextButton(onPressed: () {}, child: Text('GO'))
          ],
        ),
        Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'Hi-Fi Online Shop & Services ABCD',
              textAlign: TextAlign.left,
            )),
        Container(
            alignment: Alignment.centerLeft,
            child: Text('Hi-Fi Online Shop & Services 1234',
                textAlign: TextAlign.left)),
      ],
    );
  }
}
