import 'package:flutter/material.dart';
import 'package:shedule/pages/monday_page.dart';

class SchedulePage extends StatefulWidget  {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  State<SchedulePage> createState() => _SchedulePageState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

  @override
  // TODO: implement context
  BuildContext get context => throw UnimplementedError();

  @override
  void deactivate() {
    // TODO: implement deactivate
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
  }

  @override
  void didUpdateWidget(covariant StatefulWidget oldWidget) {
    // TODO: implement didUpdateWidget
  }

  @override
  void initState() {
    // TODO: implement initState
  }

  @override
  // TODO: implement mounted
  bool get mounted => throw UnimplementedError();

  @override
  void reassemble() {
    // TODO: implement reassemble
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
  }

  @override
  // TODO: implement widget
  StatefulWidget get widget => throw UnimplementedError();
}

class _SchedulePageState extends State<SchedulePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {

    TabController _tabController = TabController(length: 5, vsync: this);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 80, right: 220),
          child: Text(
            'Расписание',
            style: TextStyle(
                fontSize: 26.0,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          width: 300,
          margin: EdgeInsets.only(right: 80, top: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: TabBar(
            indicator: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(30)
            ),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.blue,

            controller: _tabController,
            tabs: const[
              Tab(text: 'Пн',),
              Tab(text: 'Вт',),
              Tab(text: 'Ср',),
              Tab(text: 'Чт',),
              Tab(text: 'Пт',),
            ],
          ),
        ),
        Container(
          width: double.maxFinite,
          height: 300,
          child: TabBarView(

            controller: _tabController,
            children: [
              ListView(children: [
                MondayPage(name: 'русский', time: '9:30-10:50', auditorium: '4/321', teacher: 'Olga'),
                MondayPage(name: 'русский', time: '5:20', auditorium: '4/321', teacher: 'Olga'),

              ]),
              MondayPage(name: 'русский', time: '5:20', auditorium: '4/321', teacher: 'Olga'),
              Text('математика'),
              Text('математика'),
              Text('математика'),
            ],
          ),
        )
        // ListView(
        //
        // )
      ],
    );
  }
}
