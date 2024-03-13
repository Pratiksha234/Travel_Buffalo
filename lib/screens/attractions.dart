import 'package:flutter/material.dart';
import 'package:buffalo_travel/models/places.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class AttractionDetailsPage extends StatelessWidget {
  final Attraction attraction;

  const AttractionDetailsPage({super.key, required this.attraction});

  @override
  Widget build(BuildContext context) {
    final Uri url = Uri.parse(attraction.website);
    Future<void> fetchYelpBusinessReviews() async {
      const String apiUrl =
          'https://api.yelp.com/v3/businesses/{business_id_or_alias}/reviews';
      const String apiKey =
          'YOUR_API_KEY_HERE'; // Replace with your Yelp API Key

      final response = await http.get(
        Uri.parse(apiUrl),
        // Include the API key in the request headers for authentication
        headers: {
          'Authorization': 'Bearer $apiKey',
          'Accept': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        // If the server did return a 200 OK response,
        // then parse the JSON.
        print(json.decode(response.body));
      } else {
        // If the server did not return a 200 OK response,
        // then throw an exception.
        throw Exception('Failed to load reviews');
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(attraction.name),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(
                attraction.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              attraction.description,
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Location: ${attraction.latitude}, ${attraction.longitude}',
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 16.0),
            // ElevatedButton(
            //   onPressed: () {
            //     // Add navigation to Yelp reviews
            //   },
            //   child: const Text('View Yelp Reviews'),
            // ),
            const SizedBox(height: 16.0),
            Text(
              'Address: ${attraction.address}',
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
            Text(
              'Opening Hours: ${attraction.openingHours}',
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
            Text(
              'Contact Info: ${attraction.contactInfo}',
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
            TextButton(
              onPressed: () {
                launchUrl(url);
              },
              child: Text(
                'Website: ${attraction.website}',
                style: const TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.blue),
              ),
            ),
            if (attraction.reviews.isNotEmpty)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16.0),
                  const Text(
                    'Reviews:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  for (var review in attraction.reviews)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(' - $review'),
                    ),
                ],
              ),
            if (attraction.nearbyAttractions.isNotEmpty)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16.0),
                  const Text(
                    'Nearby Attractions:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  for (var nearbyAttraction in attraction.nearbyAttractions)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(' - ${nearbyAttraction.name}'),
                    ),
                ],
              ),
            const SizedBox(height: 16.0),
            // SizedBox(
            //   height: 300,
            //   child: GoogleMap(
            //     initialCameraPosition: CameraPosition(
            //       target: LatLng(attraction.latitude, attraction.longitude),
            //       zoom: 15,
            //     ),
            //     markers: {
            //       Marker(
            //         markerId: MarkerId(attraction.name),
            //         position: LatLng(attraction.latitude, attraction.longitude),
            //         infoWindow: InfoWindow(
            //             title: attraction.name,
            //             snippet: attraction.description),
            //       ),
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
