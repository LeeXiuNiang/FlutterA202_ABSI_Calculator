import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _sex = ['Male', 'Female'];
  var _currentSexSelected = 'Male';
  int age = -1;
  TextEditingController ageTextEditingController = new TextEditingController();
  TextEditingController heightTextEditingController =
      new TextEditingController();
  var _height = ['cm', 'm', 'in', 'ft'];
  var _currentHeightSelected = 'cm';
  String oldheightSelected = 'cm';
  double heightM = 0.0;
  double heightFinal = 0.0;
  TextEditingController weightTextEditingController =
      new TextEditingController();
  var _weight = ['kg', 'lb', 'stone'];
  var _currentWeightSelected = 'kg';
  String oldweightSelected = 'kg';
  double weightKg = 0.0;
  double weightFinal = 0.0;
  TextEditingController waistCircumferenceTextEditingController =
      new TextEditingController();
  var _waistCircumference = ['cm', 'm', 'in'];
  var _currentWaistCircumferenceSelected = 'cm';
  String oldWaistCircumferenceSelected = 'cm';
  double waistCircumferenceM = 0.0;
  double waistCircumferenceFinal = 0.0;
  double absi = 0.0;
  double absiMean = 0;
  double absiSD = 0;
  double absiZ = 0.0;
  var data = [];
  String riskLevel="";

  List<Map<String, dynamic>> data_male = [
    {
      "name": "2",
      "uid": "1",
      "values": {"ABSIMean": "0.0789", "ABSISD": "0.00384"}
    },
    {
      "name": "3",
      "uid": "2",
      "values": {"ABSIMean": "0.07915", "ABSISD": "0.00384"}
    },
    {
      "name": "4",
      "uid": "3",
      "values": {"ABSIMean": "0.07937", "ABSISD": "0.00383"}
    },
    {
      "name": "5",
      "uid": "4",
      "values": {"ABSIMean": "0.07955", "ABSISD": "0.00383"}
    },
    {
      "name": "6",
      "uid": "5",
      "values": {"ABSIMean": "0.07964", "ABSISD": "0.00382"}
    },
    {
      "name": "7",
      "uid": "6",
      "values": {"ABSIMean": "0.07966", "ABSISD": "0.00382"}
    },
    {
      "name": "8",
      "uid": "7",
      "values": {"ABSIMean": "0.07958", "ABSISD": "0.00382"}
    },
    {
      "name": "9",
      "uid": "8",
      "values": {"ABSIMean": "0.07942", "ABSISD": "0.00381"}
    },
    {
      "name": "10",
      "uid": "9",
      "values": {"ABSIMean": "0.07917", "ABSISD": "0.00381"}
    },
    {
      "name": "11",
      "uid": "10",
      "values": {"ABSIMean": "0.07886", "ABSISD": "0.00381"}
    },
    {
      "name": "12",
      "uid": "11",
      "values": {"ABSIMean": "0.07849", "ABSISD": "0.0038"}
    },
    {
      "name": "13",
      "uid": "12",
      "values": {"ABSIMean": "0.0781", "ABSISD": "0.0038"}
    },
    {
      "name": "14",
      "uid": "13",
      "values": {"ABSIMean": "0.07772", "ABSISD": "0.0038"}
    },
    {
      "name": "15",
      "uid": "14",
      "values": {"ABSIMean": "0.07739", "ABSISD": "0.00379"}
    },
    {
      "name": "16",
      "uid": "15",
      "values": {"ABSIMean": "0.07716", "ABSISD": "0.00379"}
    },
    {
      "name": "17",
      "uid": "16",
      "values": {"ABSIMean": "0.07703", "ABSISD": "0.00378"}
    },
    {
      "name": "18",
      "uid": "17",
      "values": {"ABSIMean": "0.07702", "ABSISD": "0.00378"}
    },
    {
      "name": "19",
      "uid": "18",
      "values": {"ABSIMean": "0.07711", "ABSISD": "0.00378"}
    },
    {
      "name": "20",
      "uid": "19",
      "values": {"ABSIMean": "0.07728", "ABSISD": "0.00377"}
    },
    {
      "name": "21",
      "uid": "20",
      "values": {"ABSIMean": "0.0775", "ABSISD": "0.00377"}
    },
    {
      "name": "22",
      "uid": "21",
      "values": {"ABSIMean": "0.07777", "ABSISD": "0.00377"}
    },
    {
      "name": "23",
      "uid": "22",
      "values": {"ABSIMean": "0.07804", "ABSISD": "0.00376"}
    },
    {
      "name": "24",
      "uid": "23",
      "values": {"ABSIMean": "0.07831", "ABSISD": "0.00376"}
    },
    {
      "name": "25",
      "uid": "24",
      "values": {"ABSIMean": "0.07858", "ABSISD": "0.00376"}
    },
    {
      "name": "26",
      "uid": "25",
      "values": {"ABSIMean": "0.07882", "ABSISD": "0.00375"}
    },
    {
      "name": "27",
      "uid": "26",
      "values": {"ABSIMean": "0.07904", "ABSISD": "0.00375"}
    },
    {
      "name": "28",
      "uid": "27",
      "values": {"ABSIMean": "0.07922", "ABSISD": "0.00374"}
    },
    {
      "name": "29",
      "uid": "28",
      "values": {"ABSIMean": "0.07938", "ABSISD": "0.00374"}
    },
    {
      "name": "30",
      "uid": "29",
      "values": {"ABSIMean": "0.07951", "ABSISD": "0.00374"}
    },
    {
      "name": "31",
      "uid": "30",
      "values": {"ABSIMean": "0.07963", "ABSISD": "0.00373"}
    },
    {
      "name": "32",
      "uid": "31",
      "values": {"ABSIMean": "0.07975", "ABSISD": "0.00373"}
    },
    {
      "name": "33",
      "uid": "32",
      "values": {"ABSIMean": "0.07988", "ABSISD": "0.00373"}
    },
    {
      "name": "34",
      "uid": "33",
      "values": {"ABSIMean": "0.08", "ABSISD": "0.00372"}
    },
    {
      "name": "35",
      "uid": "34",
      "values": {"ABSIMean": "0.08013", "ABSISD": "0.00372"}
    },
    {
      "name": "36",
      "uid": "35",
      "values": {"ABSIMean": "0.08027", "ABSISD": "0.00371"}
    },
    {
      "name": "37",
      "uid": "36",
      "values": {"ABSIMean": "0.08042", "ABSISD": "0.00371"}
    },
    {
      "name": "38",
      "uid": "37",
      "values": {"ABSIMean": "0.08057", "ABSISD": "0.00371"}
    },
    {
      "name": "39",
      "uid": "38",
      "values": {"ABSIMean": "0.08072", "ABSISD": "0.0037"}
    },
    {
      "name": "40",
      "uid": "39",
      "values": {"ABSIMean": "0.08087", "ABSISD": "0.0037"}
    },
    {
      "name": "41",
      "uid": "40",
      "values": {"ABSIMean": "0.08102", "ABSISD": "0.0037"}
    },
    {
      "name": "42",
      "uid": "41",
      "values": {"ABSIMean": "0.08117", "ABSISD": "0.00369"}
    },
    {
      "name": "43",
      "uid": "42",
      "values": {"ABSIMean": "0.08132", "ABSISD": "0.00369"}
    },
    {
      "name": "44",
      "uid": "43",
      "values": {"ABSIMean": "0.08148", "ABSISD": "0.00368"}
    },
    {
      "name": "45",
      "uid": "44",
      "values": {"ABSIMean": "0.08165", "ABSISD": "0.00368"}
    },
    {
      "name": "46",
      "uid": "45",
      "values": {"ABSIMean": "0.08183", "ABSISD": "0.00368"}
    },
    {
      "name": "47",
      "uid": "46",
      "values": {"ABSIMean": "0.08201", "ABSISD": "0.00367"}
    },
    {
      "name": "48",
      "uid": "47",
      "values": {"ABSIMean": "0.08221", "ABSISD": "0.00367"}
    },
    {
      "name": "49",
      "uid": "48",
      "values": {"ABSIMean": "0.0824", "ABSISD": "0.00367"}
    },
    {
      "name": "50",
      "uid": "49",
      "values": {"ABSIMean": "0.0826", "ABSISD": "0.00366"}
    },
    {
      "name": "51",
      "uid": "50",
      "values": {"ABSIMean": "0.08279", "ABSISD": "0.00366"}
    },
    {
      "name": "52",
      "uid": "51",
      "values": {"ABSIMean": "0.08297", "ABSISD": "0.00365"}
    },
    {
      "name": "53",
      "uid": "52",
      "values": {"ABSIMean": "0.08315", "ABSISD": "0.00365"}
    },
    {
      "name": "54",
      "uid": "53",
      "values": {"ABSIMean": "0.08334", "ABSISD": "0.00365"}
    },
    {
      "name": "55",
      "uid": "54",
      "values": {"ABSIMean": "0.08352", "ABSISD": "0.00364"}
    },
    {
      "name": "56",
      "uid": "55",
      "values": {"ABSIMean": "0.08369", "ABSISD": "0.00364"}
    },
    {
      "name": "57",
      "uid": "56",
      "values": {"ABSIMean": "0.08386", "ABSISD": "0.00364"}
    },
    {
      "name": "58",
      "uid": "57",
      "values": {"ABSIMean": "0.08403", "ABSISD": "0.00363"}
    },
    {
      "name": "59",
      "uid": "58",
      "values": {"ABSIMean": "0.08419", "ABSISD": "0.00363"}
    },
    {
      "name": "60",
      "uid": "59",
      "values": {"ABSIMean": "0.08436", "ABSISD": "0.00362"}
    },
    {
      "name": "61",
      "uid": "60",
      "values": {"ABSIMean": "0.08454", "ABSISD": "0.00362"}
    },
    {
      "name": "62",
      "uid": "61",
      "values": {"ABSIMean": "0.08471", "ABSISD": "0.00362"}
    },
    {
      "name": "63",
      "uid": "62",
      "values": {"ABSIMean": "0.08489", "ABSISD": "0.00361"}
    },
    {
      "name": "64",
      "uid": "63",
      "values": {"ABSIMean": "0.08506", "ABSISD": "0.00361"}
    },
    {
      "name": "65",
      "uid": "64",
      "values": {"ABSIMean": "0.08522", "ABSISD": "0.0036"}
    },
    {
      "name": "66",
      "uid": "65",
      "values": {"ABSIMean": "0.08537", "ABSISD": "0.0036"}
    },
    {
      "name": "67",
      "uid": "66",
      "values": {"ABSIMean": "0.08551", "ABSISD": "0.0036"}
    },
    {
      "name": "68",
      "uid": "67",
      "values": {"ABSIMean": "0.08565", "ABSISD": "0.00359"}
    },
    {
      "name": "69",
      "uid": "68",
      "values": {"ABSIMean": "0.08578", "ABSISD": "0.00359"}
    },
    {
      "name": "70",
      "uid": "69",
      "values": {"ABSIMean": "0.08591", "ABSISD": "0.00359"}
    },
    {
      "name": "71",
      "uid": "70",
      "values": {"ABSIMean": "0.08604", "ABSISD": "0.00358"}
    },
    {
      "name": "72",
      "uid": "71",
      "values": {"ABSIMean": "0.08616", "ABSISD": "0.00358"}
    },
    {
      "name": "73",
      "uid": "72",
      "values": {"ABSIMean": "0.08629", "ABSISD": "0.00357"}
    },
    {
      "name": "74",
      "uid": "73",
      "values": {"ABSIMean": "0.08641", "ABSISD": "0.00357"}
    },
    {
      "name": "75",
      "uid": "74",
      "values": {"ABSIMean": "0.08653", "ABSISD": "0.00357"}
    },
    {
      "name": "76",
      "uid": "75",
      "values": {"ABSIMean": "0.08665", "ABSISD": "0.00356"}
    },
    {
      "name": "77",
      "uid": "76",
      "values": {"ABSIMean": "0.08675", "ABSISD": "0.00356"}
    },
    {
      "name": "78",
      "uid": "77",
      "values": {"ABSIMean": "0.08685", "ABSISD": "0.00355"}
    },
    {
      "name": "79",
      "uid": "78",
      "values": {"ABSIMean": "0.08695", "ABSISD": "0.00355"}
    },
    {
      "name": "80",
      "uid": "79",
      "values": {"ABSIMean": "0.08705", "ABSISD": "0.00355"}
    },
    {
      "name": "81",
      "uid": "80",
      "values": {"ABSIMean": "0.08714", "ABSISD": "0.00354"}
    },
    {
      "name": "82",
      "uid": "81",
      "values": {"ABSIMean": "0.08723", "ABSISD": "0.00354"}
    },
    {
      "name": "83",
      "uid": "82",
      "values": {"ABSIMean": "0.08732", "ABSISD": "0.00354"}
    },
    {
      "name": "84",
      "uid": "83",
      "values": {"ABSIMean": "0.08742", "ABSISD": "0.00353"}
    },
    {
      "name": "85",
      "uid": "84",
      "values": {"ABSIMean": "0.08811", "ABSISD": "0.00356"}
    }
  ];

  List<Map<String, dynamic>> data_female = [
    {
      "name": "2",
      "uid": "169",
      "values": {"ABSIMean": "0.08031", "ABSISD": "0.00363"}
    },
    {
      "name": "3",
      "uid": "170",
      "values": {"ABSIMean": "0.08016", "ABSISD": "0.00366"}
    },
    {
      "name": "4",
      "uid": "171",
      "values": {"ABSIMean": "0.08001", "ABSISD": "0.00369"}
    },
    {
      "name": "5",
      "uid": "172",
      "values": {"ABSIMean": "0.07985", "ABSISD": "0.00372"}
    },
    {
      "name": "6",
      "uid": "173",
      "values": {"ABSIMean": "0.07969", "ABSISD": "0.00375"}
    },
    {
      "name": "7",
      "uid": "174",
      "values": {"ABSIMean": "0.07952", "ABSISD": "0.00378"}
    },
    {
      "name": "8",
      "uid": "175",
      "values": {"ABSIMean": "0.07935", "ABSISD": "0.0038"}
    },
    {
      "name": "9",
      "uid": "176",
      "values": {"ABSIMean": "0.07917", "ABSISD": "0.00383"}
    },
    {
      "name": "10",
      "uid": "177",
      "values": {"ABSIMean": "0.07899", "ABSISD": "0.00386"}
    },
    {
      "name": "11",
      "uid": "178",
      "values": {"ABSIMean": "0.07881", "ABSISD": "0.00389"}
    },
    {
      "name": "12",
      "uid": "179",
      "values": {"ABSIMean": "0.07863", "ABSISD": "0.00392"}
    },
    {
      "name": "13",
      "uid": "180",
      "values": {"ABSIMean": "0.07846", "ABSISD": "0.00395"}
    },
    {
      "name": "14",
      "uid": "181",
      "values": {"ABSIMean": "0.07829", "ABSISD": "0.00397"}
    },
    {
      "name": "15",
      "uid": "182",
      "values": {"ABSIMean": "0.07814", "ABSISD": "0.004"}
    },
    {
      "name": "16",
      "uid": "183",
      "values": {"ABSIMean": "0.07799", "ABSISD": "0.00403"}
    },
    {
      "name": "17",
      "uid": "184",
      "values": {"ABSIMean": "0.07787", "ABSISD": "0.00406"}
    },
    {
      "name": "18",
      "uid": "185",
      "values": {"ABSIMean": "0.07775", "ABSISD": "0.00408"}
    },
    {
      "name": "19",
      "uid": "186",
      "values": {"ABSIMean": "0.07765", "ABSISD": "0.00411"}
    },
    {
      "name": "20",
      "uid": "187",
      "values": {"ABSIMean": "0.07757", "ABSISD": "0.00414"}
    },
    {
      "name": "21",
      "uid": "188",
      "values": {"ABSIMean": "0.0775", "ABSISD": "0.00416"}
    },
    {
      "name": "22",
      "uid": "189",
      "values": {"ABSIMean": "0.07744", "ABSISD": "0.00419"}
    },
    {
      "name": "23",
      "uid": "190",
      "values": {"ABSIMean": "0.0774", "ABSISD": "0.00422"}
    },
    {
      "name": "24",
      "uid": "191",
      "values": {"ABSIMean": "0.07737", "ABSISD": "0.00424"}
    },
    {
      "name": "25",
      "uid": "192",
      "values": {"ABSIMean": "0.07735", "ABSISD": "0.00427"}
    },
    {
      "name": "26",
      "uid": "193",
      "values": {"ABSIMean": "0.07734", "ABSISD": "0.00429"}
    },
    {
      "name": "27",
      "uid": "194",
      "values": {"ABSIMean": "0.07735", "ABSISD": "0.00432"}
    },
    {
      "name": "28",
      "uid": "195",
      "values": {"ABSIMean": "0.07736", "ABSISD": "0.00435"}
    },
    {
      "name": "29",
      "uid": "196",
      "values": {"ABSIMean": "0.07739", "ABSISD": "0.00437"}
    },
    {
      "name": "30",
      "uid": "197",
      "values": {"ABSIMean": "0.07743", "ABSISD": "0.0044"}
    },
    {
      "name": "31",
      "uid": "198",
      "values": {"ABSIMean": "0.07747", "ABSISD": "0.00442"}
    },
    {
      "name": "32",
      "uid": "199",
      "values": {"ABSIMean": "0.07752", "ABSISD": "0.00445"}
    },
    {
      "name": "33",
      "uid": "200",
      "values": {"ABSIMean": "0.07759", "ABSISD": "0.00447"}
    },
    {
      "name": "34",
      "uid": "201",
      "values": {"ABSIMean": "0.07766", "ABSISD": "0.0045"}
    },
    {
      "name": "35",
      "uid": "202",
      "values": {"ABSIMean": "0.07773", "ABSISD": "0.00452"}
    },
    {
      "name": "36",
      "uid": "203",
      "values": {"ABSIMean": "0.07782", "ABSISD": "0.00454"}
    },
    {
      "name": "37",
      "uid": "204",
      "values": {"ABSIMean": "0.0779", "ABSISD": "0.00457"}
    },
    {
      "name": "38",
      "uid": "205",
      "values": {"ABSIMean": "0.078", "ABSISD": "0.00459"}
    },
    {
      "name": "39",
      "uid": "206",
      "values": {"ABSIMean": "0.0781", "ABSISD": "0.00462"}
    },
    {
      "name": "40",
      "uid": "207",
      "values": {"ABSIMean": "0.0782", "ABSISD": "0.00464"}
    },
    {
      "name": "41",
      "uid": "208",
      "values": {"ABSIMean": "0.07831", "ABSISD": "0.00466"}
    },
    {
      "name": "42",
      "uid": "209",
      "values": {"ABSIMean": "0.07842", "ABSISD": "0.00469"}
    },
    {
      "name": "43",
      "uid": "210",
      "values": {"ABSIMean": "0.07854", "ABSISD": "0.00471"}
    },
    {
      "name": "44",
      "uid": "211",
      "values": {"ABSIMean": "0.07866", "ABSISD": "0.00473"}
    },
    {
      "name": "45",
      "uid": "212",
      "values": {"ABSIMean": "0.07879", "ABSISD": "0.00476"}
    },
    {
      "name": "46",
      "uid": "213",
      "values": {"ABSIMean": "0.07892", "ABSISD": "0.00478"}
    },
    {
      "name": "47",
      "uid": "214",
      "values": {"ABSIMean": "0.07905", "ABSISD": "0.0048"}
    },
    {
      "name": "48",
      "uid": "215",
      "values": {"ABSIMean": "0.07919", "ABSISD": "0.00483"}
    },
    {
      "name": "49",
      "uid": "216",
      "values": {"ABSIMean": "0.07933", "ABSISD": "0.00485"}
    },
    {
      "name": "50",
      "uid": "217",
      "values": {"ABSIMean": "0.07947", "ABSISD": "0.00487"}
    },
    {
      "name": "51",
      "uid": "218",
      "values": {"ABSIMean": "0.07962", "ABSISD": "0.00489"}
    },
    {
      "name": "52",
      "uid": "219",
      "values": {"ABSIMean": "0.07977", "ABSISD": "0.00492"}
    },
    {
      "name": "53",
      "uid": "220",
      "values": {"ABSIMean": "0.07992", "ABSISD": "0.00494"}
    },
    {
      "name": "54",
      "uid": "221",
      "values": {"ABSIMean": "0.08007", "ABSISD": "0.00496"}
    },
    {
      "name": "55",
      "uid": "222",
      "values": {"ABSIMean": "0.08023", "ABSISD": "0.00498"}
    },
    {
      "name": "56",
      "uid": "223",
      "values": {"ABSIMean": "0.08039", "ABSISD": "0.00501"}
    },
    {
      "name": "57",
      "uid": "224",
      "values": {"ABSIMean": "0.08055", "ABSISD": "0.00503"}
    },
    {
      "name": "58",
      "uid": "225",
      "values": {"ABSIMean": "0.08072", "ABSISD": "0.00505"}
    },
    {
      "name": "59",
      "uid": "226",
      "values": {"ABSIMean": "0.08088", "ABSISD": "0.00507"}
    },
    {
      "name": "60",
      "uid": "227",
      "values": {"ABSIMean": "0.08105", "ABSISD": "0.00509"}
    },
    {
      "name": "61",
      "uid": "228",
      "values": {"ABSIMean": "0.08122", "ABSISD": "0.00511"}
    },
    {
      "name": "62",
      "uid": "229",
      "values": {"ABSIMean": "0.08139", "ABSISD": "0.00514"}
    },
    {
      "name": "63",
      "uid": "230",
      "values": {"ABSIMean": "0.08156", "ABSISD": "0.00516"}
    },
    {
      "name": "64",
      "uid": "231",
      "values": {"ABSIMean": "0.08174", "ABSISD": "0.00518"}
    },
    {
      "name": "65",
      "uid": "232",
      "values": {"ABSIMean": "0.08191", "ABSISD": "0.0052"}
    },
    {
      "name": "66",
      "uid": "233",
      "values": {"ABSIMean": "0.08208", "ABSISD": "0.00522"}
    },
    {
      "name": "67",
      "uid": "234",
      "values": {"ABSIMean": "0.08226", "ABSISD": "0.00524"}
    },
    {
      "name": "68",
      "uid": "235",
      "values": {"ABSIMean": "0.08243", "ABSISD": "0.00526"}
    },
    {
      "name": "69",
      "uid": "236",
      "values": {"ABSIMean": "0.08261", "ABSISD": "0.00528"}
    },
    {
      "name": "70",
      "uid": "237",
      "values": {"ABSIMean": "0.08278", "ABSISD": "0.0053"}
    },
    {
      "name": "71",
      "uid": "238",
      "values": {"ABSIMean": "0.08296", "ABSISD": "0.00533"}
    },
    {
      "name": "72",
      "uid": "239",
      "values": {"ABSIMean": "0.08313", "ABSISD": "0.00535"}
    },
    {
      "name": "73",
      "uid": "240",
      "values": {"ABSIMean": "0.0833", "ABSISD": "0.00537"}
    },
    {
      "name": "74",
      "uid": "241",
      "values": {"ABSIMean": "0.08346", "ABSISD": "0.00539"}
    },
    {
      "name": "75",
      "uid": "242",
      "values": {"ABSIMean": "0.08363", "ABSISD": "0.00541"}
    },
    {
      "name": "76",
      "uid": "243",
      "values": {"ABSIMean": "0.0838", "ABSISD": "0.00543"}
    },
    {
      "name": "77",
      "uid": "244",
      "values": {"ABSIMean": "0.08396", "ABSISD": "0.00545"}
    },
    {
      "name": "78",
      "uid": "245",
      "values": {"ABSIMean": "0.08412", "ABSISD": "0.00547"}
    },
    {
      "name": "79",
      "uid": "246",
      "values": {"ABSIMean": "0.08428", "ABSISD": "0.00549"}
    },
    {
      "name": "80",
      "uid": "247",
      "values": {"ABSIMean": "0.08444", "ABSISD": "0.00551"}
    },
    {
      "name": "81",
      "uid": "248",
      "values": {"ABSIMean": "0.0846", "ABSISD": "0.00553"}
    },
    {
      "name": "82",
      "uid": "249",
      "values": {"ABSIMean": "0.08476", "ABSISD": "0.00555"}
    },
    {
      "name": "83",
      "uid": "250",
      "values": {"ABSIMean": "0.08492", "ABSISD": "0.00557"}
    },
    {
      "name": "84",
      "uid": "251",
      "values": {"ABSIMean": "0.08508", "ABSISD": "0.00559"}
    },
    {
      "name": "85",
      "uid": "252",
      "values": {"ABSIMean": "0.08533", "ABSISD": "0.00528"}
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ABSI Calculator'),
        ),
        body: SingleChildScrollView(
          child: Container(
              child: Column(
            children: [
              Container(
                height: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      " Sex",
                      style: TextStyle(fontSize: 17),
                    ),
                    Container(
                      child: DropdownButton<String>(
                        items: _sex.map((String dropDownSexItem) {
                          return DropdownMenuItem<String>(
                            value: dropDownSexItem,
                            child: Text(dropDownSexItem),
                          );
                        }).toList(),
                        onChanged: (String newSexSelected) {
                          _onDropDownSexSelected(newSexSelected);
                          calculateAbsiz();
                        },
                        value: _currentSexSelected,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      " Age",
                      style: TextStyle(fontSize: 17),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 80,
                          height: 55,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.end,
                            controller: ageTextEditingController,
                            onChanged: (ageTextEditingController) {
                              validateAge();
                              calculateAbsiz();
                            },
                          ),
                        ),
                        SizedBox(width: 25),
                        Container(
                            width: 50,
                            alignment: Alignment.centerRight,
                            child: Text(
                              " years ",
                              style: TextStyle(fontSize: 17),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      " Height",
                      style: TextStyle(fontSize: 17),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 80,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.end,
                            controller: heightTextEditingController,
                            onChanged: (heightTextEditingController) {
                              heightConverter(_currentHeightSelected);
                              calculateAbsiz();
                            },
                          ),
                        ),
                        DropdownButton<String>(
                          items: _height.map((String dropDownHeightItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownHeightItem,
                              child: Container(
                                  alignment: Alignment.centerRight,
                                  width: 50,
                                  child: Text(dropDownHeightItem)),
                            );
                          }).toList(),
                          onChanged: (String newHeightSelected) {
                            _onDropDownHeightSelected(newHeightSelected);
                          },
                          value: _currentHeightSelected,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      " Weight",
                      style: TextStyle(fontSize: 17),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 80,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.end,
                            controller: weightTextEditingController,
                            onChanged: (weightTextEditingController) {
                              weightConverter(_currentWeightSelected);
                              calculateAbsiz();
                            },
                          ),
                        ),
                        DropdownButton<String>(
                          items: _weight.map((String dropDownWeightItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownWeightItem,
                              child: Container(
                                  width: 50,
                                  alignment: Alignment.centerRight,
                                  child: Text(dropDownWeightItem)),
                            );
                          }).toList(),
                          onChanged: (String newWeightSelected) {
                            _onDropDownWeightSelected(newWeightSelected);
                          },
                          value: _currentWeightSelected,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      " Waist Circumference",
                      style: TextStyle(fontSize: 17),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 80,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.end,
                            controller: waistCircumferenceTextEditingController,
                            onChanged:
                                (waistCircumferenceTextEditingController) {
                              waistCircumferenceConverter(
                                  _currentWaistCircumferenceSelected);
                              calculateAbsiz();
                            },
                          ),
                        ),
                        DropdownButton<String>(
                          items: _waistCircumference
                              .map((String dropDownWaistCircumferenceItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownWaistCircumferenceItem,
                              child: Container(
                                  alignment: Alignment.centerRight,
                                  width: 50,
                                  child: Text(dropDownWaistCircumferenceItem)),
                            );
                          }).toList(),
                          onChanged: (String newWaistCircumferenceSelected) {
                            _onDropDownWaistCircumferenceSelected(
                                newWaistCircumferenceSelected);
                          },
                          value: _currentWaistCircumferenceSelected,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 55,
                color: Colors.grey,
                child: Row(
                  children: [
                    Text(
                      " Results",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              Container(
                height: 35,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      " ABSI",
                      style: TextStyle(fontSize: 17),
                    ),
                    Offstage(
                        offstage: (absi == 0) == true,
                        child: Text(
                          absi.toStringAsFixed(4),
                          style: TextStyle(fontSize: 17),
                        )),
                  ],
                ),
              ),
              Container(
                height: 35,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      " ABSI z-score",
                      style: TextStyle(fontSize: 17),
                    ),
                    Offstage(
                        offstage: (absi == 0) == true,
                        child: Text(
                          absiZ.toStringAsFixed(4),
                          style: TextStyle(fontSize: 17),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 55,
                
                child: Row( 
                  children: [
                    Offstage(
                        offstage: (absi == 0) == true,
                        child: Text(
                          " According to your ABSI z score, your premature \n mortality risk is "+riskLevel+".",
                          style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,),
                          maxLines: 3,
                        )),
                  ],
                ),
              ),
               SizedBox(
                height: 20,
              ),
              OutlinedButton.icon(
                icon: Icon(Icons.refresh),
                label: Text("Reload"),
                onPressed: () {
                  refresh();
                },
                style: ElevatedButton.styleFrom(
                  side: BorderSide(width: 2.0, color: Colors.blue),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
              ),
              
            ],
          )),
        ),
      ),
    );
  }

  void _onDropDownSexSelected(String newSexSelected) {
    setState(() {
      this._currentSexSelected = newSexSelected;
      print(_currentSexSelected);
    });
  }

  void _onDropDownHeightSelected(String newHeightSelected) {
    setState(() {
      oldheightSelected = this._currentHeightSelected;
      this._currentHeightSelected = newHeightSelected;
      print(_currentHeightSelected);
      heightConverter(newHeightSelected);
      heightTextEditingController.text = heightFinal.toStringAsFixed(3);
      calculateAbsiz();
    });
  }

  void _onDropDownWeightSelected(String newWeightSelected) {
    setState(() {
      oldweightSelected = this._currentWeightSelected;
      this._currentWeightSelected = newWeightSelected;
      print(_currentWeightSelected);
      weightConverter(newWeightSelected);
      weightTextEditingController.text = weightFinal.toStringAsFixed(3);
      calculateAbsiz();
    });
  }

  void _onDropDownWaistCircumferenceSelected(
      String newWaistCircumferenceSelected) {
    setState(() {
      oldWaistCircumferenceSelected = this._currentWaistCircumferenceSelected;
      this._currentWaistCircumferenceSelected = newWaistCircumferenceSelected;
      print(_currentWaistCircumferenceSelected);
      waistCircumferenceConverter(newWaistCircumferenceSelected);
      waistCircumferenceTextEditingController.text =
          waistCircumferenceFinal.toStringAsFixed(3);
      calculateAbsiz();
    });
  }

  void heightConverter(String newHeightSelected) {
    setState(() {
      if (heightTextEditingController.text == '') {
        heightM = 0;
        heightFinal = 0;
      } else {
        double heightInputted = double.parse(heightTextEditingController.text);
        if (oldheightSelected == 'cm') {
          heightM = heightInputted * 0.01;
        } else if (oldheightSelected == 'm') {
          heightM = heightInputted;
        } else if (oldheightSelected == 'in') {
          heightM = heightInputted / 39.3701;
        } else if (oldheightSelected == 'ft') {
          heightM = heightInputted / 3.281;
        }
        print("Height in m: " + heightM.toString());
        switch (newHeightSelected) {
          case 'cm':
            heightFinal = heightM * 100;
            break;
          case 'm':
            heightFinal = heightM;
            break;
          case 'in':
            heightFinal = heightM * 39.3701;
            break;
          case 'ft':
            heightFinal = heightM * 3.281;
            break;
          default:
            print("Error!");
        }
      }

      print("Final Height: " + heightFinal.toString());
    });
  }

  void weightConverter(String newWeightSelected) {
    setState(() {
      if (weightTextEditingController.text == '') {
        weightKg = 0;
        weightFinal = 0;
      } else {
        double weightInputted = double.parse(weightTextEditingController.text);
        if (oldweightSelected == 'kg') {
          weightKg = weightInputted;
        } else if (oldweightSelected == 'lb') {
          weightKg = weightInputted / 2.205;
        } else if (oldweightSelected == 'stone') {
          weightKg = weightInputted * 6.35;
        }
        print("Weight in kg: " + weightKg.toString());
        switch (newWeightSelected) {
          case 'kg':
            weightFinal = weightKg;
            break;
          case 'lb':
            weightFinal = weightKg * 2.205;
            break;
          case 'stone':
            weightFinal = weightKg / 6.35;
            break;
          default:
            print("Error!");
        }
      }
    });
    print("Final Weight: " + weightFinal.toString());
  }

  void waistCircumferenceConverter(String newWaistCircumferenceSelected) {
    setState(() {
      if (waistCircumferenceTextEditingController.text == '') {
        waistCircumferenceM = 0;
        waistCircumferenceFinal = 0;
      } else {
        double waistCircumferenceInputted =
            double.parse(waistCircumferenceTextEditingController.text);

        if (oldWaistCircumferenceSelected == 'cm') {
          waistCircumferenceM = waistCircumferenceInputted * 0.01;
        } else if (oldWaistCircumferenceSelected == 'm') {
          waistCircumferenceM = waistCircumferenceInputted;
        } else if (oldWaistCircumferenceSelected == 'in') {
          waistCircumferenceM = waistCircumferenceInputted / 39.3701;
        }
        print("Waist Circumference in m: " + waistCircumferenceM.toString());
        switch (newWaistCircumferenceSelected) {
          case 'cm':
            waistCircumferenceFinal = waistCircumferenceM * 100;
            break;
          case 'm':
            waistCircumferenceFinal = waistCircumferenceM;
            break;
          case 'in':
            waistCircumferenceFinal = waistCircumferenceM * 39.3701;
            break;
          default:
            print("Error!");
        }
        print(
            "Final Waist Circumference: " + waistCircumferenceFinal.toString());
      }
    });
  }

  void calculateAbsi() {
    validateAge();
    absi = 0;
    if (heightM == 0 ||
        weightKg == 0 ||
        waistCircumferenceM == 0 ||
        age == -1 ||
        age == 0) {
      absi = 0;
    } else {
      absi = waistCircumferenceM /
          (pow((weightKg / pow(heightM, 2)), 2 / 3) * pow(heightM, 1 / 2));
    }
  }

  void calculateAbsiz() {
    print(_currentSexSelected);
    if (_currentSexSelected == 'Male') {
        data = data_male;
      } else if (_currentSexSelected == 'Female') {
        print(_currentSexSelected);
        data = data_female;
      }
    for (int i = 0; i < data.length; i++) {
      if (data[i]["name"] == age.toString()) {
        absiMean = double.parse(data[i]["values"]["ABSIMean"]);
        absiSD = double.parse(data[i]["values"]["ABSISD"]);
      }
    }
    calculateAbsi();
    absiZ= (absi-absiMean)/absiSD;

    intepretRiskLevel();
  }

  void refresh() {

    setState(() {
      _onDropDownSexSelected(_currentSexSelected);
      _onDropDownHeightSelected(_currentHeightSelected);
      _onDropDownWeightSelected(_currentWeightSelected);
      _onDropDownWaistCircumferenceSelected(_currentWaistCircumferenceSelected);
      _currentSexSelected = 'Male';
      _currentHeightSelected = 'cm';
      _currentWeightSelected = 'kg';
      _currentWaistCircumferenceSelected = 'cm';
      ageTextEditingController.text = "";
      heightTextEditingController.text = "";
      weightTextEditingController.text = "";
      waistCircumferenceTextEditingController.text = "";
      absi = 0;
      heightM = 0;
      weightKg = 0;
      waistCircumferenceM = 0;
      age = -1;
      
    });
  }

  void validateAge() {

    setState(() {
      print("VALIDATED");
      if (ageTextEditingController.text != "") {
        print("NOT EMPTY");
        int ageInputted = int.parse(ageTextEditingController.text);
        if (ageInputted < 2) {
          age = -1;
          Fluttertoast.showToast(
              msg: "The youngest age is 2",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 17.0);
        } else if (ageInputted > 85) {
          age = -1;
          Fluttertoast.showToast(
              msg:
                  "Sorry, this calculator is intended for people under 86 years of age.",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 17.0);
        } else {
          age = ageInputted;
        }
      } else {
        age = 0;
        print("EMPTY");
      }

      if (heightM != 0 &&
          weightKg != 0 &&
          waistCircumferenceM != 0 &&
          age == 0) {
        Fluttertoast.showToast(
            msg: "Please enter age.",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 17.0);
      }
    });
  }

  void intepretRiskLevel(){
    if(absiZ==0){
      riskLevel = "";
    }else if(absiZ< -0.868){
      riskLevel = "very low";
    }else if(absiZ>= -0.868 && absiZ<=-0.272){
      riskLevel = "low";
    }else if(absiZ>= -0.272 && absiZ<=0.229){
      riskLevel = "average";
    }else if(absiZ>= 0.229  && absiZ<=0.798){
      riskLevel = "high";
    }else if(absiZ>0.798){
      riskLevel = "very high";
    }
  }

  
  
}
