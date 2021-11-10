import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'dart:convert';



void main() {

    runApp(MaterialApp(
      home: MyApp(americandistance : '?', cameldistance : '?',
        goodyeardistance : '?', hohokamdistance : '?', peoriadistance : '?',
        saltdistance : '?', scottsdaledistance : '?', sloandistance : '?',
        surprisedistance : '?', tempedistance : '?',),
      title: 'Field Finder: Cactus League',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      //const MyApp(
       // items: ['American Family Fields of Phoenix','Camelback Ranch', 'Goodyear '
        //    'Ballpark', 'Hohokam Stadium', 'Peoria Sports Complex', 'Salt River '
          //  'Fields at Talking Stick', 'Scottsdale Stadium', 'Sloan Stadium',
           // 'Surprise Stadium', 'Tempe Diablo Stadium'],
      ),
    );
  }

class MyApp extends StatelessWidget {
  // final List items;

   var americandistance;
   var cameldistance;
   var goodyeardistance;
   var hohokamdistance;
   var peoriadistance;
   var saltdistance;
   var scottsdaledistance;
   var sloandistance;
   var surprisedistance;
   var tempedistance;

//  const MyApp({Key? key, required this.items}) : super(key: key);
  MyApp({Key? key, this.americandistance, this.cameldistance, this.goodyeardistance,
  this.hohokamdistance, this.peoriadistance, this.saltdistance, this.scottsdaledistance,
  this.sloandistance, this.surprisedistance, this.tempedistance} ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Field Finder: Cactus League';
    return

    Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body:
      ListView(
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.question_answer_outlined),
              title: const Text('How to use',
                  style: TextStyle(fontStyle: FontStyle.italic)),
              tileColor: Colors.lightGreen[100],
              onTap: () {
        // popup info
                // Navigator.of(context).restorablePush(_learnMore);
              },
            ),

            ListTile(
              leading: const Icon(Icons.map),
                title: const Text('Calculate distance to stadiums'),
                tileColor: Colors.lightGreen[200],
                onTap: () {
                // popup form
                  Navigator.of(context).restorablePush(_popupForm);
                    }
                    ),

            ListTile(
              leading: const Icon(Icons.sports_baseball_outlined),
              title: const Text('American Family Field'),
              subtitle: Text(americandistance + ' miles away'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AmericanRoute()),
                );
                },
            ),
            ListTile(
              leading: const Icon(Icons.sports_baseball_outlined),
              title: const Text('Camelback Ranch'),
              subtitle: Text(cameldistance +' miles away'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CamelRoute()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.sports_baseball_outlined),
              title: const Text('Goodyear Ballpark'),
              subtitle: Text(goodyeardistance +' miles away'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GoodyearRoute()),
                );
              },
            ),
          ListTile(
            leading: const Icon(Icons.sports_baseball_outlined),
            title: const Text('Hohokam Stadium'),
            subtitle: Text(hohokamdistance +' miles away'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HohokamRoute()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.sports_baseball_outlined),
            title: const Text('Peoria Sports Complex'),
            subtitle: Text(peoriadistance +' miles away'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PeoriaRoute()),
              );
            },
          ),
            ListTile(
              leading: const Icon(Icons.sports_baseball_outlined),
              title: const Text('Salt River Fields at Talking Stick'),
               subtitle: Text('? miles away'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SaltRoute()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.sports_baseball_outlined),
              title: const Text('Scottsdale Stadium'),
              subtitle: Text(scottsdaledistance +' miles away'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ScottsdaleRoute()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.sports_baseball_outlined),
              title: const Text('Sloan Park'),
              subtitle: Text(sloandistance +' miles away'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SloanRoute()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.sports_baseball_outlined),
              title: const Text('Surprise Stadium'),
              subtitle: Text(surprisedistance +' miles away'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SurpriseRoute()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.sports_baseball_outlined),
              title: const Text('Tempe Diablo Stadium'),
              subtitle: Text(tempedistance +' miles away'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TempeRoute()),
                );
              },
            ),
          ]
        ),
    );
  }
}

    //ListView.separated(
          //    itemCount: items.length,
            //  itemBuilder: (context, index) {
              //return ListTile(
                //title: Text(items[index]),
             // );
          //  },
            //separatorBuilder: (context, index) {
              //return Divider();
        //      }
        //),
      //),
    //);
  //}
//}

