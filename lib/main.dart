import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  final GlobalKey _scaffoldKey = new GlobalKey();
  TabController _tabController;
  String mindropdownvalue = '₹500';
  String maxdropdownvalue = '₹2000';
  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15.0, left: 8.0),
                      child: Row(
                        children: <Widget>[
                          SvgPicture.asset(
                            'images/hamburger.svg',
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Any doctor that you know?',
                                hintStyle: TextStyle(
                                  color: Color(0xff8595dd),
                                  fontSize: 18,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                icon: SvgPicture.asset(
                                  'images/search.svg',
                                  color: Color(0xff072ac8),
                                ),
//                                icon: ImageIcon(AssetImage('images/search.png'),color: Color(0xff072ac8),),
                              ),
                            ),
                          ),
                          SvgPicture.asset(
                            'images/filter_2.svg',
                            color: Color(0xff072ac8),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: TabBar(
                          indicator: BoxDecoration(color: Color(0xfff3f5ff)),
                          labelColor: Color(0xff072ac8),
                          unselectedLabelColor: Colors.black87,
                          labelStyle: TextStyle(
                              fontSize: 20,
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.w700),
                          unselectedLabelStyle: TextStyle(
                              fontSize: 20, fontFamily: 'SourceSansPro'),
                          tabs: [
                            new Tab(
                              child: PreferenceRow(
                                label: 'Expertise',
                                color: Color(0xff072ac8),
                                backColor: Color(0xfff3f5ff),
                              ),
                            ),
                            new Tab(
                              child: PreferenceRow(
                                label: 'Language',
                                color: Color(0xff393e41),
                                backColor: Colors.white,
                              ),
                            ),
                            new Tab(
                              child: PreferenceRow(
                                label: 'Price',
                                color: Color(0xff393e41),
                                backColor: Colors.white,
                              ),
                            ),
                          ],
                          controller: _tabController,
                        ),
                      ),
                      Container(
                        height: 170,
                        child: TabBarView(
                          children: [
                            Container(
                              color: Color(0xfff3f5ff),
                              height: 170,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0, vertical: 10),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Choice(label: 'Finanace'),
                                        Choice(label: 'Self-Doubt'),
                                        Choice(label: 'Relationships'),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Choice(label: 'Work Related'),
                                        Choice(
                                          label: 'Career/Academic',
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Choice(
                                          label: 'Health',
                                        ),
                                        Choice(
                                          label: 'Other',
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 170,
                              color: Color(0xfff3f5ff),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0, vertical: 25),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Choice(label: 'Urdu'),
                                        Choice(label: 'Hindi'),
                                        Choice(label: 'English'),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Choice(label: 'Marathi'),
                                        Choice(
                                          label: 'Malyalam',
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              color: Color(0xfff3f5ff),
                              height: 170,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0, vertical: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          'Min',
                                          style: TextStyle(
                                              color: Color(0xff393e41),
                                              fontSize: 18),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: Colors.grey)),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 18),
                                            child: DropdownButtonHideUnderline(
                                              child: DropdownButton<String>(
                                                value: mindropdownvalue,
                                                iconEnabledColor:
                                                    Color(0xff072ac8),
                                                iconSize: 40.0,
                                                style: TextStyle(
                                                    color: Color(0xff072ac8)
                                                        .withOpacity(0.5),
                                                    fontSize: 16),
                                                onChanged: (String newValue) {
                                                  setState(() {
                                                    mindropdownvalue = newValue;
                                                  });
                                                },
                                                items: <String>[
                                                  '₹500',
                                                  '₹1000',
                                                  '₹1500',
                                                  '₹2000'
                                                ].map<DropdownMenuItem<String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: value,
                                                    child: Text(value),
                                                  );
                                                }).toList(),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          'Max',
                                          style: TextStyle(
                                              color: Color(0xff393e41),
                                              fontSize: 18),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: Colors.grey)),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 18),
                                            child: DropdownButtonHideUnderline(
                                              child: DropdownButton<String>(
                                                value: maxdropdownvalue,
                                                iconEnabledColor:
                                                    Color(0xff072ac8),
                                                iconSize: 40.0,
                                                style: TextStyle(
                                                    color: Color(0xff072ac8)
                                                        .withOpacity(0.5),
                                                    fontSize: 16),
                                                onChanged: (String newValue) {
                                                  setState(() {
                                                    maxdropdownvalue = newValue;
                                                  });
                                                },
                                                items: <String>[
                                                  '₹500',
                                                  '₹1000',
                                                  '₹1500',
                                                  '₹2000'
                                                ].map<DropdownMenuItem<String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: value,
                                                    child: Text(value),
                                                  );
                                                }).toList(),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                          controller: _tabController,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                //Text of Our Recomendataion
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Our Recommendations',
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.w600,
                        color: Color(0xff393e41),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  children: <Widget>[
                    UserInfo(
                      name: 'Ms. Jean Paul',
                      about: 'Marriage councillor',
                      photo: AssetImage(
                          'images/michael_dam_m_ez_3_po_f_gs_k_unsplash.png'),
                      price: '₹1000/hr',
                    ),
                    UserInfo(
                      name: 'Jessica',
                      about: 'Career Expert',
                      photo: AssetImage(
                          'images/brooke_cagle_o_tweox_m_kdk_a_unsplash.png'),
                      price: '₹1000/hr',
                    ),
                    UserInfo(
                      name: 'Vishen Shetty',
                      about: 'Mental Health Expert',
                      photo: AssetImage(
                          'images/albert_dera_i_lip_77_sbm_oe_unsplash.png'),
                      price: '₹1000/hr',
                    ),
                    UserInfo(
                      name: 'Ms. Jean Paul',
                      about: 'Marriage councillor',
                      photo: AssetImage(
                          'images/michael_dam_m_ez_3_po_f_gs_k_unsplash.png'),
                      price: '₹1000/hr',
                    ),
                    UserInfo(
                      name: 'Ms. Jean Paul',
                      about: 'Marriage councillor',
                      photo: AssetImage(
                          'images/michael_dam_m_ez_3_po_f_gs_k_unsplash.png'),
                      price: '₹1000/hr',
                    ),
                    UserInfo(
                      name: 'Vishen Shetty',
                      about: 'Mental Health Expert',
                      photo: AssetImage(
                          'images/albert_dera_i_lip_77_sbm_oe_unsplash.png'),
                      price: '₹1000/hr',
                    ),
                    UserInfo(
                      name: 'Ms. Jean Paul',
                      about: 'Marriage councillor',
                      photo: AssetImage(
                          'images/michael_dam_m_ez_3_po_f_gs_k_unsplash.png'),
                      price: '₹1000/hr',
                    ),
                    UserInfo(
                      name: 'Ms. Jean Paul',
                      about: 'Marriage councillor',
                      photo: AssetImage(
                          'images/michael_dam_m_ez_3_po_f_gs_k_unsplash.png'),
                      price: '₹1000/hr',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  final String name;
  final String about;
  final ImageProvider photo;
  final String price;

  UserInfo({this.name, this.about, this.photo, this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Image(
                      image: photo,
                      height: 55,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        name,
                        style: TextStyle(
                          color: Color(0xff072ac8),
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        about,
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                price,
                style: TextStyle(
                  color: Color(0xff393e41),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 30),
            child: SizedBox(
              height: 2,
              child: Divider(
                color: Color(0xffa2d6f9),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PreferenceRow extends StatelessWidget {
  final String label;
  final Color color;
  final Color backColor;
  PreferenceRow({this.label, this.color, this.backColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.center,
        child: Text(
          label,
        ),
      ),
    );
  }
}

class Choice extends StatefulWidget {
  final String label;

  Choice({this.label});

  @override
  _ChoiceState createState() => _ChoiceState();
}

class _ChoiceState extends State<Choice> {
  bool check = false;
  Color textcolor = Color(0xff072ac8);
  Color backcolor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: FlatButton(
        child: Text(
          widget.label,
          style: TextStyle(fontFamily: 'SourceSansPro', fontSize: 15),
        ),
        onPressed: () {
          check = check ? false : true;
          setState(() {
            textcolor = check ? Colors.white : Color(0xff072ac8);
            backcolor = check ? Color(0xff072ac8) : Colors.white;
          });
        },
        textColor: textcolor,
        color: backcolor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: BorderSide(color: Color(0xff072ac8))),
      ),
    );
  }
}
