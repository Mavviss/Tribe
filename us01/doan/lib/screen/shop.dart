import 'package:doan/components/appbar_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('./images/back2.jfif'), fit: BoxFit.fill)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
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
                      style: TextStyle(fontSize: 28,fontStyle: FontStyle.italic),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                  child: Container(
                    height:MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(children: [
                        ItemleafShop(),
                        ItemLiveShop(),
                        ComBoItemShop(),
                        ComBoItemShop(),
                        ComBoItemShop(),
                        ComBoItemShop(),
                        ComBoItemShop(),
                      ]),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//item bán lá
class ItemleafShop extends StatefulWidget {
  const ItemleafShop({super.key});

  @override
  State<ItemleafShop> createState() => _ItemleafShopState();
}

class _ItemleafShopState extends State<ItemleafShop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //row item
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
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
              'Leaf gold',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            alignment: Alignment.center,
          ),
          Stack(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
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
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://c4.wallpaperflare.com/wallpaper/733/860/1021/chill-out-clouds-landscape-mountains-wallpaper-preview.jpg"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 1, 8, 8),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.5,
                            height: 40,
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
                                children: [
                                  Container(
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                              width: 100,
                                              height: 24,
                                              decoration: BoxDecoration(
                                                  //  color: Colors.blueGrey,
                                                  gradient: LinearGradient(
                                                      begin:
                                                          Alignment.topCenter,
                                                      end: Alignment
                                                          .bottomCenter,
                                                      colors: [
                                                        Color(0xffCDC1C5),
                                                        Color(0xffCDC1C5)
                                                      ]),
                                                  border: Border.all(
                                                    width: 1.5,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Center(
                                                  child: Text(
                                                '10',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ))),
                                        ),
                                        Positioned(
                                          top: 2,
                                          bottom: 2,
                                          left: 0,
                                          child: SizedBox(
                                              width: 27,
                                              height: 10,
                                              child: SvgPicture.asset(
                                                "images/leaf.svg",
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
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
              top: 55,
              left: 250,
              child: Container(
                width: MediaQuery.of(context).size.width / 4,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                  ),
                ),
                child: Text(
                  '100.000đ',
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

// item bán mạng nằm đâyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy
class ItemLiveShop extends StatefulWidget {
  const ItemLiveShop({super.key});

  @override
  State<ItemLiveShop> createState() => _ItemLiveShopState();
}

class _ItemLiveShopState extends State<ItemLiveShop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //row item
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
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
              'Mạng chơi',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            alignment: Alignment.center,
          ),
          Stack(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
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
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://c4.wallpaperflare.com/wallpaper/733/860/1021/chill-out-clouds-landscape-mountains-wallpaper-preview.jpg"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 1, 8, 8),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.5,
                            height: 40,
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
                                children: [
                                  Container(
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                              width: 100,
                                              height: 24,
                                              decoration: BoxDecoration(
                                                  //  color: Colors.blueGrey,
                                                  gradient: LinearGradient(
                                                      begin:
                                                          Alignment.topCenter,
                                                      end: Alignment
                                                          .bottomCenter,
                                                      colors: [
                                                        Color(0xffCDC1C5),
                                                        Color(0xffCDC1C5)
                                                      ]),
                                                  border: Border.all(
                                                    width: 1.5,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Center(
                                                  child: Text(
                                                '10',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ))),
                                        ),
                                        Positioned(
                                          top: 2,
                                          bottom: 2,
                                          left: 0,
                                          child: SizedBox(
                                              width: 27,
                                              height: 10,
                                              child: SvgPicture.asset(
                                                "images/favorite.svg",
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
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
              top: 55,
              left: 250,
              child: Container(
                width: MediaQuery.of(context).size.width / 4,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                  ),
                ),
                child: Text(
                  '100.000đ',
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

// class bán combo nằm đâyyyyyyyyyyyyyyyyyyyyyyyyyyyyy
class ComBoItemShop extends StatelessWidget {
  const ComBoItemShop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //row item
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
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
          Stack(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
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
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://c4.wallpaperflare.com/wallpaper/733/860/1021/chill-out-clouds-landscape-mountains-wallpaper-preview.jpg"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 1, 8, 8),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.5,
                            height: 40,
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
                                children: [
                                  Container(
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                              width: 100,
                                              height: 24,
                                              decoration: BoxDecoration(
                                                  //  color: Colors.blueGrey,
                                                  gradient: LinearGradient(
                                                      begin:
                                                          Alignment.topCenter,
                                                      end: Alignment
                                                          .bottomCenter,
                                                      colors: [
                                                        Color(0xffCDC1C5),
                                                        Color(0xffCDC1C5)
                                                      ]),
                                                  border: Border.all(
                                                    width: 1.5,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Center(
                                                  child: Text(
                                                '10',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ))),
                                        ),
                                        Positioned(
                                          top: 2,
                                          bottom: 2,
                                          left: 0,
                                          child: SizedBox(
                                              width: 27,
                                              height: 10,
                                              child: SvgPicture.asset(
                                                "images/favorite.svg",
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                              width: 100,
                                              height: 24,
                                              decoration: BoxDecoration(
                                                  // color: Colors.blueGrey,
                                                  gradient: LinearGradient(
                                                      begin:
                                                          Alignment.topCenter,
                                                      end: Alignment
                                                          .bottomCenter,
                                                      colors: [
                                                        Color(0xffCDC1C5),
                                                        Color(0xffCDC1C5)
                                                      ]),
                                                  border: Border.all(
                                                    width: 1.5,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Center(
                                                  child: Text('10',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.black)))),
                                        ),
                                        Positioned(
                                          top: 0,
                                          bottom: 3,
                                          left: 0,
                                          child: SizedBox(
                                            width: 33,
                                            height: 25,
                                            child: SvgPicture.asset(
                                              "images/leaf.svg",
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
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
              top: 55,
              left: 250,
              child: Container(
                width: MediaQuery.of(context).size.width / 4,
                height: 25,
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