class AmericanRoute extends StatelessWidget {
  const AmericanRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const Text("American Family Field"),
        backgroundColor: Colors.indigo[900],
      ),
      body: Column(
          children: <Widget>[
            Image.network(
                'https://www.springtrainingonline.com/wp-content/uploads/2019/02/AmFanFields2019-6.jpg'),
            ElevatedButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.indigo[900],
              ),
              onPressed: () {
                _launchURL('https://www.mlb.com/brewers/schedule/2022-02');
              },
              child: const Text('Brewers 2022 Spring Training Schedule'),
            ),
            const SizedBox(height: 10),
            const Text("Spring Training home of the Milwaukee Brewers",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            // const Text("? miles away from given location",
             //style: TextStyle(fontStyle: FontStyle.italic)),
            const SizedBox(height: 10),
            const Text( "'American Family Field, where a fan upon encountering the brick"
                    " facade and structural elegance can't help but feel the reincarnation"
                    " of baseball's romantic past. Intimate proximity to the players, "
                    "natural grass, and a unique configuration separates this ballpark.'",
                textAlign: TextAlign.center),

            const SizedBox(height: 10),
            ElevatedButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.indigo[900],
              ),
              onPressed: () {
                _launchURL('https://www.mlb.com/brewers/ballpark');
              },
              child: const Text('Learn more at MLB.com'),
            ),
          ]
      ),
    );
  }
}

class CamelRoute extends StatelessWidget {
  const CamelRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
        appBar: AppBar( title: const Text("Camelback Ranch"),
        backgroundColor: Colors.black87,
      ),
      body: SingleChildScrollView(
      child: Column(
              children: <Widget>[
            Image.network(
                'https://www.visitarizona.com/imager/files_idss_com/C375/AccountFiles/slipm5xwmgmd9mygjskj_048cf192f7366b7b87ca4baee7baefc6.jpg'),
            ElevatedButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.black87,
              ),
              onPressed: () {
                _launchURL('https://www.mlb.com/whitesox/schedule/2022-02');
              },
              child: const Text('White Sox 2022 Spring Training Schedule'),
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blueAccent[700],
              ),
              onPressed: () {
                _launchURL('https://www.mlb.com/dodgers/schedule/2022-02');
              },
              child: const Text('Dodgers 2022 Spring Training Schedule'),
            ),
            const SizedBox(height: 10),
            const Text("Spring Training home of the Chicago White Sox and Los "
                "Angeles Dodgers", textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
               //  const Text("? miles away from given location",
                 //style: TextStyle(fontStyle: FontStyle.italic)),
            const SizedBox(height: 10),
            const Text( "'A state-of-the-art baseball facility, Camelback "
                "Ranch-Glendale is home to the Dodgers' and White Sox' kickoff each year. "
                "Located on Camelback Road in Phoenix, just west of State Farm "
                "Stadium and Gila River Arena, the 141 acre Sonoran Desert-inspired "
                "facility, shared with the Chicago White Sox, features more than "
                "just top-quality playing fields; the grounds also feature "
                "picturesque walking trails, one-of-a-kind fan photo opportunities "
                "and a five acre lake that separates the Dodgers and White Sox practice areas.'",
                textAlign: TextAlign.center),

            const SizedBox(height: 10),
            ElevatedButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                _launchURL('https://www.mlb.com/dodgers/spring-training/ballpark');
              },
              child: const Text('Learn more at MLB.com'),
            ),
          ]
      ),
    ),
        );
  }
}

class GoodyearRoute extends StatelessWidget {
  const GoodyearRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar( title: const Text("Goodyear Ballpark"),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Image.network(
                    'https://www.goodyearaz.gov/home/showpublishedimage/17030/637357678309270000'),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    _launchURL('https://www.mlb.com/indians/schedule/2022-02');
                  },
                  child: const Text('Indians 2022 Spring Training Schedule'),
                ),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red[900],
                  ),
                  onPressed: () {
                    _launchURL('https://www.mlb.com/reds/schedule/2022-02');
                  },
                  child: const Text('Reds 2022 Spring Training Schedule'),
                ),
                const SizedBox(height: 10),
                const Text("Spring Training home of the Cincinatti Reds and Cleveland "
                    "Indians", textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                //const Text("? miles away from given location",
                //style: TextStyle(fontStyle: FontStyle.italic)),
                const SizedBox(height: 10),
                const Text( "'The Reds and Indians train in a state-of-the-art "
                    "Player Development Complex and share Goodyear Ballpark with "
                    "the Cleveland Indians each spring training season. Goodyear "
                    "Ballpark features over 8,000 stadium seats, 1,500 berm seats, "
                    "six luxury suites and specialty group areas that seat up to"
                    " 300 guests.'",
                    textAlign: TextAlign.center),

                const SizedBox(height: 10),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    _launchURL('https://www.mlb.com/reds/spring-training/ballpark');
                  },
                  child: const Text('Learn more at MLB.com'),
                ),
              ]
          ),
        ),
      );
  }
}

