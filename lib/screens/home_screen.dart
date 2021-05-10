import 'package:addidas_football_shop/data.dart';
import 'package:addidas_football_shop/widgets/club_nav_bar.dart';
import 'package:addidas_football_shop/widgets/custom_appBar.dart';
import 'package:addidas_football_shop/widgets/kit_carousel.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String clubName;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.grey[200],
          child: Column(
            children: [
              Container(
                height: _size.height * .8, // 80% of the screen
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50.0),
                    )),
                child: Stack(
                  children: [
                    CustomAppBar(),
                    Positioned(
                      top: 80.0,
                      child: ClubNavBar(
                        initialIndex: 2,
                        tabItems: logos,
                        onTabChange: (url) {
                          print(url);
                          setState(() {
                            clubName = url.split('/').last.split('_').first;
                          });
                        },
                      ),
                    ),
                    Positioned(
                      top: 165.0,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Text(
                                clubName ??
                                    logos[2].split('/').last.split('_').first,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4
                                    .copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Container(
                              width: _size.width,
                              height: 380.0,
                              child: Row(
                                children: [
                                  Container(
                                    width: _size.width * .20,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                            padding: EdgeInsets.symmetric(
                                              vertical: 5.0,
                                              horizontal: 8.0,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.red.withOpacity(.1),
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            child: Text('7',
                                                style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 17.0,
                                                ))),
                                        Container(
                                          height: 300,
                                          width: 1,
                                          color: Colors.grey,
                                        ),
                                        Text('Kits',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2
                                                .copyWith(
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: _size.width * .80,
                                    child: KitCarousel(club: manU),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < manU.accessories.length; i++)
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                        child: Stack(children: [
                          Container(
                            width: 155.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                image: DecorationImage(
                                    image: AssetImage(
                                        manU.accessories[i].imageUrl),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                            top: 10.0,
                            left: 10.0,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 10.0),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(.3),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Text(manU.accessories[i].name,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                  )),
                            ),
                          ),
                        ]),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
