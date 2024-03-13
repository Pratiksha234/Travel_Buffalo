import 'package:buffalo_travel/models/places.dart';
import 'package:buffalo_travel/screens/attractions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Static list of attractions

  final List<Attraction> attractions = [
    Attraction(
      name: 'Niagara Falls State Park',
      description:
          'Witness the awe-inspiring power and beauty of Niagara Falls.',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/a/ab/3Falls_Niagara.jpg',
      latitude: 43.088056,
      longitude: -78.886667,
      category: 'Nature',
      address: 'Niagara Falls, NY, USA',
      openingHours: '9:00 AM - 5:00 PM',
      contactInfo: '+1 123-456-7890',
      website: 'https://www.niagarafallsstatepark.com/',
      reviews: ['Amazing place!', 'Must-visit attraction.'],
      nearbyAttractions: [],
    ),
    Attraction(
      name: 'Buffalo Naval & Military Park',
      description:
          'Explore historic warships and learn about Buffalo\'s rich military history.',
      imageUrl:
          'https://www.visitbuffaloniagara.com/content/uploads/2022/11/BuffaloNavalParkAerialPhoto-reduced.jpg',
      latitude: 42.890833,
      longitude: -78.873333,
      category: 'Historical Places and Museums',
      address: '1 Naval Park Cove, Buffalo, NY 14202, USA',
      openingHours: '10:00 AM - 5:00 PM',
      contactInfo: '+1 716-847-1773',
      website: 'https://www.buffalonavalpark.org/',
      reviews: ['Great museum!', 'Very informative.'],
      nearbyAttractions: [],
    ),
    Attraction(
      name: 'Albright-Knox Art Gallery',
      description:
          'Immerse yourself in a world of modern and contemporary art.',
      imageUrl:
          'https://media.cntraveler.com/photos/5b3116a094553e5edba98572/16:9/w_2560,c_limit/Albright-Knox-Art-Gallery_Tom-Loonan_2018_2006.05.02_1905-Building-Exterior_Delaware-Lawn_Gillick_3306.jpg',
      latitude: 42.880278,
      longitude: -78.876667,
      category: 'Art Galleries and Performances',
      address: '1285 Elmwood Ave, Buffalo, NY 14222, USA',
      openingHours: '10:00 AM - 5:00 PM',
      contactInfo: '+1 716-882-8700',
      website: 'https://www.albrightknox.org/',
      reviews: ['Fantastic collection!', 'A must-see for art lovers.'],
      nearbyAttractions: [],
    ),
    Attraction(
      name: 'Theodore Roosevelt Inaugural Site',
      description:
          'Visit the historic location where Theodore Roosevelt became the 26th President.',
      imageUrl:
          'https://www.visitbuffaloniagara.com/content/uploads/2018/05/TRSite_6.jpg',
      latitude: 42.880556,
      longitude: -78.878333,
      category: 'Historical Places and Museums',
      address: '641 Delaware Ave, Buffalo, NY 14202, USA',
      openingHours: '10:00 AM - 5:00 PM',
      contactInfo: '+1 716-884-0095',
      website: 'https://www.trsite.org/',
      reviews: ['Very informative!', 'Great place to learn about history.'],
      nearbyAttractions: [],
    ),
    Attraction(
      name: 'The Buffalo History Museum',
      description:
          'Discover Buffalo\'s fascinating story from its origins to the present day.',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/5/5b/Lincoln%2C_the_Emancipator_at_The_Buffalo_History_Museum.jpg',
      latitude: 42.882222,
      longitude: -78.877778,
      category: 'Historical Places and Museums',
      address: 'One Museum Court, Buffalo, NY 14216, USA',
      openingHours: 'Wednesday - Sunday: 10:00 AM - 5:00 PM',
      contactInfo: '+1 716-873-9644',
      website: 'https://buffalohistory.org/',
      reviews: [
        'A must-visit for history buffs!',
        'Great exhibits and artifacts.'
      ],
      nearbyAttractions: [],
    ),
    Attraction(
      name: 'Canalside',
      description:
          'Enjoy waterfront activities, dining, and entertainment at this vibrant urban space.',
      imageUrl:
          'https://www.wnypapers.com/content/images//Buffalo/Explore-More-topping-1.png',
      latitude: 42.8795,
      longitude: -78.8811,
      category: 'Nature',
      address: '44 Prime St, Buffalo, NY 14202, USA',
      openingHours: 'Open daily, 6:00 AM - 11:00 PM',
      contactInfo: '+1 716-342-2292',
      website: 'https://www.canalsidebuffalo.com/',
      reviews: [
        'Great place for family outings!',
        'Beautiful views of the waterfront.'
      ],
      nearbyAttractions: [
        // Attraction(
        //   name: 'Buffalo Naval & Military Park',
        //   description: 'Explore historic warships and learn about Buffalo\'s rich military history.',
        //   imageUrl: 'https://www.visitbuffaloniagara.com/content/uploads/2022/11/BuffaloNavalParkAerialPhoto-reduced.jpg',
        //   latitude: 42.890833,
        //   longitude: -78.873333,
        //   category: 'Historical Places and Museums',
        // ),
        // Attraction(
        //   name: 'The Buffalo History Museum',
        //   description: 'Discover Buffalo\'s fascinating story from its origins to the present day.',
        //   imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/5/5b/Lincoln%2C_the_Emancipator_at_The_Buffalo_History_Museum.jpg',
        //   latitude: 42.882222,
        //   longitude: -78.877778,
        //   category: 'Historical Places and Museums',
        // ),
      ],
    ),
    Attraction(
      name: 'The Burchfield Penney Art Center',
      description:
          'Explore American art, especially works by Charles E. Burchfield.',
      imageUrl:
          'https://www.visitbuffaloniagara.com/content/uploads/2019/11/84ee659d8411442a143218ff7f7b347e-1024x599.jpg',
      latitude: 42.9338,
      longitude: -78.8787,
      category: 'Art Galleries and Performances',
      address: '1300 Elmwood Ave, Buffalo, NY 14222, USA',
      openingHours: 'Open Tuesday - Sunday, 10:00 AM - 5:00 PM',
      contactInfo: '+1 716-878-6011',
      website: 'https://www.burchfieldpenney.org/',
      reviews: ['Beautiful collection!', 'A must-visit for art enthusiasts.'],
      nearbyAttractions: [],
    ),
    Attraction(
      name: 'Buffalo Zoo',
      description:
          'Encounter a diverse range of animals from around the world.',
      imageUrl:
          'https://buffalozoo.org/wp-content/uploads/2016/04/front-gate-sign-9519-scaled.jpg',
      latitude: 42.9473,
      longitude: -78.8486,
      category: 'Nature',
      address: '300 Parkside Ave, Buffalo, NY 14214, USA',
      openingHours: 'Open daily, 10:00 AM - 4:00 PM',
      contactInfo: '+1 716-837-3900',
      website: 'https://buffalozoo.org/',
      reviews: [
        'Great place for a family outing!',
        'Love the variety of animals.'
      ],
      nearbyAttractions: [],
    ),
    Attraction(
      name: 'Buffalo Botanical Gardens',
      description:
          'The Botanical Gardens are a living museum dedicated to the study and appreciation of plant life, housed in a historic tri-domed glass conservatory.',
      imageUrl:
          'https://uncoveringnewyork.com/wp-content/uploads/2022/02/Buffalo-Botanical-Gardens-7F0A3883.jpg',
      latitude: 42.8341,
      longitude: -78.8281,
      category: 'Nature',
      address: '2655 South Park Ave, Buffalo, NY 14218, USA',
      openingHours: 'Open daily, 10:00 AM - 4:00 PM',
      contactInfo: '+1 716-827-1584',
      website: 'https://www.buffalogardens.com/',
      reviews: ['A hidden gem!', 'Beautiful and serene atmosphere.'],
      nearbyAttractions: [],
    ),
    Attraction(
      name: 'Buffalo City Hall',
      description:
          'Buffalo\'s City Hall is one of the largest and tallest municipal buildings in the United States.',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/View_of_Buffalo_City_Hall_%28cropped%29.jpg/1200px-View_of_Buffalo_City_Hall_%28cropped%29.jpg',
      latitude: 42.8864,
      longitude: -78.8786,
      category: 'Historical Places and Museums',
      address: '65 Niagara Square, Buffalo, NY 14202, USA',
      openingHours: 'Open Monday - Friday, 8:00 AM - 4:00 PM',
      contactInfo: '+1 716-851-4200',
      website: 'https://www.buffalony.gov/212/City-Hall',
      reviews: ['Impressive architecture!', 'Informative guided tours.'],
      nearbyAttractions: [],
    ),
    Attraction(
      name: "Shea's Performing Arts Center",
      description:
          "Shea's Performing Arts Center is a historic theater featuring Broadway shows and concerts.",
      imageUrl:
          "https://www.visitbuffaloniagara.com/content/uploads/2018/04/sheas_3.jpg",
      latitude: 42.8869,
      longitude: -78.8732,
      category: 'Art Galleries and Performances',
      address: '646 Main St, Buffalo, NY 14202, USA',
      openingHours: 'Varies by event',
      contactInfo: '+1 716-847-1410',
      website: 'https://www.sheas.org/',
      reviews: [
        'Beautiful theater with amazing shows!',
        'A must-visit for theater lovers.'
      ],
      nearbyAttractions: [],
    ),
    Attraction(
      name: "Delaware Park",
      description:
          "Delaware Park is a historic park designed by Frederick Law Olmsted, featuring gardens, lakes, and sports facilities.",
      imageUrl:
          "https://www.visitbuffaloniagara.com/content/uploads/2018/05/Delaware-Park-lake-1024x576.jpg",
      latitude: 42.9293,
      longitude: -78.8627,
      category: 'Nature',
      address: '84 Parkside Ave, Buffalo, NY 14214, USA',
      openingHours: 'Open daily, 6:00 AM - 9:00 PM',
      contactInfo: '+1 716-838-1249',
      website: 'https://www.bfloparks.org/parks/delaware-park/',
      reviews: [
        'Great place for a walk or picnic.',
        'Beautiful scenery and well-maintained.'
      ],
      nearbyAttractions: [],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Map<String, List<Attraction>> groupedAttractions = {};
    attractions.forEach((attraction) {
      if (groupedAttractions.containsKey(attraction.category)) {
        groupedAttractions[attraction.category]!.add(attraction);
      } else {
        groupedAttractions[attraction.category] = [attraction];
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Buffalo Attractions'),
      ),
      body: ListView.builder(
        itemCount: groupedAttractions.length,
        itemBuilder: (context, index) {
          String category = groupedAttractions.keys.elementAt(index);
          List<Attraction> attractionsForCategory =
              groupedAttractions[category]!;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  category,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: attractionsForCategory.length,
                  itemBuilder: (context, index) {
                    final attraction = attractionsForCategory[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                AttractionDetailsPage(attraction: attraction),
                          ),
                        );
                      },
                      child: Card(
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: SizedBox(
                          width: 200,
                          child: Column(
                            children: <Widget>[
                              CachedNetworkImage(
                                imageUrl: attraction.imageUrl,
                                height: 140,
                                width: double.infinity,
                                fit: BoxFit.cover,
                                // placeholder: (context, url) =>
                                //     FadeInImage.memoryNetwork(
                                //   image: attraction.imageUrl,
                                //   fit: BoxFit.cover,
                                // ),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  attraction.name,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0, right: 8.0, bottom: 8.0),
                                child: Text(
                                  attraction.description,
                                  style: const TextStyle(fontSize: 14.0),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