class HohokamRoute extends StatelessWidget {
  const HohokamRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar( title: const Text("Hohokam Stadium"),
          backgroundColor: Colors.lightGreen[900],
        ),
        body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Image.network(
                    'https://www.mesaparks.com/home/showpublishedimage/23746/637044844680630000'),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.lightGreen[900],
                  ),
                  onPressed: () {
                    _launchURL('https://www.mlb.com/athletics/schedule/2022-02');
                  },
                  child: const Text('Athletics 2022 Spring Training Schedule'),
                ),
                const SizedBox(height: 10),
                const Text("Spring Training home of the Oakland Athletics", textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                 //const Text("? miles away from given location",
                   //  style: TextStyle(fontStyle: FontStyle.italic)),
                const SizedBox(height: 10),
                const Text( "'Crisp visuals and in-game entertainment, shaded "
                    "terrace level and down the line areas, and outfield berm "
                    "seating to be sure you catch every A's home run right"
                    " before your eyes.'",
                    textAlign: TextAlign.center),

                const SizedBox(height: 10),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.lightGreen[900],
                  ),
                  onPressed: () {
                    _launchURL('https://www.mlb.com/athletics/spring-training/ballpark');
                  },
                  child: const Text('Learn more at MLB.com'),
                ),
              ]
          ),
        ),
      );
  }
}

class PeoriaRoute extends StatelessWidget {
  const PeoriaRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar( title: const Text("Peoria Sports Complex"),
          backgroundColor: Colors.cyan[900],
        ),
        body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Image.network(
                    'https://assets.simpleviewinc.com/simpleview/image/fetch/c_fill,h_600,q_75,w_900/https://assets.simpleviewinc.com/simpleview/image/upload/v1/clients/phoenix/Peoria_Sports_Complex_003ab847-6a8f-44c8-b5c0-20caea842648.jpg'),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.cyan[900],
                  ),
                  onPressed: () {
                    _launchURL('https://www.mlb.com/mariners/schedule/2022-02');
                  },
                  child: const Text('Mariners 2022 Spring Training Schedule'),
                ),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.yellowAccent[700],
                    primary: Colors.black
                  ),
                  onPressed: () {
                    _launchURL('https://www.mlb.com/padres/schedule/2022-02');
                  },
                  child: const Text('Padres 2022 Spring Training Schedule'),
                ),
                const SizedBox(height: 10),
                const Text("Spring Training home of the Seattle Mariners and San"
                    "Diego Padres", textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                 //const Text("? miles away from given location",
                   //  style: TextStyle(fontStyle: FontStyle.italic)),
                const SizedBox(height: 10),
                const Text( "'Peoria Sports Complex is located in the heart of "
                    "Peoria's P83 Entertainment District. The city's crown jewel"
                    " facility is shared by the San Diego Padres and Seattle "
                    "Mariners. The complex features premier indoor and outdoor "
                    "group and event areas, a spectacular children's playground"
                    " and coveted shaded seating in the stadium. The stadium's"
                    " burnished reputation for the best variety of food and "
                    "craft beer is well-deserved and makes an afternoon at the "
                    "ballpark enjoyable for fans of all ages.'",
                    textAlign: TextAlign.center),

                const SizedBox(height: 10),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.cyan[900],
                  ),
                  onPressed: () {
                    _launchURL('https://www.mlb.com/mariners/spring-training/ballpark');
                  },
                  child: const Text('Learn more at MLB.com'),
                ),
              ]
          ),
        ),
      );
  }
}

