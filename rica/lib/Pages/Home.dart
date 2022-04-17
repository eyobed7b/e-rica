import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

import '../entity/shop_entity.dart';
import 'package:getwidget/getwidget.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> with TickerProviderStateMixin {
  String? selectedValue;

  List<Widget>? widgetButton = [];

  @override
  void initState() {
    super.initState();
  }

  String dropdownvalue = 'Item 1';
  int _value = 1;
  bool isSwitched = true;
  var recentJobsRef = FirebaseDatabase.instance.ref();

  List<Shop> shop = [];
  // .orderByChild('created_at')
  // .limitToFirst(10);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 2,
      // initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const CupertinoSearchTextField(
            placeholder: 'Search',
          ),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Shop',
              ),
              Tab(
                text: 'Product',
              ),
            ],
          ),
        ),
        body: StreamBuilder(
          stream: recentJobsRef.onValue,
          builder: (BuildContext context, snapshot) {
            if (snapshot.hasData) {
              var data = (snapshot.data! as DatabaseEvent).snapshot.value
                  as Map<Object?, dynamic?>;
              // data.forEach((key, value) {
              //   shop.add(Shop.fromJson(value));
              // });

              // for (int i = 0; i < data.length; i++) {

              //   shop.add(data['data'][i]);
              // }

              /// shop .addAll(ShopList.fromJson(data).data);
              print(data['data']['foods']);
              return TabBarView(
                children: <Widget>[buildShop(data), buildProduct(data)],
              );

              // ListView(
              //   //scrollDirection: Axis.vertical,
              //   // physics: NeverScrollableScrollPhysics(),

              //   children: [buildProduct(), buildShop(data)],
              // );
            } else if (snapshot.hasError) {
              return Text("Has Error");
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }

  buildProduct(data) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: data['data']['foods']['data'].length,
        itemBuilder: (context, index) {
          //  Card(
          //     child: ListTile(
          //   leading: CircleAvatar(
          //     backgroundImage: NetworkImage(data['data'][index]['user_avatar_link']),
          //   ),
          //   title: Text(data['data'][index]['user_name'], style: TextStyle(fontSize: 12),),
          //   subtitle: Text(data['data'][index]['user_address'], style: TextStyle(fontSize: 12),),
          //   onTap: () {
          //     setState(() {
          //       selectedValue = items[index];
          //     });
          //   },
          // ),
          //   )
          return GestureDetector(
            child: Card(
              child: Container(
                height: 100,
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(data['data']
                                  ['foods']['data'][index]['image'][0]['url']),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 9,
                        child: Container(
                          padding: EdgeInsets.only(
                            left: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data['data']['foods']['data'][index]['name'],
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              Text(
                                "Shop = ${data['data']['foods']['data'][index]['user_nick_name']}",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text(
                                  data['data']['foods']['data'][index]['price']
                                          .toString() +
                                      " Birr",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              // data['data'][index]['rating']
                              Padding(
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                child: RatingStars(
                                  value: 2,
                                  onValueChanged: (v) {},
                                  starBuilder: (index, color) => Icon(
                                    Icons.star,
                                    color: color,
                                    size: 20,
                                  ),
                                  starCount: 5,
                                  starSize: 20,
                                  valueLabelColor: const Color(0xff9b9b9b),
                                  valueLabelTextStyle: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                  valueLabelRadius: 10,
                                  maxValue: 5,
                                  starSpacing: 2,
                                  maxValueVisibility: true,
                                  valueLabelVisibility: true,
                                  animationDuration:
                                      Duration(milliseconds: 1000),
                                  valueLabelPadding: const EdgeInsets.symmetric(
                                      vertical: 1, horizontal: 8),
                                  valueLabelMargin:
                                      const EdgeInsets.only(right: 8),
                                  starOffColor: const Color(0xffe7e8ea),
                                  starColor:
                                      Theme.of(context).colorScheme.primary,
                                ),
                              )

                              // Text(
                              //   data['data'][index]['phone'],
                              //   style: TextStyle(
                              //     fontSize: 14,
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: IconButton(
                            icon: Icon(Icons.add_shopping_cart_rounded),
                            onPressed: () {
                              GFToast.showToast(
                                'Sorry this feature is not available yet',
                                context,
                              );
                            },
                          ))
                    ],
                  ),
                ),
              ),
            ),
            onTap: () {
              GFToast.showToast(
                'Sorry this feature is not available yet',
                context,
              );
            },
          );
        });
  }

  buildShop(data) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: data['data']['data'].length,
        itemBuilder: (context, index) {
          //  Card(
          //     child: ListTile(
          //   leading: CircleAvatar(
          //     backgroundImage: NetworkImage(data['data'][index]['user_avatar_link']),
          //   ),
          //   title: Text(data['data'][index]['user_name'], style: TextStyle(fontSize: 12),),
          //   subtitle: Text(data['data'][index]['user_address'], style: TextStyle(fontSize: 12),),
          //   onTap: () {
          //     setState(() {
          //       selectedValue = items[index];
          //     });
          //   },
          // ),
          //   )
          return GestureDetector(
            child: Card(
              child: Container(
                height: 100,
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(data['data']['data']
                                  [index]['user_avatar_link']),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 15,
                                ),
                                Text(data['data']['data'][index]['distance']
                                        .round()
                                        .toString() +
                                    " km"),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(
                            left: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data['data']['data'][index]['user_name'],
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              Text(
                                data['data']['data'][index]['user_address'],
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              // data['data'][index]['rating']
                              Padding(
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                child: RatingStars(
                                  value: 2,
                                  onValueChanged: (v) {},
                                  starBuilder: (index, color) => Icon(
                                    Icons.star,
                                    color: color,
                                    size: 20,
                                  ),
                                  starCount: 5,
                                  starSize: 20,
                                  valueLabelColor: const Color(0xff9b9b9b),
                                  valueLabelTextStyle: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                  valueLabelRadius: 10,
                                  maxValue: 5,
                                  starSpacing: 2,
                                  maxValueVisibility: true,
                                  valueLabelVisibility: true,
                                  animationDuration:
                                      Duration(milliseconds: 1000),
                                  valueLabelPadding: const EdgeInsets.symmetric(
                                      vertical: 1, horizontal: 8),
                                  valueLabelMargin:
                                      const EdgeInsets.only(right: 8),
                                  starOffColor: const Color(0xffe7e8ea),
                                  starColor:
                                      Theme.of(context).colorScheme.primary,
                                ),
                              )

                              // Text(
                              //   data['data'][index]['phone'],
                              //   style: TextStyle(
                              //     fontSize: 14,
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            onTap: () {
              GFToast.showToast(
                  'Sorry this feature is not available yet', context);
            },
          );
        });
  }
}
