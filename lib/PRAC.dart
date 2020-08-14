
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin  {
  TabController _tabController;
  String mindropdownvalue = '₹500';
  String maxdropdownvalue = '₹2000';
  @override
  void initState() {
    _tabController =  new TabController(length: 3, vsync: this);
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('APP Bar'),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                child: TabBar(
                  tabs: [
                    new Tab(child: PreferenceRow(label: 'Expertise',color: Color(0xff072ac8),backColor: Color(0xfff3f5ff),),),
                    new Tab(child:PreferenceRow(label: 'Language',color: Color(0xff393e41),backColor: Colors.white,),),
                    new Tab(child: PreferenceRow(label: 'Price',color: Color(0xff393e41),backColor: Colors.white,),),

                  ],
                  controller: _tabController,
                ),
              ),
              Expanded(
                child: TabBarView(children: [
                  Container(
                    color: Colors.grey,
                    height: 170,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
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
                              Choice(label: 'Career/Academic',)
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Choice(label: 'Health',),
                              Choice(label: 'Other',)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Color(0xfff3f5ff),
                    height: 160,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 25),
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
                              Choice(label: 'Malyalam',)
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              Text(
                'Hello',
                style: TextStyle(
                    fontSize: 18
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}


class PreferenceRow extends StatelessWidget {
  final String label;
  final Color color;
  final Color backColor;
  PreferenceRow({this.label,this.color,this.backColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          label,
          style: TextStyle(
            fontFamily: 'SourceSansPro',
            color: color,
            fontSize: 18,
          ) ,
        ),
      ),
    );
  }
}
class Choice extends StatelessWidget {
  final String label;

  Choice({this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: OutlineButton(
        child: Text(
          label,
          style: TextStyle(
              fontFamily: 'SourceSansPro',
              fontSize: 15
          ),
        ),

        disabledTextColor: Color(0xff072ac8),
        disabledBorderColor: Color(0xff072ac8),
        splashColor: Color(0xff072ac8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
    );
  }
}

