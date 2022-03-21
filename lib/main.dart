import 'package:flutter/material.dart';
import 'package:card_settings/card_settings.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

Map<int, Color> color = {
  50: Color.fromRGBO(136, 14, 79, .1),
  100: Color.fromRGBO(136, 14, 79, .2),
  200: Color.fromRGBO(136, 14, 79, .3),
  300: Color.fromRGBO(136, 14, 79, .4),
  400: Color.fromRGBO(136, 14, 79, .5),
  500: Color.fromRGBO(136, 14, 79, .6),
  600: Color.fromRGBO(136, 14, 79, .7),
  700: Color.fromRGBO(136, 14, 79, .8),
  800: Color.fromRGBO(136, 14, 79, .9),
  900: Color.fromRGBO(136, 14, 79, 1),
};

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    MaterialColor colorCustom = MaterialColor(0xFF292727, color);
    return MaterialApp(
      title: "My App",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: colorCustom),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        title: Text("Tapioca QC System."),
      ),
      body: Column(
        children: [
          AppBar(
            toolbarHeight: 18,
            backgroundColor: HexColor("#a8a5a5"),
          ),
          AppBar(
            toolbarHeight: 70,
            backgroundColor: HexColor("#23a878"),
            leading: Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Icon(
                  Icons.refresh,
                  size: 40,
                ),
              ),
            ),
            centerTitle: false,
            title: Container(
              padding: EdgeInsets.only(left: 900),
              child: Container(
                color: HexColor("#FFFFFF"),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "ระบุรหัสผ่าน (QC Password)",
                    labelStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(flex: 1, child: boxone()),
              Expanded(flex: 2, child: boxtwo()),
            ],
          )
        ],
      ),
    );
  }
}

class boxone extends StatelessWidget {
  const boxone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      child: Card(
        color: HexColor("#35b064"),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 8,
        child: CardSettingsHeader(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Card(
              color: HexColor("#FFFFFF"),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "ข้อมูลรถที่ชั่งเข้า",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "จังหวัด :  ",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Container(
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "ค้นหา\nทะเบียนรถ :  ",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Container(
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "เลขที่ใบชั่ง :  ",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Container(
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "วันที่\nเวลาเข้า :  ",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Container(
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "น้ำหนักเข้า\n(kg) :  ",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Container(
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
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
        ),
      ),
    );
  }
}

class boxtwo extends StatefulWidget {
  const boxtwo({Key? key}) : super(key: key);

  @override
  State<boxtwo> createState() => _boxtwoState();
}

class _boxtwoState extends State<boxtwo> {
  bool isChecked = false;
  String select1 = '-';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      child: Card(
        color: HexColor("#B983FF"),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 8,
        child: Container(
          child: CardSettingsHeader(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Card(
                color: HexColor("#FFFFFF"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                decoration: BoxDecoration(border: Border.all()),
                                alignment: Alignment.center,
                                child: Text(
                                  "รายการหัก % น้ำหนัก หัวมัน",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                              ),
                              Table(
                                border: TableBorder.all(),
                                columnWidths: {
                                  0: FlexColumnWidth(0.3),
                                  1: FlexColumnWidth(1.7),
                                },
                                defaultVerticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                children: <TableRow>[
                                  TableRow(
                                    children: [
                                      Container(
                                        child: Checkbox(
                                          value: isChecked,
                                          onChanged: (value) {
                                            setState(() {
                                              isChecked = value!;
                                            });
                                          },
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          " 0.ไม่มีรายการหัก",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                              color: HexColor("#fc0a0a")),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Container(
                                        height: 50,
                                        alignment: Alignment.center,
                                        child: DropdownButton<String>(
                                          value: select1,
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              select1 = newValue!;
                                            });
                                          },
                                          items: <String>[
                                            '-',
                                            '1%',
                                            '2%',
                                            '3%',
                                            '4%',
                                            '5%',
                                            '6%',
                                            '7%',
                                            '8%',
                                            '9%',
                                            '10%',
                                            '15%',
                                            '20%',
                                            '30%'
                                          ].map<DropdownMenuItem<String>>(
                                              (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                      Container(
                                          height: 50,
                                          alignment: Alignment.centerLeft,
                                          child: Row(
                                            children: [
                                              Text(
                                                " 1.หักดิน",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25,
                                                ),
                                              ),
                                              Text(
                                                " {1% 2% 3% 4% 5% 6% 7% 8% 9% 10% 15% 20% 30%}",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ],
                                          )),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Container(
                              height: 70,
                              decoration: BoxDecoration(border: Border.all()),
                              alignment: Alignment.center,
                              child: Text(
                                "หักค่าดั๊ม ค่าลงมัน",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                            ))
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
