import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';
import 'package:timeapi/classes/getdate.dart';
import 'package:timeapi/home.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  getDataLoadingPage() async {
    //  info about time

    AllCountries oneCountry =
    AllCountries(countryName: "Egypt", flag: "egypt", link: "Africa/Cairo");

    await oneCountry.getData();

    Navigator.pushReplacementNamed(context, '/home', arguments: {
      "time": oneCountry.timeNow,
      "location": oneCountry.timeZone,
      "isDayTime": oneCountry.isDayTime
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDataLoadingPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){getDataLoadingPage();},
              child: SpinKitWave(
                color: Color.fromARGB(146, 12, 16, 49),
                size: 150.0,
              ),
            ),

          ],
        ),
      ),
    );
  }
}