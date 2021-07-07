import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pinterest_clone/constants/AppColors.dart';

List<StaggeredTile> _cardTile = <StaggeredTile>[
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 2),
  StaggeredTile.count(1, 2),
  StaggeredTile.count(1, 2),
  StaggeredTile.count(1, 2),
  StaggeredTile.count(1, 2),
  StaggeredTile.count(1, 2),
  StaggeredTile.count(1, 2),
  StaggeredTile.count(1, 2),
  StaggeredTile.count(1, 2),
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  double yTransValue = 0;
  TabController tabController;
  int selectedIndex = 1;

  void onItemClicked(int index) {
    setState(() {
      selectedIndex = index;
      tabController.index = selectedIndex;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollUpdateNotification>(
      onNotification: (notification) {
        if (notification.scrollDelta.sign == 1) {
          setState(() {
            yTransValue = 100;
          });
        } else if (notification.scrollDelta.sign == -1) {
          setState(() {
            yTransValue = 0;
          });
        }
        return;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.color9,
          elevation: 0,
          bottom: TabBar(
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.color6.withOpacity(0.4),
            ),
            indicatorSize: TabBarIndicatorSize.label,
            controller: tabController,
            labelColor: AppColors.color6,
            unselectedLabelColor: AppColors.color6,
            tabs: <Widget>[
              Tab(
                child: Row(
                  children: [
                    Flexible(
                        child: Text(
                      'All',
                    )),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  children: [
                    Flexible(
                        child: Text(
                      'Anime Design',
                      overflow: TextOverflow.visible,
                      maxLines: 3,
                      softWrap: true,
                      textAlign: TextAlign.center,
                    )),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  children: [
                    Flexible(
                        child: Text(
                      'Hair',
                    )),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  children: [
                    Flexible(
                        child: Text(
                      'Portrait',
                    )),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  children: [
                    Flexible(
                        child: Text(
                      'Ui/Ux Inspiration',
                      overflow: TextOverflow.visible,
                      maxLines: 3,
                      softWrap: true,
                      textAlign: TextAlign.center,
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: Stack(children: [
          StaggeredGridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
            staggeredTiles: _cardTile,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 50, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                      image: AssetImage('assets/images/Desktop-2.png')),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5, 20, 10, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage('assets/images/Desktop-4.png')),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5, 20, 10, 150),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                      image: AssetImage('assets/images/Desktop.png')),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5, 20, 10, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage('assets/images/Desktop-5.png')),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5, 20, 10, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/images/Desktop-1.png')),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5, 20, 10, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                      image: AssetImage('assets/images/Desktop-6.png')),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5, 20, 10, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage('assets/images/Desktop-2.png')),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5, 20, 10, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                      //fit: BoxFit.contain,
                      image: AssetImage('assets/images/Desktop-7.png')),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5, 20, 10, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                      image: AssetImage('assets/images/Desktop-3.png')),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5, 20, 10, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage('assets/images/Desktop-5.png')),
                ),
              ),
            ],
          ),
          AnimatedContainer(
            alignment: Alignment.bottomCenter,
            duration: Duration(microseconds: 300),
            transform: Matrix4.translationValues(0, yTransValue, 0),
            child: Container(
              width: MediaQuery.of(context).size.width * .55,
              margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home),
                  Icon(
                    Icons.search,
                    color: AppColors.color7,
                  ),
                  Icon(
                    Icons.chat_rounded,
                    color: AppColors.color7,
                  ),
                  Icon(
                    Icons.person_rounded,
                    color: AppColors.color7,
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
