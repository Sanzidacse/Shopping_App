import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopping_app/models/access_model.dart';
import 'package:shopping_app/models/shop_model.dart';
import 'package:shopping_app/view_product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                _appBar(context),
                const SizedBox(
                  height: 10,
                ),
                _simpleText(context),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Products ', style: TextStyle(color: Colors.black)),
                    Text('43'),
                    Spacer(),
                    TextButton(onPressed: () {}, child: Text('Show All'))
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                _productList(context),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Accessories ',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text('25'),
                    Spacer(),
                    TextButton(onPressed: () {}, child: Text('Show All'))
                  ],
                ),
                _accesstList(context),
                const SizedBox(
                  height: 6,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _productList(BuildContext context) {
    return SizedBox(
      height: 155,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: dataProducts.length,
          itemBuilder: (c, i) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ViewProduct(
                              img: dataProducts[i].img,
                              name: dataProducts[i].name,
                              price: dataProducts[i].price.toString(),
                            )));
              },
              child: Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(right: 5),
                height: 150,
                width: 120,
                child: Column(
                  children: [
                    Container(
                        height: 90,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Image.asset(
                          dataProducts[i].img,
                          height: 90,
                          width: 110,
                        )),
                    Text(
                      dataProducts[i].name,
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      dataProducts[i].cat,
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      dataProducts[i].price.toString(),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }

  _accesstList(BuildContext context) {
    return SizedBox(
      height: 155,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: dataAccessories.length,
          itemBuilder: (c, i) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ViewProduct(
                              img: dataAccessories[i].img,
                              name: dataAccessories[i].name,
                              price: dataAccessories[i].price.toString(),
                            )));
              },
              child: Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(right: 5),
                height: 150,
                width: 120,
                child: Column(
                  children: [
                    Container(
                        height: 90,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Image.asset(
                          dataAccessories[i].img,
                          height: 90,
                          width: 110,
                        )),
                    Text(
                      dataAccessories[i].name,
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      dataAccessories[i].av,
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      dataAccessories[i].price.toString(),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }

  _simpleText(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      height: 80,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Hi-Fi Shop & Service',
            style: TextStyle(fontSize: 20, color: Colors.black),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 5,
          ),
          Text('Audio shop on Rustaveli Ave 57',
              style: TextStyle(fontSize: 15, color: Colors.grey),
              textAlign: TextAlign.left),
          SizedBox(
            height: 2,
          ),
          Text('This shope offers both products and sevices',
              style: TextStyle(fontSize: 15, color: Colors.grey),
              textAlign: TextAlign.left),
        ],
      ),
    );
  }

  _appBar(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      height: 50,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: [
          Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.1),
                  borderRadius: BorderRadius.circular(12)),
              child: const Icon(Icons.arrow_back_ios)),
          const Spacer(),
          Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey, width: .2)),
              child: const Icon(Icons.search)),
        ],
      ),
    );
  }
}
