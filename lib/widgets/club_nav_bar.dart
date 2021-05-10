import 'package:addidas_football_shop/data.dart';
import 'package:flutter/material.dart';

class ClubNavBar extends StatefulWidget {
  const ClubNavBar(
      {Key key, this.tabItems, this.initialIndex, this.onTabChange})
      : super(key: key);
  final List<String> tabItems;
  final int initialIndex;
  final void Function(String) onTabChange;

  @override
  _ClubNavBarState createState() => _ClubNavBarState();
}

class _ClubNavBarState extends State<ClubNavBar>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: widget.tabItems.length,
      initialIndex: widget.initialIndex,
      vsync: this,
    );

    _tabController.addListener(_handleTabChange);
    super.initState();
  }

  void _handleTabChange() {
    if (_tabController.indexIsChanging)
      return; // while we are animating to new index
    setState(() {
      widget.onTabChange(logos[_tabController.index]);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Container(
      width: _size.width,
      height: 80.0,
      child: TabBar(
        physics: BouncingScrollPhysics(),
        indicatorSize: TabBarIndicatorSize.label,
        indicator: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(90.0),
              bottomRight: Radius.circular(90.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[300],
                offset: Offset(0, 10),
                spreadRadius: -1,
                blurRadius: 5,
              ),
            ]),
        tabs: widget.tabItems
            .map(
              (item) => Container(
                  width: 60,
                  height: 70.0,
                  padding:
                      EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  child: Image(
                    alignment: Alignment.topCenter,
                    fit: BoxFit.contain,
                    image: AssetImage(item),
                  )),
            )
            .toList(),
        controller: _tabController,
        isScrollable: true,
      ),
    );
  }
}
