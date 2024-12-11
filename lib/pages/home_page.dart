import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_moon/widgets/custom_dropdownButton.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceHeight * 0.050),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _pageTitle(),
              _travelInformationWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      '#GoMoon',
      style: TextStyle(
        color: Color.fromARGB(255, 15, 13, 13),
        fontSize: 60,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget _astroImgaeWidget() {
    return Container(
      height: _deviceHeight * 0.50,
      width: _deviceWidth * 0.650,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
              "/Users/a824720/Documents/flutter_project/go_moon/assets/images/stro.jpeg"),
        ),
      ),
    );
  }

  Widget _travelInformationWidget() {
    return Container(
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropdownWidget(),
          _planetsRadiusDropdownWidget(),
          _rideButtonWidget()
        ],
      ),
    );
  }

  Widget _destinationDropdownWidget() {
    return CustomDropdownbuttonClass(
      values: const [
        'Select Planets',
        'Mars',
        'Jupiter',
        'Earth',
        'Neptune',
        'Uranus',
        'Mercury',
        'Venus',
        'Saturn'
      ],
      width: _deviceWidth * 0.45,
    );
  }

  Widget _planetsRadiusDropdownWidget() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomDropdownbuttonClass(
            values: const [
              'Select Planets radius',
              'Mars : 3,390km',
              'Jupiter: 69,911km',
              'Earth: 6,371km',
              'Neptune: 24,622km',
              'Uranus: 25,362km',
              'Mercury: 2,440km',
              'Venus: 6,052km',
              'Saturn: 58,232km'
            ],
            width: _deviceWidth * 0.47,
          ),
          CustomDropdownbuttonClass(
            values: const ['Economy', 'Business', 'General'],
            width: _deviceWidth * .25,
          )
        ]);
  }

  Widget _rideButtonWidget() {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.01),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 117, 87, 122),
        borderRadius: BorderRadius.circular(10),
      ),
      width: _deviceHeight,
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          'Book Ride',
          style: TextStyle(
            color: const Color.fromARGB(255, 239, 240, 244),
          ),
        ),
      ),
    );
  }
}
