// pages/home_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_map_marker_popup/flutter_map_marker_popup.dart';
import '../models/dansal.dart';
import '../data/dummy_dansals.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final MapController mapController = MapController();
  final PopupController _popupLayerController = PopupController();
  List<LatLng> polylineCoordinates = [];
  Dansal? selectedDansal;

  Future<Position?> _getCurrentLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return null;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return null;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return null;
    }

    return await Geolocator.getCurrentPosition();
  }

  Future<void> _getPolylinePoints(LatLng start, LatLng destination) async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      googleApiKey: 'AIzaSyAN8eDI91tNVet44n0Hke4jLJ7IZuKtEPE',
      request: PolylineRequest(
        origin: PointLatLng(start.latitude, start.longitude),
        destination: PointLatLng(destination.latitude, destination.longitude),
        mode: TravelMode.driving,
      ),
    );

    if (result.points.isNotEmpty) {
      setState(() {
        polylineCoordinates = result.points
            .map((point) => LatLng(point.latitude, point.longitude))
            .toList();
      });
    }
  }

  void _showDansalDetails(BuildContext context, Dansal dansal) {
    setState(() {
      selectedDansal = dansal;
    });

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.4,
        minChildSize: 0.2,
        maxChildSize: 0.8,
        expand: false,
        builder: (_, controller) => SingleChildScrollView(
          controller: controller,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(dansal.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dansal.name,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.amber),
                        Text(
                          ' ${dansal.rating}',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      dansal.address,
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Opening Hours: ${dansal.openingHours}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      dansal.description,
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () async {
                          final currentLocation = await _getCurrentLocation();
                          if (currentLocation != null) {
                            await _getPolylinePoints(
                              LatLng(
                                currentLocation.latitude,
                                currentLocation.longitude,
                              ),
                              LatLng(dansal.latitude, dansal.longitude),
                            );
                            Navigator.pop(context);
                          }
                        },
                        icon: const Icon(Icons.directions),
                        label: const Text('Get Directions'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            mapController: mapController,
            options: MapOptions(
              initialCenter: LatLng(6.927079, 79.861244), // Colombo, Sri Lanka
              initialZoom: 12,
              minZoom: 0,
              maxZoom: 18,
              onTap: (_, __) => _popupLayerController.hideAllPopups(),
            ),
            children: [
              TileLayer(
                urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                userAgentPackageName: 'com.example.app',
              ),
              CurrentLocationLayer(
                style: const LocationMarkerStyle(
                  marker: DefaultLocationMarker(
                    child: Icon(
                      Icons.my_location,
                      color: Colors.white,
                    ),
                  ),
                  markerSize: Size(35, 35),
                  markerDirection: MarkerDirection.heading,
                ),
              ),
              PopupMarkerLayer(
                options: PopupMarkerLayerOptions(
                  popupController: _popupLayerController,
                  markers: dummyDansals
                      .map(
                        (dansal) => Marker(
                          point: LatLng(dansal.latitude, dansal.longitude),
                          width: 40,
                          height: 40,
                          child: GestureDetector(
                            onTap: () => _showDansalDetails(context, dansal),
                            child: const Icon(
                              Icons.location_on,
                              size: 40,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                  popupDisplayOptions: PopupDisplayOptions(
                    builder: (_, Marker marker) {
                      final dansal = dummyDansals.firstWhere(
                        (d) =>
                            d.latitude == marker.point.latitude &&
                            d.longitude == marker.point.longitude,
                      );
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                dansal.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(dansal.address),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              if (polylineCoordinates.isNotEmpty)
                PolylineLayer(
                  polylines: [
                    Polyline(
                      points: polylineCoordinates,
                      strokeWidth: 4,
                      color: Colors.blue,
                    ),
                  ],
                ),
            ],
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () async {
              final position = await _getCurrentLocation();
              if (position != null) {
                mapController.move(
                  LatLng(position.latitude, position.longitude),
                  15,
                );
              }
            },
            child: const Icon(Icons.my_location),
          ),
          if (selectedDansal != null) ...[
            const SizedBox(height: 16),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  polylineCoordinates.clear();
                  selectedDansal = null;
                });
              },
              child: const Icon(Icons.clear),
            ),
          ],
        ],
      ),
    );
  }
}
