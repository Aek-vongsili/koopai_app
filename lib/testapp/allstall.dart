import 'package:app1623/data/dumyshop.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class AllStores extends StatefulWidget {
  const AllStores({Key? key}) : super(key: key);

  @override
  _AllStoresState createState() => _AllStoresState();
}

class _AllStoresState extends State<AllStores> {
  Position? _currentUserPosition;
  double? distanceImMeter = 0.0;
  Data data = Data();

  Future _getTheDistance() async {
    _currentUserPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    for (int i = 0; i < data.allstores.length; i++) {
      double storelat = data.allstores[i]['lat'];
      double storelng = data.allstores[i]['lng'];

      distanceImMeter = Geolocator.distanceBetween(
        _currentUserPosition!.latitude,
        _currentUserPosition!.longitude,
        storelat,
        storelng,
      );
      var distance = distanceImMeter?.round().toInt();

      data.allstores[i]['distance'] = (distance! / 100);
      setState(() {});
    }
  }

  @override
  void initState() {
    _getTheDistance();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff2980b9),
        title: const Text("All Stores Near you"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
        child: GridView.builder(
            itemCount: data.allstores.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return Container(
                color: const Color(0xff3498db),
                height: height * 0.9,
                width: width,
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.12,
                      width: width,
                      child: Image.network(
                        data.allstores[index]['image'],
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      data.allstores[index]['name'],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.location_on),
                        Text(
                          "${data.allstores[index]['distance'].round()} KM Away",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
