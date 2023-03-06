import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:tennis_app/screens/circolo_visitor.dart';
import 'package:tennis_app/screens/coachprofile.dart';
import 'package:tennis_app/screens/giocatore_profile.dart';
import 'package:tennis_app/utilities/constant/colors.dart';
import 'package:tennis_app/utilities/constant/heading_text_style.dart';
import 'package:tennis_app/widgets/circle_widget.dart';
import 'package:tennis_app/widgets/custom_container.dart';
import 'package:tennis_app/widgets/custom_sized_box_widget.dart';
import 'package:tennis_app/widgets/textfield_widget.dart';
import 'package:tennis_app/widgets/textformfield.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabcontrolller = TabController(length: 6, vsync: this);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      // resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Center(child: Text('Search')),
      ),
      body: Container(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomSizedBox(
              height: height * 0.04,
            ),
            TextFields(
              height: height * 0.06,
              width: width * 0.7,
              text: 'Search',
              suffixicon: const Icon(Icons.search),
            ),
            CustomSizedBox(
              height: height * 0.03,
            ),
            DefaultTabController(
              length: 6,
              child: TabBar(
                  controller: _tabcontrolller,
                  indicatorColor: Colors.transparent,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  tabs: [
                    Text(
                      'Tutto',
                    ),
                    Text(
                      'Coach',
                    ),
                    Text(
                      'Giocatore',
                    ),
                    Text(
                      'Circolo',
                    ),
                    Text(
                      'Città',
                    ),
                    Text(
                      'Negozi',
                    )
                  ]),
            ),
            Expanded(
              flex: 45,
              child: Container(
                // height: height * 0.9,

                child: TabBarView(
                  controller: _tabcontrolller,
                  children: [
                    ListView.separated(
                        itemCount: 10,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemBuilder: ((context, index) {
                          return ContainerListTile(
                            ontap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => GiocatoreProfile()));
                            },
                            urls: "",
                            titletext: 'Rafael Nadal',
                            subtitle: 'Milano',
                            characterselect: 'Giocatore',
                            level: '2',
                          );
                        }),
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(
                              height: 1,
                              color: Colors.black,
                            )),
                    ListView.separated(
                        itemCount: 10,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemBuilder: ((context, index) {
                          return ContainerListTile(
                            ontap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => CoachProfile()));
                            },
                            urls: "",
                            titletext: 'Novak Djokovick',
                            subtitle: 'Milano',
                            characterselect: 'Giocatore',
                            level: '2',
                          );
                        }),
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(
                              height: 1,
                              color: Colors.black,
                            )),
                    ListView.separated(
                        itemCount: 10,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemBuilder: ((context, index) {
                          return ContainerListTile(
                            ontap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => CoachProfile()));
                            },
                            urls: "",
                            titletext: 'Novak Djokovick',
                            subtitle: 'Milano',
                            characterselect: 'Giocatore',
                            level: '2',
                          );
                        }),
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(
                              height: 1,
                              color: Colors.black,
                            )),
                    ListView.separated(
                        itemCount: 10,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemBuilder: ((context, index) {
                          return ContainerListTile(
                            ontap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => CircoloVisitor()));
                            },
                            urls: "",
                            titletext: 'Circolo 1',
                            subtitle: 'Centro Sportivo Giovani Cimabue',
                            characterselect: 'Circolo',
                            level: '2',
                          );
                        }),
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(
                              height: 1,
                              color: Colors.black,
                            ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