class SaltRoute extends StatelessWidget {
  const SaltRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar( title: const Text("Salt River Fields at Talking Stick"),
          backgroundColor: Colors.deepPurple[900],
        ),
        body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Image.network(
                    'https://img.mlbstatic.com/mlb-images/image/private/t_16x9/t_w2208/mlb/dened0ccestww5jgfkkt.jpg'),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.deepPurple[900],
                  ),
                  onPressed: () {
                    _launchURL('https://www.mlb.com/rockies/schedule/2022-02');
                  },
                  child: const Text('Rockies 2022 Spring Training Schedule'),
                ),
                ElevatedButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.red[600],
                  ),
                  onPressed: () {
                    _launchURL('https://www.mlb.com/dbacks/schedule/2022-02');
                  },
                  child: const Text('Diamondbacks 2022 Spring Training Schedule'),
                ),
                const SizedBox(height: 10),
                const Text("Spring Training home of the Coloardo Rockies and Arizona"
                    "Diamondbacks", textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                 //const Text("? miles away from given location",
                 //style: TextStyle(fontStyle: FontStyle.italic)),
                const SizedBox(height: 10),
                const Text( "'Salt River Fields at Talking Stick includes an "
                    "11,000-seat capacity ballpark, a total of 12 practice fields "
                    "and office buildings that include Major and Minor League"
                    " clubhouses, training facilities, and offices for each team."
                    " The site is near Indian Bend Road and the 101 Freeway. "
                    "Salt River Fields at Talking Stick is on 140 acres of scenic "
                    "landscape that has unmatched views of Camelback Mountain, "
                    "the McDowell Mountains, Four Peaks, Red Mountain, and the "
                    "Superstition Mountains. Salt River Fields at Talking Stick"
                    " offers the Arizona Diamondbacks and Colorado Rockies a "
                    "unique opportunity to work collaboratively with a Native "
                    "American community and to create a stadium and sports "
                    "complex that showcase cultural diversity and the"
                    " rich history, culture and artistic values of the Pima and"
                    " Maricopa Indian tribes.'",
                    textAlign: TextAlign.center),

                const SizedBox(height: 10),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.deepPurple[900],
                  ),
                  onPressed: () {
                    _launchURL('https://www.mlb.com/rockies/spring-training/ballpark');
                  },
                  child: const Text('Learn more at MLB.com'),
                ),
              ]
          ),
        ),
      );
  }
}

class ScottsdaleRoute extends StatelessWidget {
  const ScottsdaleRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar( title: const Text("Scottsdale Stadium"),
          backgroundColor: Colors.orangeAccent[700],
        ),
        body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Image.network(
                    'https://img.mlbstatic.com/mlb-images/image/private/t_16x9/t_w2208/mlb/bokrigzhr3ifexov8pji.jpg'),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.orangeAccent[700],
                    primary: Colors.black,
                  ),
                  onPressed: () {
                    _launchURL('https://www.mlb.com/giants/schedule/2022-02');
                  },
                  child: const Text('Giants 2022 Spring Training Schedule'),
                ),
                const SizedBox(height: 10),
                const Text("Spring Training home of the San Francisco Giants",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                //const Text("? miles away from given location",
                  //  style: TextStyle(fontStyle: FontStyle.italic)),
                const SizedBox(height: 10),
                const Text( "'Located in the middle of historic Old Town, Scottsdale "
                    "Stadium sits on the corner of Osborn Rd and Drinkwater Blvd. "
                    "This venue, built in 1955 and updated throughout the years,"
                    " serves as the Spring Training home for the San Francisco "
                    "Giants in February and March. As the centerpiece to a vibrant "
                    "downtown, Scottsdale Stadium is a crowd favorite each Spring "
                    "as evidenced by its capacity crowds. Scottsdale Stadium is "
                    "the most unique venue in all of the Cactus League simply "
                    "because of its old school charm. As one of the larger"
                    " venues in the Cactus League with a capacity of 12,000, "
                    "fans are treated to the best venue to watch a game as the "
                    "intimate seating brings them closer to the action than "
                    "they've ever been. '",
                    textAlign: TextAlign.center),

                const SizedBox(height: 10),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.orangeAccent[700],
                    primary: Colors.black,
                  ),
                  onPressed: () {
                    _launchURL('https://www.mlb.com/giants/spring-training/ballpark');
                  },
                  child: const Text('Learn more at MLB.com'),
                ),
              ]
          ),
        ),
      );
  }
}

