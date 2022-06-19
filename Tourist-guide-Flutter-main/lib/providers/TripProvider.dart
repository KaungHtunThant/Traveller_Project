
import 'package:flutter/material.dart';
import 'package:tourist_guide/models/trip.dart';

import '../app_data.dart.bak';

class TripProvider with ChangeNotifier {
  List<Trip> Categoryfilter = [];
  Trip trip;
  final List<Trip> TripList = [
    Trip(
        id: 'm1',
        categories: [
          'ygn',
        ],
        title: 'Shwedagone',
        imageUrl: 'https://i.imgur.com/HXjtGkV.jpg',
        description:'''The Shwedagon Pagoda situated on Singuttara Hill in the center of Yangon (Rangoon).The Shwedagon Pagoda, also known as the Great Dagon Pagoda and the Golden Pagoda. The Shwedagon is the most sacred Buddhist pagoda in Myanmar, as it is believed to contain relics of the four previous Buddhas of the present kalpa. These relics include the staff of Kakusandha, the water filter of Koṇāgamana, a piece of the robe of Kassapa, and eight strands of hair from the head of Gautama.According to tradition, the Shwedagon Pagoda was constructed more than 2,500 years ago, which would make it the oldest Buddhist stupa in the world. The story goes that two merchant brothers Tapussa and Bhallika met the Gautama Buddha during his lifetime and received eight strands of the Buddha's hairs. The brothers presented the eight strands of hair to King Okkalapa of Dagon who enshrined the strands along with some relics of the three preceding Buddhas of the Gautama Buddha in a stupa on the Singuttara Hill in present-day Myanmar.''',
        activities: [],
        program: [],
        duration: '9 AM to 6 PM',
        season: Season.Summer,
        tripType: TripType.Exploration,
        isInSummer: true,
        isInWinter: true,
        isForFamilies: true,
        location:'Shwedagon east gate west of the Royal Lake Yangon, 11201',
    ),
    Trip(
        id: 'm2',
        categories: [
          'ygn',
        ],
        title: 'Inya Lake',
        imageUrl: 'https://i.imgur.com/9Fvo2FV.jpg',
        description: '''Inya Lake is located 6 miles (10 km) north of downtown Yangon, Inya Lake is bounded by Parami Road on the north, Pyay Road on the west, Inya Road on the southwest, University Avenue on the south, and Kaba Aye Pagoda Road on the east.Inya Lake is the largest lake in Yangon, Burma (Myanmar), a popular recreational area for Yangonites, and a famous location for romance in popular culture. Inya Lake is an artificial lake created by the British as a water reservoir between 1882 and 1883 in order to provide a water supply to Yangon.[1] The lake was formed by joining small hills that surrounded creeks which formed during the monsoon season.[1] A series of pipes and cables distributes water from Inya Lake to Kandawgyi Lake near downtown Yangon. The area surrounding Inya Lake is one of the most exclusive neighborhoods in Yangon. Except for a public park on the southwestern bank by Yangon University, much of the shoreline is some of the most expensive private property in the country. Public access to the lake is available through Kaba Aye Pagoda Road, and most popularly, through Inya Road and Pyay Road, next to Yangon University. It takes about two hours to circle the lake on foot''',
        activities: [

        ],
        program: [

        ],
        duration: '9 AM to 6 PM',
        season: Season.Summer,
        tripType: TripType.Exploration,
        isInSummer: true,
        isInWinter: true,
        isForFamilies: true,
        location: 'R4PM+QV7, Bank of Inya Lake, Pyay Rd, Yangon',
    ),

    Trip(
        id: 'm3',
        categories: [
          'ygn',
        ],
        title: 'Myaynigone',
        imageUrl: 'https://i.imgur.com/tu20owL.jpg',
        description: '''The site is bordered on the north by Dagon Centre Shopping Mall, on the east by Gamone Pwint shopping centre, one the south by Padonemar park and one other unknown small park.Sanchaung Intersection square is like Yangon version of New York Time Square. There are a lot of advertising billboards including one LCD TV. Dagon centre shopping mall is one of the city’s busiest, located at a junction of Pyay Road and Bargayar Road. The Itwo4 DJ Lounge, Star Mart supermarket and MK Fashion shop dominate the ground floor. Modern branded shoes, bags and fabrics are on sale and also snack shops and café in the mall include. Some video production companies often come and shoot at Dagon Centre shopping mall. Myaynigone plaza is between Dagon Centre Shopping Mall and Gamone Pwint shopping centre. City Mart super market is a famous super market in Yangon. Video Production Companies also shoot at City Mart. Gamone Pwint shopping centre is just like Dagon Centre Shopping Mall. Padonemar Park is a small park. An unknown park is not a real park. but it has a fountain and a small pound''',
        activities: [
          
        ],
        program: [
         
        ],
        duration: '9 AM to 6 PM',
        season: Season.Summer,
        tripType: TripType.Exploration,
        isInSummer: true,
        isInWinter: true,
        isForFamilies: true,
        location: 'R43Q+J4V, ဗားကရာလမ်း, Yangon',
    ),
    Trip(
        id: 'm4',
        categories: [
          'ygn',
        ],
        title: 'Junction City',
        imageUrl: 'https://i.imgur.com/cfymVuf.jpg',
        description: '''Junction City is located at the junction of Bogyoke Aung San road and Shwedagon Pagoda road in the city’s central business district.Junction City, one of downtown Yangon’s high-end real estate projects, has been completed and is now officially opened. The total project area encompasses 260,000 square metres, and features two 23- story towers for office spaces and luxury hospitality ventures. Junction City Shopping Centre, a building which consists of five floors, offers over 240 fashion, beauty, technology, food and lifestyle outlets from internationally known brands such as Coach, Hugo Boss, Versace, DAKS, Etienne Aigner, Love Moschino, PANDORA and more.Junction City Shopping Center have the largest food court and Cineplex in Myanmar. The JCGV Junction City Starium Theatre boasts Myanmar’s biggest screen- aptly named, “Super Big Screen”/The design is modelled after South Korea’s Starium cinema which is currently the home to the world’s biggest movie screen, according to the Guinness World Records''',
        activities: [
          
        ],
        program: [
         
        ],
        duration: '9 AM to 6 PM',
        season: Season.Summer,
        tripType: TripType.Exploration,
        isInSummer: true,
        isInWinter: true,
        isForFamilies: true,
        location: 'Q5H3+JPP, Corner of, ဗိုလ်ချုပ်လမ်း, Yangon',
    ),
    Trip(
        id: 'm5',
        categories: [
          'ygn',
        ],
        title: 'YU (University of Yangon)',
        imageUrl: 'https://i.imgur.com/zNqKLEs.jpg',
        description: '''Yangon University is located in Yangon, along the southwestern bank of Inya Lake, the largest lake in the city. It is on the corner of Pyay Road and University Avenue Road in Kamayut Township, north of downtown Yangon.YU is the oldest university in Myanmar's modern education system and the best known university in Myanmar. The modern campus of Yangon University completed construction in 1920. There are two campuses, namely Main Campus and Hlaing Campus, the former being the most well-known. Judson Church, inside the main campus of the university, is a Baptist church, and like Judson College, named after Adoniram Judson, a 19th-century American missionary who compiled the first Burmese-English dictionary. The main campus also contains a convocation hall.Yangon University offers undergraduate and postgraduate degree programmes. The undergraduate programmes are subdivided into three categories: Arts (B.A.), Sciences (B.Sc.), and Law(LL.B). The choice of different fields of learning takes place in upper secondary school where students choose particular subjects directed towards their tertiary education. Postgraduate degrees are separated into three groups: Doctorates, Master's, and diplomas. Although YU no longer offered the undergraduate degrees owing to the uprising in 1996, it now was reopened for the undergraduate degrees with the name of (COE) what literally means Center of Excellence in 2014 and accepted only 50 selectively excellent students for each field of studies.''',
        activities: [
          
        ],
        program: [
         
        ],
        duration: '9 AM to 6 PM',
        season: Season.Summer,
        tripType: TripType.Exploration,
        isInSummer: true,
        isInWinter: true,
        isForFamilies: true,
        location: 'University Avenue Road, Yangon 11041',
    ),

    Trip(
        id: 'm6',
        categories: [
          'ygn',
        ],
        title: 'Judson Church',
        imageUrl: 'https://i.imgur.com/R7NmPox.jpg',
        description:'''Judson Church is located in 601, Pyay Rd., Ward (2), KMYT, Myanmar.Judson Church, inside the main campus of the University, is a Baptist church, and like Judson College, named after Adoniram Judson, a 19th-century American missionary who compiled the first Burmese-English dictionary. The main campus also contains a convocation hall.This beautiful church caught my attention while walking along Pyay Road toward Inya Lake and /or pass through to University Avenue Street.There have many times of services schedule in a week ,wedding reception and other happy hours activities will be occurred at the weekend.
''',
        activities: [],
        program: [
          
        ],
        duration: '9 AM to 6 PM',
        season: Season.Summer,
        tripType: TripType.Exploration,
        isInSummer: true,
        isInWinter: true,
        isForFamilies: true,
      location: 'R4JM+8M3, Yangon',

    ),
    
    Trip(
        id: 'm7',
        categories: [
          'kachin',
        ],
        title: 'Myit Kyi Nar',
        imageUrl: 'https://image.jimcdn.com/app/cms/image/transf/none/path/sa5da3ad6a208eec6/backgroundarea/i056862cfc4b2651d/version/1600946425/image.jpg',
        description: '',
        activities: [

        ],
        program: [

        ],
        duration: '9 AM to 6 PM',
        season: Season.Summer,
        tripType: TripType.Exploration,
        isInSummer: true,
        isInWinter: true,
        isForFamilies: true,
      location: '',
    ),
  ];

