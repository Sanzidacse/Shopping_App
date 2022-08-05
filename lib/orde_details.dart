import 'package:flutter/material.dart';

class OrderDetail extends StatefulWidget {
  OrderDetail(
      {Key? key,
      required this.name,
      required this.img,
      required this.price,
      required this.cat})
      : super(key: key);
  String img;
  String name;
  String price;
  String cat;

  @override
  State<OrderDetail> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  int price = 0;
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _appBar(context),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'My Cart',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            _cartList(context),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Delivery Location',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            const SizedBox(
              height: 6,
            ),
            const ListTile(
              title: Text('Aftabnagar Shopping Ave 57'),
              subtitle: Text('6,7 F Block, Sector 2'),
              trailing: Icon(Icons.play_arrow_sharp),
              leading: Icon(Icons.ac_unit_sharp),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Payment Method',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            const ListTile(
              title: Text('bKash Payment'),
              subtitle: Text('01877******'),
              trailing: Icon(Icons.play_arrow_sharp),
              leading: Icon(Icons.money),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Order Info',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            _price(context),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              height: 50,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(12)),
              child: const Text('CHECKOUT'),
            )
          ],
        ),
      )),
    );
  }

  _cartList(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey.withOpacity(.4)),
            child: Image.asset(
              widget.img,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.name,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              Text(widget.cat),
              Text(widget.price),
              Spacer(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          price = price + int.parse(widget.price);
                          quantity++;
                        });
                      },
                      icon: const Icon(Icons.add_circle_outline)),
                  Text(quantity.toString(),
                      style: const TextStyle(fontSize: 15)),
                  IconButton(
                      onPressed: () {
                        if (quantity <= 1) {
                          price = int.parse(widget.price);
                          quantity = quantity;
                        } else {
                          price = price - int.parse(widget.price);
                          quantity--;
                        }
                        setState(() {});
                      },
                      icon: const Icon(Icons.remove_circle_outline)),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  _price(BuildContext context) {
    int tPrice = int.parse(widget.price);
    int tottalPrice = price + 2;
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [Text('Sub Total'), Spacer(), Text(' \$ $price')],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [Text('Shipping Cost'), Spacer(), Text('\$2')],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text('Sub Total'),
              Spacer(),
              Text(tottalPrice.toString())
            ],
          ),
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
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.1),
                    borderRadius: BorderRadius.circular(12)),
                child: const Icon(Icons.arrow_back_ios)),
          ),
          Spacer(),
          Text('Order Details'),
          Spacer(),
          SizedBox(),
        ],
      ),
    );
  }
}