class SloanRoute extends StatelessWidget {
  const SloanRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar( title: const Text("Sloan Park"),
          backgroundColor: Colors.blue[900],
        ),
        body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Image.network(
                    'https://img.mlbstatic.com/mlb-images/image/private/t_16x9/t_w1024/mlb/cta4awubpwthsmfh8be3.jpg'),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                  ),
                  onPressed: () {
                    _launchURL('https://www.mlb.com/cubs/schedule/2022-02');
                  },
                  child: const Text('Cubs 2022 Spring Training Schedule'),
                ),
                const SizedBox(height: 10),
                const Text("Spring Training home of the Chicago Cubs",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                //const Text("? miles away from given location",
                  //  style: TextStyle(fontStyle: FontStyle.italic)),
                const SizedBox(height: 10),
                const Text( "'Sloan Park is an American baseball park in Mesa,"
                    " Arizona, which opened in 2014. The primary operator is the "
                    "Chicago Cubs and the ballpark serves as their spring "
                    "training home and is also the home of the Arizona League "
                    "Cubs of the Arizona League and the Mesa Solar Sox of the "
                    "Arizona Fall League. Sloan Park was built and paid for by "
                    "residents of the City of Mesa, approved by ballot measure. "
                    "It was primarily built to house spring training operations "
                    "for the Chicago Cubs, who had previously played at nearby "
                    "Hohokam Stadium.The stadium design was led by Populous."
                    " The dimensions of the playing surface closely match "
                    "those of the Cubs' regular home stadium, Wrigley Field.'",
                    textAlign: TextAlign.center),
              const Text("Information from Wikipedia.com",
                textAlign: TextAlign.center,
                  style: TextStyle(fontStyle: FontStyle.italic),
              ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue[900]
                  ),
                  onPressed: () {
                    _launchURL('https://www.mlb.com/cubs/sloan-park');
                  },
                  child: const Text('Learn more at MLB.com'),
                ),
              ]
          ),
        ),
      );
  }
}

class SurpriseRoute extends StatelessWidget {
  const SurpriseRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar( title: const Text("Surprise Stadium"),
          backgroundColor: Colors.blue[900],
        ),
        body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Image.network(
                    'https://www.ballparksofbaseball.com/wp-content/uploads/2017/01/surprise17950.jpg'),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red[900],
                  ),
                  onPressed: () {
                    _launchURL('https://www.mlb.com/rangers/schedule/2022-02');
                  },
                  child: const Text('Rangers 2022 Spring Training Schedule'),
                ),
                ElevatedButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.blue[900],
                  ),
                  onPressed: () {
                    _launchURL('https://www.mlb.com/royals/schedule/2022-02');
                  },
                  child: const Text('Royals 2022 Spring Training Schedule'),
                ),
                const SizedBox(height: 10),
                const Text("Spring Training home of the Texas Rangers and Kansas"
                    "City Royals",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                 //const Text("? miles away from given location",
                   //  style: TextStyle(fontStyle: FontStyle.italic)),
                const SizedBox(height: 10),
                const Text( "'Located in Surprise, Ariz., 25 miles northwest of"
                    " Phoenix, Surprise Stadium is the Spring Training home to the"
                    " Texas Rangers and Kansas City Royals. Surprise Stadium seats"
                    " 10,500 fans and is located on a 124-acre site that includes "
                    "six full practice fields and a half field, as well as separate"
                    " clubhouse and office facilities'",
                    textAlign: TextAlign.center),

                const SizedBox(height: 10),
                ElevatedButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.blue[900]
                  ),
                  onPressed: () {
                    _launchURL('https://www.mlb.com/rangers/spring-training/ballpark');
                  },
                  child: const Text('Learn more at MLB.com'),
                ),
              ]
          ),
        ),
      );
  }
}