  Future<void> filterTrip(String id) async {
    if (Categoryfilter.isNotEmpty) {
      Categoryfilter.clear();
    }

    try {
      Categoryfilter = TripList.where((element) {
        return element.categories.contains(id);
      }).toList();
    } catch (e) {
      print(e);
    }
  }

  Trip Tripdidtalse(String id) {
    if (trip != null) {
      trip = null;
    }
    try {
      for (var i = 0; i < TripList.length; i++) {
        if (TripList[i].id.contains(id)) {
          trip = TripList[i];
        }
      }

      return trip;
    } catch (e) {
      print(e);
    }
  }

  void Tripdelete(String id) {
    TripList.removeWhere((element) => element.id == id);
    notifyListeners();

    print("done");
  }

  Future<void> filters(bool summer, bool wernter, bool famliy) {
    if (summer == true && wernter == false && famliy == false) {
      TripList.removeWhere((element) => element.season==Season.Winter);
      TripList.removeWhere((element) => element.isForFamilies);
    } else if (summer == false && wernter == true && famliy == false) {
      TripList.removeWhere((element) => element.isInSummer );
      TripList.removeWhere((element) => element.isForFamilies == true);
    } else if (summer == false && wernter == false && famliy ) {
      TripList.removeWhere((element) => element.isInSummer );
      TripList.removeWhere((element) => element.isInWinter);
    }
  }
}