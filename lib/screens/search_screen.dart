import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:tennis_app/screens/circolo_visitor.dart';
import 'package:tennis_app/screens/coachprofile.dart';
import 'package:tennis_app/screens/giocatore_profile.dart';
import 'package:tennis_app/utilities/constant/colors.dart';
import 'package:tennis_app/utilities/constant/heading_text_style.dart';
import 'package:tennis_app/utilities/constant/image_path.dart';
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
    TabController _tabcontrolller = TabController(length: 4, vsync: this);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Appcolor.textfield_color,
        title: Center(
            child: Text(
          'Search',
          style: heading_text,
        )),
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
                            titletext: 'Rafael Nadal',
                            subtitle: 'Milano',
                            characterselect: 'Giocatore',
                            imagee: ImagePath.rafaellogo,
                          );
                        }),
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(
                              height: 5,
                              thickness: 5,
                              color: Appcolor.divivdercolor,
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
                            imagee: ImagePath.coachlogo,
                            titletext: 'Novak Djokovick',
                            subtitle: 'Milano',
                            characterselect: 'Giocatore',
                          );
                        }),
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(
                              height: 5,
                              thickness: 5,
                              color: Appcolor.divivdercolor,
                            )),
                    ListView.separated(
                        itemCount: 3,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemBuilder: ((context, index) {
                          return ContainerListTile(
                            ontap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => CoachProfile()));
                            },
                            imagee: ImagePath.rafaellogo,
                            titletext: 'Novak Djokovick',
                            subtitle: 'Milano',
                            characterselect: '2KM',
                          );
                        }),
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(
                              height: 5,
                              thickness: 5,
                              color: Appcolor.divivdercolor,
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
                            imagee: ImagePath.circolologo,
                            titletext: 'Circolo 1',
                            subtitle: 'Centro Sportivo Giovani Cimabue',
                            characterselect: 'Circolo',
                          );
                        }),
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(
                              height: 5,
                              thickness: 5,
                              color: Appcolor.divivdercolor,
                            )),
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