class TempeRoute extends StatelessWidget {
  const TempeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar( title: const Text("Tempe Diablo Stadium"),
          backgroundColor: Colors.red[700],
        ),
        body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Image.network(
                    'https://img.mlbstatic.com/mlb-images/image/private/t_16x9/t_w1024/mlb/cta4awubpwthsmfh8be3.jpg'),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red[700],
                  ),
                  onPressed: () {
                    _launchURL('https://www.mlb.com/angels/schedule/2022-02');
                  },
                  child: const Text('Angels 2022 Spring Training Schedule'),
                ),
                const SizedBox(height: 10),
                const Text("Spring Training home of the Los Angeles Angels",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                //const Text("? miles away from given location",
                  //  style: TextStyle(fontStyle: FontStyle.italic)),
                const SizedBox(height: 10),
                const Text( "'Tempe Diablo Stadium is a baseball field located in "
                    "Tempe, Arizona. It has been the spring training home of the "
                    "Los Angeles Angels since 1993... The stadium was built in "
                    "1968 and holds 9,558 people, making it the oldest and "
                    "smallest stadium in the Cactus League. The stadium "
                    "underwent an extensive 20 million renovation and was"
                    " rededicated on Mar. 3, 2006.'",
                    textAlign: TextAlign.center),
                const Text("Information from Wikipedia.com",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.blue[900]
                  ),
                  onPressed: () {
                    _launchURL('https://www.mlb.com/angels/sloan-park');
                  },
                  child: const Text('Learn more at MLB.com'),
                ),
              ]
          ),
        ),
      );
  }
}

  _launchURL(url) async {;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

Route<Object?> _learnMore(BuildContext context, Object? arguments) {
  return DialogRoute<void>(
    context: context,
    builder: (BuildContext context) {
      return const AlertDialog(
          title: Text('Click on the map to enter an address and calculate '
              ' distance to stadiums or click on a stadium to learn more about it'));
    },
  );
}


Route<Object?> _popupForm(BuildContext context, Object? arguments) {
  //final _formKey = GlobalKey<FormBuilderState>();
  final _formKey = GlobalKey<FormState>();
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
   // super.dispose();
  }


  return DialogRoute<void>(
    context: context,
    builder: (BuildContext context)


  {
    _getMiles(fromAdd, toAdd) async {
      var from = 'http://10.0.2.2:5000/distance?from=';
      var to = '&to=';
      var url = Uri.parse(from + fromAdd!.replaceAll(' ', '') + to +
          toAdd);
      var response = await http.get(url);
      var body = json.decode(response.body);
      var miles = body["Miles"].round();
      return (miles.toString());
    }

    return AlertDialog(
        title: const Text('Please enter the name of an establishment or '
            'complete address including city, state and zip code'),
        content: Form(
        key: _formKey,
        child: ListView(
        children: <Widget>[
            TextFormField(
              controller: myController,
             // FormBuilderTextField(name: 'address',
                // The validator receives the text that the user has entered.
              validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter an address';
                }
                return null;
                },
                //validator: FormBuilderValidators.required(
                  //context,
                  //errorText: 'Please enter an address',
                //),
              ),
               const Text('Address'),

              ElevatedButton(
                onPressed: () async {
                  _formKey.currentState!.save();
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    //If the form is valid, display a snackbar. Later will
                    // use information to call microservice

                    var val = Text(myController.text);
                    var fromAdd = val.data;
                    var americandist = await _getMiles(fromAdd, 'americanfamilyfieldsofphoenix');
                    var cameldist = await _getMiles(fromAdd, 'camelbackranch');
                    var goodyeardist = await _getMiles(fromAdd, 'goodyearballpark');
                    var hohokamdist = await _getMiles(fromAdd, 'hohokamstadium');
                    var peoriadist = await _getMiles(fromAdd, 'peoriasportscomplex');
                    var saltdist = await _getMiles(fromAdd, 'saltriverfieldsattalkingstick');
                    var scottsdaledist = await _getMiles(fromAdd, 'scottsdalestadium');
                    var sloandist = await _getMiles(fromAdd, 'sloanpark');
                    var surprisedist = await _getMiles(fromAdd, 'surprisestadium');
                    var tempedist = await _getMiles(fromAdd, 'tempediablostadium');

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp(americandistance: americandist,
                          cameldistance : cameldist, goodyeardistance : goodyeardist,
                          hohokamdistance : hohokamdist, peoriadistance : peoriadist,
                          saltdistance : saltdist, scottsdaledistance : scottsdaledist,
                          sloandistance : sloandist, surprisedistance : surprisedist,
                        tempedistance : tempedist,
                      )),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Calculating distance'), //),
                        )
                    );
                  };

               },
                child: const Text('Submit'),
              ),
                ElevatedButton(
                      // goes back to home screen without calculating distance
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  onPressed: () {
                    // goes back to home screen
                      Navigator.of(context).pop();
                    },
                  child: const Text('Cancel'),
                ),
             ],
           ),
        )
    );

  }

  );

}



