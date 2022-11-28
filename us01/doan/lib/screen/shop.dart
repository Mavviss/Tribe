import 'package:doan/components/appbar_custom.dart';
import 'package:flutter/material.dart';
import '../components/appbar_custom.dart';
import '../components/bottom.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: Header(Color_: Colors.transparent),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.3,
                  height: MediaQuery.of(context).size.height / 12,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    border: Border.all(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                  child: Text(
                    'Cửa hàng',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  alignment: Alignment.center,
                ),
              ),
              //container shop lớn
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    border: Border.all(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                  //row lớn bao
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        ItemShop(),
                        ItemShop(),
                        ItemShop(),
                        ItemShop(),
                        ItemShop(),
                        ItemShop(),
                        SizedBox(height: 28),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemShop extends StatelessWidget {
  const ItemShop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //row item
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width / 1.3,
            height: MediaQuery.of(context).size.height / 28,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8)),
              border: Border.all(
                color: Colors.black,
                width: 1.0,
              ),
            ),
            child: const Text(
              'combo',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            alignment: Alignment.center,
          ),
          SizedBox(height: 10),
          Stack(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                  ),
                ),
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //hình ảnhaaaaa
                        CircleAvatar(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.7,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              border: Border.all(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Icon(
                                    Icons.flood,
                                    semanticLabel: 'x10',
                                  ),
                                  Icon(Icons.heart_broken_sharp),
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 200,
              child: Container(
                width: MediaQuery.of(context).size.width / 6,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                  ),
                ),
                child: Text(
                  '200.000đ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                alignment: Alignment.center,
              ),
            )
          ]),
        ]),
      ),
    );
  }
}
