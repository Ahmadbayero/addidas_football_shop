import 'package:addidas_football_shop/data.dart';
import 'package:addidas_football_shop/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';

class KitDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Container(
                      width: _size.width,
                      height: _size.height * .65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50.0),
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/man_u/manchester-united-home-pogba.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    CustomAppBar(),
                    Positioned(
                      bottom: 20.0,
                      left: 20.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Manchester United \nHome Kit 19/20',
                            style:
                                Theme.of(context).textTheme.headline4.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          Text(
                            'Home 19/20',
                            style: Theme.of(context).textTheme.caption.copyWith(
                                  color: Colors.white54,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: -25,
                      right: 20,
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Icon(
                          Icons.zoom_in_sharp,
                          size: 35.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: _size.width,
                margin: EdgeInsets.only(top: 30, left: 20.0),
                // color: Colors.purple,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sizes',
                      style: Theme.of(context).textTheme.caption.apply(
                            fontSizeDelta: 10.0,
                            fontWeightDelta: 400,
                          ),
                    ),
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (int i = 0; i < allSizes.length; i++)
                            Container(
                              margin: EdgeInsets.only(top: 20.0, right: 20.0),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 20.0),
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Text(
                                allSizes[i],
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 20.0),
                              ),
                            )
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: FlatButton(
                        padding: EdgeInsets.symmetric(
                          vertical: 15.0,
                          horizontal: 25.0,
                        ),
                        textColor: Colors.white,
                        color: Colors.red,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Add to basket',
                                style: TextStyle(letterSpacing: .5)),
                            Text(
                              '\u20Ac${180}',
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ],
                        ),
                      ),
                    )
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
