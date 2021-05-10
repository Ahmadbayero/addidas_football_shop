import 'package:addidas_football_shop/models/club_model.dart';
import 'package:addidas_football_shop/screens/kit_details_screen.dart';
import 'package:flutter/material.dart';

class KitCarousel extends StatefulWidget {
  final Club club;

  const KitCarousel({Key key, this.club}) : super(key: key);

  @override
  _KitCarouselState createState() => _KitCarouselState();
}

class _KitCarouselState extends State<KitCarousel> {
  PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(viewportFraction: .8);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 3,
      controller: _pageController,
      itemBuilder: (BuildContext context, int index) {
        return _buildCarousel(context, index);
      },
    );
  }

  Widget _buildCarousel(BuildContext context, int index) {
    List<Kit> kits = [
      widget.club.homeKit,
      widget.club.awayKit,
      widget.club.thirdKit
    ];

    Kit _currentKit = kits[index];

    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, Widget widget) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * .32)).clamp(0.0, 1.0);
        }

        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 400,
            child: widget,
          ),
        );
      },
      child: GestureDetector(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => KitDetailsScreen(),
          ),
        ),
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(right: 20.0),
              height: 380,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    offset: Offset(2, 2),
                    color: Colors.black38,
                    blurRadius: 10,
                    spreadRadius: 1),
              ]),
              child: ClipRRect(
                child: Image(
                  image: AssetImage(_currentKit.imageUrl),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            Positioned(
              top: 10.0,
              left: 10.0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.5),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(_currentKit.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    )),
              ),
            ),
            Positioned(
              bottom: 10.0,
              left: 10.0,
              child: Text('\u20AC${_currentKit.price}',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
