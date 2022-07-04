import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _scrollController;
  bool scrollfit = false;
  int activeTab = 0;

  onTap() {
    setState(() {});
    if (!_tabController.indexIsChanging) {
      if (activeTab == 0) {
      } else if (activeTab == 1) {}
    }
  }

  _scrollContent() {
    if (scrollfit) {
      _scrollController.jumpTo(0);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(onTap);
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollContent);
  }

  void dispose() {
    super.dispose();
    _scrollController.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Widget headerProfile() {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            height: height * 0.09,
            width: height * 0.09,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(100)),
            child: CachedNetworkImage(
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCb007ot4H7Yx0Ku6xyQIISP_5XnIxm6-TrQ&usqp=CAU',
              imageBuilder: (context, imageProvider) {
                return Container(
                  alignment: Alignment.center,
                  width: height * 0.09,
                  height: height * 0.09,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              placeholder: (context, url) => Image.asset(
                  'assets/images/loader.gif',
                  height: height * 0.09,
                  width: height * 0.09),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text('Nama',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
              )),
          SizedBox(
            height: 4,
          ),
          Text(
            'Bio',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.grey[600]),
          ),
        ],
      );
    }

    Widget profileInfo() {
      return Container(
        margin: EdgeInsets.only(top: 12),
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        decoration: BoxDecoration(
            border: Border.all(
              width: 0.5,
              color: Colors.grey[300]!,
            ),
            borderRadius: BorderRadius.circular(16)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  '99',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Postingan",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[600]),
                )
              ],
            ),
            Container(
              decoration: BoxDecoration(color: Colors.grey[300]),
              height: 32,
              width: 0.5,
            ),
            InkWell(
              onTap: () {},
              child: Column(
                children: [
                  Text(
                    '120',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Pengikut",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[600]),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.grey[300]),
              height: 32,
              width: 0.5,
            ),
            InkWell(
              onTap: () {},
              child: Column(
                children: [
                  Text(
                    '100',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Mengikuti",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[600]),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget Content() {
      return Container(
        child: TabBarView(controller: _tabController, children: <Widget>[
          EmptyWidget(),
          EmptyWidget(),
        ]),
      );
    }

    Widget EditButton() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        width: width,
        child: RaisedButton(
          color: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          onPressed: () {},
          textColor: Colors.white,
          padding: EdgeInsets.all(6.0),
          child: Container(
            padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Text('Edit Profil',
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700)),
          ),
        ),
      );
    }

    Widget TabbarSection() {
      return Container(
        margin: EdgeInsets.only(top: 12),
        width: width,
        child: Align(
          alignment: Alignment.center,
          child: TabBar(
            controller: _tabController,
            labelColor: Color.fromRGBO(238, 96, 85, 1),
            unselectedLabelColor: Color.fromRGBO(178, 178, 178, 1),
            indicatorColor: Color.fromRGBO(238, 96, 85, 1),
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 14),
                child: Text(
                  "Postingan Saya",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 14),
                child: Text(
                  "Disimpan",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (context, v) {
            return [
              SliverToBoxAdapter(
                child: Center(
                  child: Column(
                    children: [
                      headerProfile(),
                      profileInfo(),
                      EditButton(),
                      TabbarSection(),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Content(),
        ),
      ),
    );
  }
}

class EmptyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTYdMWP0xCVtscBpfFysXPivS9UxS3MQ6XJQ&usqp=CAU',
            fit: BoxFit.contain,
            width: MediaQuery.of(context).size.width / 4,
            height: MediaQuery.of(context).size.width / 4,
          ),
          SizedBox(height: 8),
          Text(
            'Belum ada postingan',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
