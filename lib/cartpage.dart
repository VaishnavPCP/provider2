import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider2/providerkart.dart';
class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    final store=Provider.of<Providerkart>(context);
    List img=store.avatar;
    List name=store.name;
    List unit=store.unit;
    List price=store.price;

    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
        "Your cart",
        style: TextStyle(
        fontSize: 20,

        fontWeight: FontWeight.bold,
        color: Colors.white,
    ),
    ),
    centerTitle: true,
        ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(4),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: name.length,
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
                                child: Image.asset(img[index])),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Name : ",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black54),
                                    ),
                                    Text(name[index]
                                      ,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("Unit : ",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black54)),
                                    Text(unit[index]
                                      ,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("Price : ",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black54)),
                                    Text(price[index]
                                    ,
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
                                store.add(img[index], name[index], unit[index], price[index]);
                              },
                              child: Text(
                                "Remove",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
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
