import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider2/cartpage.dart';
import 'package:provider2/model.dart';
import 'package:provider2/providerkart.dart';


class Provider02 extends StatefulWidget {
  const Provider02({Key? key}) : super(key: key);

  @override
  State<Provider02> createState() => _Provider02State();
}

class _Provider02State extends State<Provider02> {
  List items = [
    Model(avatar: "image/apple1.jpg", name: "Apple", unit: "Kg", price: "\$20"),
    Model(
        avatar: "image/wtrmln2.png", name: "Wtrmln", unit: "Kg", price: "\$30"),
    Model(avatar: "image/mango1.jpg", name: "Mango", unit: "Kg", price: "\$40"),
    Model(
        avatar: "image/orange1.jpg", name: "Orange", unit: "Kg", price: "\$50"),
    Model(
        avatar: "image/strwbry.png",
        name: "Stawberry",
        unit: "Kg",
        price: "\$60"),
    Model(
        avatar: "image/fruit.png", name: "Chikku", unit: "Kg", price: "\$20"),
    Model(avatar: "image/guava.png", name: "Guava", unit: "Kg", price: "\$30"),
  ];
  @override
  Widget build(BuildContext context) {
    final calling = Provider.of<Providerkart>(context);
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          "Product List",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cart()));
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(4),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 50,
                                width: 50,
                                child: Image.asset("${items[index].avatar}")),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Name : ",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black54),
                                    ),
                                    Text("Unit : ",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black54)),
                                    Text("Price : ",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black54)),
                                    ]
                                ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${items[index].name}",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black87),
                                        ),
                                        Text(
                                          "${items[index].unit}",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "${items[index].price}",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                              ],
                            ),

                            TextButton(
                              onPressed: () {
                            calling.add(
                                "${items[index].avatar}",
                                "${items[index].name}",
                                "${items[index].unit}",
                                "${items[index].price}");
                              },
                              child: calling.check(items[index].name)
                              ? Text("Remove",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))
                              : Text("Add to card",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              style: TextButton.styleFrom(
                              backgroundColor: Colors.black54),
                            ),
                        ],
                    ),
                    ),
                  ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
