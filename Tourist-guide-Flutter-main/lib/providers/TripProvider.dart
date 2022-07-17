
import 'package:flutter/material.dart';
import 'package:tourist_guide/models/trip.dart';

import '../app_data.dart.bak';

class TripProvider with ChangeNotifier {
  List<Trip> Categoryfilter = [];
  Trip trip;
  final List<Trip> TripList = [
//     Trip(
//         id: 'm1',
//         categories: [
//           'ygn',
//         ],
//         title: 'Shwedagone',
//         imageUrl: 'https://i.imgur.com/HXjtGkV.jpg',
//         description:'''The Shwedagon Pagoda situated on Singuttara Hill in the center of Yangon (Rangoon).The Shwedagon Pagoda, also known as the Great Dagon Pagoda and the Golden Pagoda. The Shwedagon is the most sacred Buddhist pagoda in Myanmar, as it is believed to contain relics of the four previous Buddhas of the present kalpa. These relics include the staff of Kakusandha, the water filter of Koṇāgamana, a piece of the robe of Kassapa, and eight strands of hair from the head of Gautama.According to tradition, the Shwedagon Pagoda was constructed more than 2,500 years ago, which would make it the oldest Buddhist stupa in the world. The story goes that two merchant brothers Tapussa and Bhallika met the Gautama Buddha during his lifetime and received eight strands of the Buddha's hairs. The brothers presented the eight strands of hair to King Okkalapa of Dagon who enshrined the strands along with some relics of the three preceding Buddhas of the Gautama Buddha in a stupa on the Singuttara Hill in present-day Myanmar.''',
//         activities: [],
//         program: [],
//         duration: '9 AM to 6 PM',
//         season: Season.Summer,
//         tripType: TripType.Exploration,
//         isInSummer: true,
//         isInWinter: true,
//         isForFamilies: true,
//         location:'Shwedagon east gate west of the Royal Lake Yangon, 11201',
//     ),
//     Trip(
//         id: 'm2',
//         categories: [
//           'ygn',
//         ],
//         title: 'Inya Lake',
//         imageUrl: 'https://i.imgur.com/9Fvo2FV.jpg',
//         description: '''Inya Lake is located 6 miles (10 km) north of downtown Yangon, Inya Lake is bounded by Parami Road on the north, Pyay Road on the west, Inya Road on the southwest, University Avenue on the south, and Kaba Aye Pagoda Road on the east.Inya Lake is the largest lake in Yangon, Burma (Myanmar), a popular recreational area for Yangonites, and a famous location for romance in popular culture. Inya Lake is an artificial lake created by the British as a water reservoir between 1882 and 1883 in order to provide a water supply to Yangon.[1] The lake was formed by joining small hills that surrounded creeks which formed during the monsoon season.[1] A series of pipes and cables distributes water from Inya Lake to Kandawgyi Lake near downtown Yangon. The area surrounding Inya Lake is one of the most exclusive neighborhoods in Yangon. Except for a public park on the southwestern bank by Yangon University, much of the shoreline is some of the most expensive private property in the country. Public access to the lake is available through Kaba Aye Pagoda Road, and most popularly, through Inya Road and Pyay Road, next to Yangon University. It takes about two hours to circle the lake on foot''',
//         activities: [
//
//         ],
//         program: [
//
//         ],
//         duration: '9 AM to 6 PM',
//         season: Season.Summer,
//         tripType: TripType.Exploration,
//         isInSummer: true,
//         isInWinter: true,
//         isForFamilies: true,
//         location: 'R4PM+QV7, Bank of Inya Lake, Pyay Rd, Yangon',
//     ),
//
//     Trip(
//         id: 'm3',
//         categories: [
//           'ygn',
//         ],
//         title: 'Myaynigone',
//         imageUrl: 'https://i.imgur.com/tu20owL.jpg',
//         description: '''The site is bordered on the north by Dagon Centre Shopping Mall, on the east by Gamone Pwint shopping centre, one the south by Padonemar park and one other unknown small park.Sanchaung Intersection square is like Yangon version of New York Time Square. There are a lot of advertising billboards including one LCD TV. Dagon centre shopping mall is one of the city’s busiest, located at a junction of Pyay Road and Bargayar Road. The Itwo4 DJ Lounge, Star Mart supermarket and MK Fashion shop dominate the ground floor. Modern branded shoes, bags and fabrics are on sale and also snack shops and café in the mall include. Some video production companies often come and shoot at Dagon Centre shopping mall. Myaynigone plaza is between Dagon Centre Shopping Mall and Gamone Pwint shopping centre. City Mart super market is a famous super market in Yangon. Video Production Companies also shoot at City Mart. Gamone Pwint shopping centre is just like Dagon Centre Shopping Mall. Padonemar Park is a small park. An unknown park is not a real park. but it has a fountain and a small pound''',
//         activities: [
//
//         ],
//         program: [
//
//         ],
//         duration: '9 AM to 6 PM',
//         season: Season.Summer,
//         tripType: TripType.Exploration,
//         isInSummer: true,
//         isInWinter: true,
//         isForFamilies: true,
//         location: 'R43Q+J4V, ဗားကရာလမ်း, Yangon',
//     ),
//     Trip(
//         id: 'm4',
//         categories: [
//           'ygn',
//         ],
//         title: 'Junction City',
//         imageUrl: 'https://i.imgur.com/cfymVuf.jpg',
//         description: '''Junction City is located at the junction of Bogyoke Aung San road and Shwedagon Pagoda road in the city’s central business district.Junction City, one of downtown Yangon’s high-end real estate projects, has been completed and is now officially opened. The total project area encompasses 260,000 square metres, and features two 23- story towers for office spaces and luxury hospitality ventures. Junction City Shopping Centre, a building which consists of five floors, offers over 240 fashion, beauty, technology, food and lifestyle outlets from internationally known brands such as Coach, Hugo Boss, Versace, DAKS, Etienne Aigner, Love Moschino, PANDORA and more.Junction City Shopping Center have the largest food court and Cineplex in Myanmar. The JCGV Junction City Starium Theatre boasts Myanmar’s biggest screen- aptly named, “Super Big Screen”/The design is modelled after South Korea’s Starium cinema which is currently the home to the world’s biggest movie screen, according to the Guinness World Records''',
//         activities: [],
//         program: [
//
//         ],
//         duration: '9 AM to 6 PM',
//         season: Season.Summer,
//         tripType: TripType.Exploration,
//         isInSummer: true,
//         isInWinter: true,
//         isForFamilies: true,
//         location: 'Q5H3+JPP, Corner of, ဗိုလ်ချုပ်လမ်း, Yangon',
//     ),
//     Trip(
//         id: 'm5',
//         categories: [
//           'ygn',
//         ],
//         title: 'YU (University of Yangon)',
//         imageUrl: 'https://i.imgur.com/zNqKLEs.jpg',
//         description: '''Yangon University is located in Yangon, along the southwestern bank of Inya Lake, the largest lake in the city. It is on the corner of Pyay Road and University Avenue Road in Kamayut Township, north of downtown Yangon.YU is the oldest university in Myanmar's modern education system and the best known university in Myanmar. The modern campus of Yangon University completed construction in 1920. There are two campuses, namely Main Campus and Hlaing Campus, the former being the most well-known. Judson Church, inside the main campus of the university, is a Baptist church, and like Judson College, named after Adoniram Judson, a 19th-century American missionary who compiled the first Burmese-English dictionary. The main campus also contains a convocation hall.Yangon University offers undergraduate and postgraduate degree programmes. The undergraduate programmes are subdivided into three categories: Arts (B.A.), Sciences (B.Sc.), and Law(LL.B). The choice of different fields of learning takes place in upper secondary school where students choose particular subjects directed towards their tertiary education. Postgraduate degrees are separated into three groups: Doctorates, Master's, and diplomas. Although YU no longer offered the undergraduate degrees owing to the uprising in 1996, it now was reopened for the undergraduate degrees with the name of (COE) what literally means Center of Excellence in 2014 and accepted only 50 selectively excellent students for each field of studies.''',
//         activities: [
//
//         ],
//         program: [
//
//         ],
//         duration: '9 AM to 6 PM',
//         season: Season.Summer,
//         tripType: TripType.Exploration,
//         isInSummer: true,
//         isInWinter: true,
//         isForFamilies: true,
//         location: 'University Avenue Road, Yangon 11041',
//     ),
//
//     Trip(
//         id: 'm6',
//         categories: [
//           'ygn',
//         ],
//         title: 'Judson Church',
//         imageUrl: 'https://i.imgur.com/R7NmPox.jpg',
//         description:'''Judson Church is located in 601, Pyay Rd., Ward (2), KMYT, Myanmar.Judson Church, inside the main campus of the University, is a Baptist church, and like Judson College, named after Adoniram Judson, a 19th-century American missionary who compiled the first Burmese-English dictionary. The main campus also contains a convocation hall.This beautiful church caught my attention while walking along Pyay Road toward Inya Lake and /or pass through to University Avenue Street.There have many times of services schedule in a week ,wedding reception and other happy hours activities will be occurred at the weekend.
// ''',
//         activities: [],
//         program: [
//
//         ],
//         duration: '9 AM to 6 PM',
//         season: Season.Summer,
//         tripType: TripType.Exploration,
//         isInSummer: true,
//         isInWinter: true,
//         isForFamilies: true,
//       location: 'R4JM+8M3, Yangon',
//
//     ),
//
//     Trip(
//         id: 'm7',
//         categories: [
//           'ygn',
//         ],
//         title: 'Hledan Center',
//         imageUrl: 'https://i.imgur.com/R7NmPox.jpg',
//         description:'''Hledan Center is a huge business center in Myanmar especially City mart, restaurants, Busiest
// Banking institution and ATM, Gym and seasonal promotion and other outlet famous branded
// fashion shop are opened inside in the center and good space car parking is most reasonable to
// come here. Most distinctive branding items can be taken from this Hledan Center. So it is a
// popular and well-known in Myanmar. Like most customers attractive branded they continued to
// keeping of their services and quality assurance. Security system is good. Worth to visit.
// The shopping centre is convenient if you happen to be in the locality. There is a good
// supermarket, and a wide variety of food stalls if your palate is educated enough for
// Burmese/Indian foods. We sampled Burmese, and it was most enjoyable. Things are much
// cheaper than central Yangon.
// ''',
//         activities: [],
//         program: [
//
//         ],
//         duration: '9 AM to 6 PM',
//         season: Season.Summer,
//         tripType: TripType.Exploration,
//         isInSummer: true,
//         isInWinter: true,
//         isForFamilies: true,
//       location: 'No.3C/3D, Corner of Pyay &, Hledan Rd, 11041, Myanmar (Burma)',
//
//     ),
//
//     Trip(
//         id: 'm8',
//         categories: [
//           'mdy',
//         ],
//         title: 'Mandalay',
//         imageUrl: 'https://lh3.google.com/u/0/d/1lO4JQOSHmSjrCiCLAxDS0tDdmFYCM1jK=w155-h757-iv1',
//         description:'''Mandalay was founded in 1857 by King Mindon, replacing Amarapura as the new royal capital
// of the Konbaung dynasty. It was Burma's final royal capital before the kingdom's annexation by
// the British Empire in 1885. Under British rule, Mandalay remained commercially and culturally
// important despite the rise of Yangon, the new capital of British Burma. The city suffered
// extensive destruction during the Japanese conquest of Burma in the Second World War. In 1948,
// Mandalay became part of the newly independent Union of Burma.
// Today, Mandalay is the economic centre of Upper Myanmar and considered the centre of
// Burmese culture. A continuing influx of illegal Chinese immigrants, mostly from Yunnan, since
// the late 20th century, has reshaped the city's ethnic makeup and increased commerce with
// China.
// [4][5][dead link] Despite Naypyidaw's recent rise, Mandalay remains Upper Burma's main
// commercial, educational and health center.
// Mandalay is famous for being the old royal capital of Myanmar. In the past, Burmese kings
// would have lived in the city and you can still see some of their palaces in evidence, and the city
// still have a royal feel to it which is very different from other spots like Yangon.
// ''',
//         activities: [],
//         program: [
//
//         ],
//         duration: '9 AM to 6 PM',
//         season: Season.Summer,
//         tripType: TripType.Exploration,
//         isInSummer: true,
//         isInWinter: true,
//         isForFamilies: true,
//       location: 'X3VW+4FR, Mandalay, Myanmar (Burma)',
//
//     ),
//
//         Trip(
//         id: 'm9',
//         categories: [
//           'mdy',
//         ],
//         title: 'Mandalay Palace',
//         imageUrl: 'https://lh3.google.com/u/0/d/1uRKFRNoAMkf2memlAUfnfxwDUGNkUQAI=w155-h757-iv1',
//         description:'''The palace was constructed between 1857 and 1859 as part of King Mindon's founding of the
// new royal capital city of Mandalay. The plan of Mandalay Palace largely follows the traditional
// Burmese palace design – it is inside a walled fort surrounded by a moat. The palace itself is at
// the centre of the citadel and faces east. All buildings of the palace are of one storey in height.
// The number of spires above a building indicated the importance of the area below.
// [1]
// Mandalay Palace was the primary royal residence of King Mindon and King Thibaw, the last two
// kings of the country. The complex ceased to be a royal residence and seat of government on 28
// November 1885 when, during the Third Anglo-Burmese War, troops of the Burma Field Force
// entered the palace and captured the royal family. The British turned the palace compound into
// Fort Dufferin, named after the then viceroy of India. Throughout the British colonial era, the
// palace was seen by the Burmese as the primary symbol of sovereignty and identity. Much of the
// palace compound was destroyed during World War II by allied bombing; only the royal mint and
// the watch tower survived. A replica of the palace was rebuilt in the 1990s with some modern
// materials.
// Today, Mandalay Palace is a primary symbol of Mandalay and a major tourist destination.
// ''',
//         activities: [],
//         program: [
//
//         ],
//         duration: '9 AM to 6 PM',
//         season: Season.Summer,
//         tripType: TripType.Exploration,
//         isInSummer: true,
//         isInWinter: true,
//         isForFamilies: true,
//       location: 'X3VW+4FR, Mandalay, Myanmar (Burma)',
//
//     ),
//
//  Trip(
//         id: 'm10',
//         categories: [
//           'mdy',
//         ],
//         title: 'Pyin Oo Lwin',
//         imageUrl: 'https://lh3.google.com/u/0/d/18-GEo2jgo6fnadEh-k2NzyRfore1kNuc=w155-h757-iv1',
//         description:'''Pyin Oo Lwin or Pyin U Lwin is a quaint hill station located about 67 kilometres east of
// Mandalay. It is a small town nestled in the Shan Hills, showing a strong influence of the colonial
// culture. It was the summer capital during British rule and has preserved its history over the years.
// The wooden structures and horse-driven carriages in Pyin Oo Lwin will surely take you back to
// old England. It is an ideal place to escape from the strong heat of Mandalay.
// Pyin Oo Lwin will take you back to 19th century Britain with its colonial red-coloured buildings
// and horse-driven carriages. However, the buildings are not like the colonial buildings of Yangon
// and Mandalay. They are cute brick structures that will surely win your heart. Pyin Oo Lwin is
// home to the historic National Kandawgyi Botanical Gardens, the country’s largest botanical site
// established in 1915. This garden contains 514 species of indigenous trees and 74 foreign species,
// as well as 300 types of orchids and 25 different roses. The gardens have been modelled after the
// famous Kew Gardens of London. The best way to enjoy Pyin Oo Lwin is to simply take a walk
// and immerse yourself in the hilly atmosphere.
// ''',
//         activities: [],
//         program: [
//
//         ],
//         duration: '9 AM to 6 PM',
//         season: Season.Summer,
//         tripType: TripType.Exploration,
//         isInSummer: true,
//         isInWinter: true,
//         isForFamilies: true,
//       location: 'XFV9+JQ8, Pyin Oo Lwin, Myanmar (Burma)',
//
//     ),
//
//     Trip(
//         id: 'm11',
//         categories: [
//           'shan',
//         ],
//         title: 'Shan State',
//         imageUrl: 'https://lh3.google.com/u/0/d/1vMCqC0zbxkdqgAgwT29GGoOEwWN3lNiy=w710-h741-iv1',
//         description: '''The state gets its name from Burmese name for the Tai peoples: "Shan people". The Tai (Shan)
// constitute the majority among several ethnic groups that inhabit the area. Shanland is largely
// rural, with only three cities of significant size: Lashio, Kengtung, and the
// capital, Taunggyi. Taunggyi is 150.7 km northeast of the nation's capital Naypyitaw.
// The Shan state, with many ethnic groups, is home to several armed ethnic armies. While
// the military government has signed ceasefire agreements with most groups, vast areas of the
// state, especially those east of the Salween River, remain outside the central government's control,
// and in recent years have come under heavy ethnic-Han Chinese economic and political influence.
// Other areas are under the control of military groups such as the Shan State Army.
// According to data from the United Nations Office on Drugs and Crime (UNODC), Shan State is
// the region that produces the most opium in Myanmar, accounting for 82% (331 metric tons) of
// the country's total output (405 metric tons) in 2020. ''',
//         activities: [
//
//         ],
//         program: [
//
//         ],
//         duration: '9 AM to 6 PM',
//         season: Season.Summer,
//         tripType: TripType.Exploration,
//         isInSummer: true,
//         isInWinter: true,
//         isForFamilies: true,
//       location: 'Shan State also known by the endonyms Shanland, Muang Tai, and Tailong,[a] is
// a state of Myanmar. Shan State borders China (Yunnan) to the north, Laos (Louang
// Namtha and Bokeo Provinces) to the east, and Thailand (Chiang Rai, Chiang Mai and Mae Hong
// Son Provinces) to the south, and five administrative divisions of Burma (Myanmar) in the west.
// ',
//     ),
//
//     Trip(
//         id: 'm12',
//         categories: [
//           'shan',
//         ],
//         title: 'Inya Lake',
//         imageUrl: 'https://lh3.google.com/u/0/d/1Ja1ASfpBPB8iQ8KBT97PVWPy5JOVkG4t=w155-h757-iv1',
//         description: '''Inle Lake is famous for its floating villages and gardens and the unique way of life of the
// local Intha people, with their living communities based entirely on the water. For practical
// information including restaurants, ATMs, accommodation and transport, visit our Nyaung
// Shwe page.
// The lake, which measures 22 km long by 10 km wide, and sits in a valley between two mountain
// ranges, feels like a different world to the rest of Myanmar: in villages and towns across the lake,
// wooden houses are built on stilts and fishermen steer their one-man boats with a characteristic
// rowing style, wrapping one leg around their oar.
// ''',
//         activities: [
//
//         ],
//         program: [
//
//         ],
//         duration: '9 AM to 6 PM',
//         season: Season.Summer,
//         tripType: TripType.Exploration,
//         isInSummer: true,
//         isInWinter: true,
//         isForFamilies: true,
//       location: 'Myanmar (Burma)',
//     ),
//
// Trip(
//         id: 'm13',
//         categories: [
//           'shan',
//         ],
//         title: 'Kalaw',
//         imageUrl: 'https://lh3.google.com/u/0/d/1xvRw6rUQLYQbXXuyt6wHIG_si00YmK51=w710-h741-iv1',
//         description: '''Kalaw is an old hill station with a laid back atmosphere, refreshing climate and scenic views.
// Many of Kalaw’s original colonial-era buildings remain, and it is also known as
// Myanmar’s trekking mecca.
// Whether you are after a brief stroll to to soak up the atmosphere and take in some hill views and
// the colourful flower-lined streets, or a longer multi-day trek to Inle Lake or Pindaya to witness
// the lives of the local hill tribes, Kalaw offers a wide variety of options for exploration – and a
// freedom of unfettered movement that is not always possible in other remote parts of Myanmar.
// A good example of Myanmar’s new drive for eco tourism is the Green Hill Valley elephant
// camp. A 40-minute taxi ride from Kalaw, the camp was founded in 2011 to protect the local
// environment and care for ageing and poorly elephants, whilst allowing visitors to see them in
// their natural habitat. Short rides on the elephants are permitted, but all activities are conducted
// primarily with the animals’ welfare in mind. Various trekking options are also available in the
// area.
// ''',
//         activities: [
//
//         ],
//         program: [
//
//         ],
//         duration: '9 AM to 6 PM',
//         season: Season.Summer,
//         tripType: TripType.Exploration,
//         isInSummer: true,
//         isInWinter: true,
//         isForFamilies: true,
//       location: ' Kalaw is located in high up in western Shan State.',
//     ),

    Trip(
        id: 'm1',
        categories: [
          'bagan',
        ],
        title: 'Bagan',
        imageUrl: 'https://iili.io/weDYmB.jpg',
        description: '''Bagan (formerly Pagan) is an ancient city and a UNESCO World Heritage Site in the Mandalay Region of Myanmar. From the 9th to 13th centuries, the city was the capital of the Bagan Kingdom, the first kingdom that unified the regions that would later constitute Myanmar. During the kingdom's height between the 11th and 13th centuries, more than 10,000 Buddhist temples, pagodas and monasteries were constructed in the Bagan plains alone, of which the remains of over 2200 temples and pagodas survive. The Bagan Archaeological Zone is a main attraction for the country's nascent tourism industry.
''',
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
      location: 'Mandalay Region, Myanmar.',
    ),

    Trip(
        id: 'm2',
        categories: [
          'bagan',
        ],
        title: 'The Ananda Temple',
        imageUrl: 'https://iili.io/wetOKb.jpg',
        description: '''The Ananda Temple, located in Bagan, Myanmar is a Buddhist temple built in 1105 AD during the reign (1084–1112/13) of King Kyansittha of the Pagan Dynasty. The temple layout is in a cruciform with several terraces leading to a small pagoda at the top covered by an umbrella known as hti, which is the name of the umbrella or top ornament found in almost all pagodas in Myanmar. The Buddhist temple houses four standing Buddhas, each one facing the cardinal direction of East, North, West and South. The temple is said to be an architectural wonder in a fusion of Mon and adopted Indian style of architecture. The impressive temple has also been titled the "Westminster Abbey of Burma". The temple has close similarity to the Pathothamya temple of the 10th–11th century, and is also known as “veritable museum of stones”. The temple was damaged in the earthquake of 1975. However, it has been fully restored and is well maintained by frequent painting and whitewashing of the walls. On the occasion of 900th anniversary of its construction celebrated in 1990 the temple spires were gilded. It is a highly revered temple of Bagan. The temple is also home to an annual week-long festival that is held during the month of Pyahto (December to January). During the festival, 1000 monks perform continuous chanting of scriptures for 72 hours. Thousands of villagers from miles around set up encampments around the temple. On the morning of the full moon day, they offer gift bowls to the monks in attendance.''',
        activities: [

        ],
        program: [

        ],
        duration: '8 AM to 5 PM',
        season: Season.Summer,
        tripType: TripType.Exploration,
        isInSummer: true,
        isInWinter: true,
        isForFamilies: true,
      location: '5VC9+C3 Old Bagan, Myanmar (Burma)',
    ),

    Trip(
        id: 'm3',
        categories: [
          'bagan',
        ],
        title: 'The Shwezigon Pagoda',
        imageUrl: 'https://iili.io/weDnz7.jpg',
        description: '''The Shwezigon Pagoda or Shwezigon Paya is a Buddhist stupa located in Nyaung-U, Myanmar. A prototype of Burmese stupas, it consists of a circular gold leaf-gilded stupa surrounded by smaller temples and shrines. Construction of the Shwezigon Pagoda began during the reign of King Anawrahta (r. 1044–1077), the founder of the Pagan Empire, in 1059–1060 and was completed in 1102, during the reign of his son King Kyansittha. Over the centuries the pagoda had been damaged by many earthquakes and other natural calamities, and has been refurbished several times. In recent renovations it has been covered by more than 30,000 copper plates. However, the lowest level terraces have remained as they were. This pagoda, a Buddhist religious place, is believed to enshrine a bone and tooth of Gautama Buddha. The pagoda is in the form of a cone formed by five square terraces with a central solid core. There are footprints below the four standing Buddha statues here. Jataka legends are depicted on glazed terra-cotta tiles set into three rectangular terraces. At the entrance of the pagoda there are large statues of guardians of the temple. There are also four bronze standing statues of Buddha which are stated to be of the current age Buddha. At the outer limits of the pagoda there are 37 nats deified along with an intricately carved wooden sculpture of Thagyamin a Burmese version of Hindu god Indra. Within the compound of the Shwezigon Pagoda there is a stone pillar containing Mon language inscriptions dedicated by Kyansittha. The pagoda, a pilgrimage centre, is located close to Bagan or Pagan (known as "a land of thousand pagodas") in the plains in the Shwe Zigon settlement at Nyaung-U.''',
        activities: [

        ],
        program: [

        ],
        duration: '8 AM to 9 PM',
        season: Season.Summer,
        tripType: TripType.Exploration,
        isInSummer: true,
        isInWinter: true,
        isForFamilies: true,
      location: '5VWV+4H Nyaung-U, Myanmar (Burma)',
    ),

Trip(
        id: 'm4',
        categories: [
          'bagan',
        ],
        title: 'Dhammayangyi Temple',
        imageUrl: 'https://iili.io/weDIqu.jpg',
        description: '''Dhammayangyi Temple is a Buddhist temple located in Bagan, Myanmar. Largest of all the temples in Bagan, the Dhammayan as it is popularly known was built during the reign of King Narathu[1]: 167  (1167-1170). Narathu, who came to the throne by assassinating his father Alaungsithu and his elder brother, presumably built this largest temple to atone for his sins. The Dhammayangyi is the widest temple in Bagan, and is built in a plan similar to that of Ananda Temple. Burmese chronicles state that while the construction of the temple was in the process, the king was assassinated by some Indians and thus the temple was not completed. Sinhalese sources however indicate that the king was killed by Sinhalese invaders. The temple's interior is bricked up for unknown reasons, thus only the four porches and the outer corridors are accessible.''',
        activities: [

        ],
        program: [

        ],
        duration: '8 AM to 5 PM',
        season: Season.Summer,
        tripType: TripType.Exploration,
        isInSummer: true,
        isInWinter: true,
        isForFamilies: true,
      location: '5V6F+R72, Old Bagan, Myanmar (Burma)',
    ),

    Trip(
        id: 'm5',
        categories: [
          'bagan',
        ],
        title: 'Thatbyinnyu Temple',
        imageUrl: 'https://iili.io/weDugj.jpg',
        description: '''The Thatbyinnyu Temple is a Theravada Buddhist temple in Bagan (Pagan), Myanmar. The temple is recognized as a monument in the Bagan Archeological Area, a UNESCO World Heritage Site. Completed in 1150–51 during the reign of King Sithu I, the temple reflected the Bagan period's "innovative architectural and artistic creativity" and "an expression of the self-confident Burmese spirit of nationhood."[note 1] At the pinnacle height of 66 m (217 ft), the five-story Thatbyinnyu is known as the tallest temple in Bagan, alongside the tallest stupa in Bagan, the 100 m (328 ft) Shwesandaw. The temple was badly damaged by the earthquakes of 1975 and 2016. It is undergoing restoration work with Chinese technical and financial assistance; the restoration work is expected to last until about 2028.''',
        activities: [

        ],
        program: [

        ],
        duration: '8 AM to 9 PM',
        season: Season.Summer,
        tripType: TripType.Exploration,
        isInSummer: true,
        isInWinter: true,
        isForFamilies: true,
      location: '5V97+G5F, Old Bagan, Myanmar (Burma)',
    ),

    Trip(
        id: 'm6',
        categories: [
          'bagan',
        ],
        title: 'The Shwesandaw Pagoda',
        imageUrl: 'https://iili.io/wet8HQ.jpg',
        description: '''The Shwesandaw Pagoda is a Buddhist pagoda located in Bagan, Myanmar. It is the tallest pagoda in Bagan, and contains a series of five terraces, topped with a cylindrical stupa, which has a bejewelled umbrella (hti). The pagoda was built by King Anawrahta in 1057, and once contained terra cotta tiles depicting scenes from the Jataka. Enshrined within the pagoda are sacred hairs of Gautama Buddha, which were obtained from Thaton.''',
        activities: [

        ],
        program: [

        ],
        duration: '8 AM to 5 PM',
        season: Season.Summer,
        tripType: TripType.Exploration,
        isInSummer: true,
        isInWinter: true,
        isForFamilies: true,
      location: '5V78+GC8, Old Bagan, Myanmar (Burma)',
    ),

    Trip(
        id: 'm7',
        categories: [
          'bagan',
        ],
        title: 'Sulamani Temple',
        imageUrl: 'https://iili.io/weDEqg.jpg',
        description: '''The Sulamani Temple is a Buddhist temple located in the village of Minnanthu (southwest of Bagan) in Burma. The temple is one of the most-frequently visited in Bagan. It was built in 1183 by King Narapatisithu,[1]: 178  and is similar to the Thatbyinnyu Temple in design. The Sulamani Temple also shows influence from the Dhammayangyi Temple, and was the model for the Htilominlo Temple. Sulamani Temple was restored after the 1975 earthquake, and utilises brick and stone, with frescoes in the interior of the temple. It was rebuilt in 1994.''',
        activities: [

        ],
        program: [

        ],
        duration: '8 AM to 8 PM',
        season: Season.Summer,
        tripType: TripType.Exploration,
        isInSummer: true,
        isInWinter: true,
        isForFamilies: true,
      location: '5V7J+XHF, Nyaung-U, Myanmar (Burma)',
    ),

    Trip(
        id: 'm8',
        categories: [
          'bagan',
        ],
        title: 'Htilominlo Temple',
        imageUrl: 'https://iili.io/wetSRV.jpg',
        description: '''Htilominlo Temple is a Buddhist temple located in Bagan, in Burma/Myanmar, built during the reign of King Htilominlo (also known as Nandaungmya). The temple is three stories tall, with a height of 46 metres (151 ft), and built with red brick. It is also known for its elaborate plaster moldings. On the first floor of the temple, there are four Buddhas that face each direction. The temple was damaged in the 1975 earthquake and subsequently repaired.''',
        activities: [

        ],
        program: [

        ],
        duration: '8 AM to 9 PM',
        season: Season.Summer,
        tripType: TripType.Exploration,
        isInSummer: true,
        isInWinter: true,
        isForFamilies: true,
      location: '5VHH+FQW, Nyaung-U, Myanmar (Burma)',
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