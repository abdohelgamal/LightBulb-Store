import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_app/Components/AppBar.dart';
import 'package:store_app/Components/Button.dart';
import 'package:store_app/Components/GradientContainer.dart';
import 'package:store_app/Screens/ServiceDetails.dart';

class ChooseLocation extends StatefulWidget {
  ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  late MapController controller;

  @override
  void initState() {
    controller = MapController(
      initMapWithUserPosition: false,
      initPosition: GeoPoint(latitude: 31, longitude: 31),
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: MyAppBar(
          bottom: GradientContainer(
            text: 'خدمة نجار',
          ),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              OSMFlutter(
                markerOption: MarkerOption(
                    advancedPickerMarker: MarkerIcon(
                  iconWidget: SvgPicture.asset(
                    'assets/mapPicker.svg',
                    height: 180,
                  ),
                )),
                initZoom: 7,
                isPicker: true,
                mapIsLoading: Center(
                  child: SpinKitDoubleBounce(
                      duration: Duration(milliseconds: 700),
                      color: Color.fromARGB(255, 62, 130, 163)),
                ),
                controller: controller,
              ),
              Positioned(
                bottom: 45,
                child: Column(
                  children: [
                    CustomButton(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ServiceDetails()));
                      },
                      childWidget: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset('assets/locationConfirm.svg'),
                          Text(
                            'تأكيد العنوان',
                          ),
                          SizedBox(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    CustomButton(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      decoration: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          foregroundColor:
                              MaterialStateProperty.all(Color(0xFF70BCFF)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  side: BorderSide(color: Color(0xFF70BCFF))))),
                      childWidget: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset('assets/twoarrowscircle.svg'),
                          Text(
                            'إعادة ضبط الموقع تلقائي',
                          ),
                          SizedBox(),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
