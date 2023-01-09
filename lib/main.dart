import 'package:Symptopedia/data.dart';
import 'package:flutter/material.dart';
import 'search_widget.dart';

void main() => runApp(Symptopedia());

class Symptopedia extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Symptopedia',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(primarySwatch: Colors.cyan),
      // A widget which will be started on application startup
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            margin: const EdgeInsets.all(0.0),
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 100),
                ),
                Image.asset('assets/images/round_logo_transparent.png',
                    scale: 1.5),
                Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 30, 92, 155),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0)),
                            minimumSize: const Size(240, 60),
                            textStyle: const TextStyle(fontSize: 28)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MenuPage()),
                          );
                        },
                        child: const Text('Condition Categories',
                            style: TextStyle(color: Colors.white)))),
                Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 30, 92, 155),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0)),
                            minimumSize: const Size(240, 60),
                            textStyle: const TextStyle(fontSize: 28)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FilterLocalListPage()),
                          );
                        },
                        child: const Text('All Conditions',
                            style: TextStyle(color: Colors.white)))),
                Container(
                    margin: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 125, 125, 125),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0)),
                            minimumSize: const Size(110, 50),
                            textStyle: const TextStyle(fontSize: 20)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HelpPage()),
                          );
                        },
                        child: const Text(
                          'Help',
                          style: TextStyle(color: Colors.white),
                        )))
              ],
            )));
  }
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text("Choose a category"),
          backgroundColor: const Color.fromARGB(255, 30, 92, 155),
        ),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                showCategoryButtonFunc('assets/images/blood.png', 'Blood \n',
                    context, ListViewBlood()),
                showCategoryButtonFunc('assets/images/pain-in-joints.png',
                    'Bone, Joints \n & Muscles', context, ListViewBones())
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                showCategoryButtonFunc('assets/images/brain.png',
                    'Brain \n & Nervous System', context, ListViewBrain()),
                showCategoryButtonFunc('assets/images/ribbon.png', 'Cancer \n',
                    context, ListViewCancer())
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                showCategoryButtonFunc('assets/images/stomach.png',
                    'Digestive System \n', context, ListViewDigestive()),
                showCategoryButtonFunc('assets/images/ent.png',
                    'Ear, Nose \n & Throat', context, ListViewENT())
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                showCategoryButtonFunc('assets/images/endocrine-system.png',
                    'Endocrine Glands \n & Diabetes', context, ListViewEndo()),
                showCategoryButtonFunc(
                    'assets/images/eye.png', 'Eyes \n', context, ListViewEyes())
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              showCategoryButtonFunc('assets/images/dna.png', 'Genetics \n',
                  context, ListViewGenetic()),
              showCategoryButtonFunc('assets/images/heart.png',
                  'Heart \n & Circulatory System', context, ListViewHeart())
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                showCategoryButtonFunc(
                    'assets/images/immune-system.png',
                    'Immune System \n & Allergies',
                    context,
                    ListViewAllergies()),
                showCategoryButtonFunc('assets/images/coronavirus.png',
                    'Infectious Diseases \n', context, ListViewInfect())
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                showCategoryButtonFunc(
                    'assets/images/urology.png',
                    'Kidneys, Bladder \n & Urinary Tract',
                    context,
                    ListViewUrology()),
                showCategoryButtonFunc('assets/images/lungs.png',
                    'Lungs & Airway \n', context, ListViewLungs())
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                showCategoryButtonFunc('assets/images/mental-health.png',
                    'Mental \n & Behavorial Health', context, ListViewMental()),
                showCategoryButtonFunc('assets/images/pregnant.png',
                    'Pregnancy \n & Postpartum', context, ListViewPregnancy())
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                showCategoryButtonFunc(
                    'assets/images/sex.png',
                    'Reproductive System \n & Sex Organs',
                    context,
                    ListViewRepro()),
                showCategoryButtonFunc('assets/images/acne.png',
                    'Skin, Hair \n & Nails', context, ListViewSHN())
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                showCategoryButtonFunc('assets/images/sleeping.png', 'Sleep \n',
                    context, ListViewSleep()),
                showCategoryButtonFunc('assets/images/chiropractic.png',
                    'Spine \n', context, ListViewSpine())
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                showCategoryButtonFunc(
                    'assets/images/grid.png', 'All \n', context, ListViewAll()),
                Container(
                  padding: const EdgeInsets.all(80),
                )
              ],
            )
          ],
        ));
  }
}

class FilterLocalListPage extends StatefulWidget {
  @override
  FilterLocalListPageState createState() => FilterLocalListPageState();
}

class FilterLocalListPageState extends State<FilterLocalListPage> {
  late List<String> conditions;
  String query = '';

  @override
  void initState() {
    super.initState();

    conditions = allNames;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text("Choose a category"),
          backgroundColor: const Color.fromARGB(255, 30, 92, 155),
        ),
        body: Column(
          children: <Widget>[
            buildSearch(),
            Expanded(
              child: ListView.builder(
                itemCount: conditions.length,
                itemBuilder: (context, index) {
                  final condition = conditions[index];
                  return GestureDetector(
                    onTap: () {
                      showDialogFunc(context,
                          textLocation[allNames.indexOf(conditions[index])]);
                    },
                    child: Card(
                        color: Colors.lightBlue[100],
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    conditions[index],
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                  );
                },
              ),
            ),
          ],
        ),
      );

  Widget buildSearch() => SearchWidget(
        text: query,
        hintText: 'Type condition name...',
        onChanged: searchCondition,
      );

  Widget buildCondition(Condition condition) => ListTile(
        title: Text(condition.name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      );

  void searchCondition(String query) {
    final conditions = allNames.where((condition) {
      final nameLower = condition.toLowerCase();
      final searchLower = query.toLowerCase();

      return nameLower.contains(searchLower);
    }).toList();

    setState(() {
      this.query = query;
      this.conditions = conditions;
    });
  }
}

// HELP PAGE //
class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text("Help"),
          backgroundColor: const Color.fromARGB(255, 30, 92, 155),
        ),
        body: Container(
            margin: EdgeInsets.all(20),
            child: SingleChildScrollView(
                child: RichText(
                    text: TextSpan(
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                        text: "Welcome to the Symptopedia app!",
                        children: <TextSpan>[
                  TextSpan(
                      style: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.normal),
                      text:
                          "\nThe medical student's guide to conditions & symptoms"),
                  TextSpan(
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal),
                      text:
                          "\n\nThis app was developed by students from Leiden University for the course Human Computer Interaction & Information Visualisation."),
                  TextSpan(
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal),
                      text:
                          "\n\nThe app can be used to study symptoms of medical conditions."),
                  TextSpan(
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      text: "\n\nFeatures"),
                  TextSpan(
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal),
                      text:
                          "\nThe app offers two options to browse through the symptoms of medical conditions. \n\nThere is a possibility to browse through different categories of disease, enabling you to look at all diseases related to one category and read about their symptoms. \n\nIf you are looking for a specific condition it is also possible to browse through all conditions in alphabetical order at once and even use the search bar to search more specifically."),
                  TextSpan(
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      text: "\n\n"),
                  TextSpan(
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      text: "Sources\n"),
                  TextSpan(
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal),
                      text:
                          "The following resources were used to gather the informaiton available in the app:\n"),
                  TextSpan(
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      text: "\n    • NHS\n       "),
                  TextSpan(
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w400),
                      text: 'www.nhs.uk/conditions/\n'),
                  TextSpan(
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      text: "\n    • Mayo Clinic\n       "),
                  TextSpan(
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                          textBaseline: TextBaseline.alphabetic,
                          fontWeight: FontWeight.w400),
                      text: 'www.mayoclinic.org/diseases-conditions\n'),
                  TextSpan(
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      text: "\n    • The Library of Medicine "),
                  TextSpan(
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.italic),
                      text: "(MedlinePlus)\n        "),
                  TextSpan(
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                          textBaseline: TextBaseline.alphabetic,
                          fontWeight: FontWeight.w400),
                      text: 'www.medlineplus.gov/healthtopics.html\n'),
                  TextSpan(
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey[600]),
                      text:
                          "\n\nThis app is NOT meant for self-diagnosis and is solely for educational purposes. If you suspect you might suffer from one of these conditions please seek help from a medical professional."),
                ])))));
  }
}

// CATEGORY PAGES //
class ListViewAll extends StatefulWidget {
  @override
  _ListViewAllState createState() => _ListViewAllState();
}

class _ListViewAllState extends State<ListViewAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text("All"),
          backgroundColor: const Color.fromARGB(255, 30, 92, 155),
        ),
        body: ListView.builder(
            itemCount: allNames.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  showDialogFunc(
                      context, textLocation[allNames.indexOf(allNames[index])]);
                },
                child: Card(
                    color: Colors.lightBlue[100],
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                allNames[index],
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              );
            }));
  }
}

class ListViewBlood extends StatefulWidget {
  @override
  _ListViewBloodState createState() => _ListViewBloodState();
}

class _ListViewBloodState extends State<ListViewBlood> {
  var BloodNames = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text("Blood"),
          backgroundColor: const Color.fromARGB(255, 30, 92, 155),
        ),
        body: Container(
            margin: EdgeInsets.all(10),
            child: Text(
                'No medical conditions available in this category.\nSorry for the inconvenience.')));
  }
}

class ListViewBones extends StatefulWidget {
  @override
  _ListViewBonesState createState() => _ListViewBonesState();
}

class _ListViewBonesState extends State<ListViewBones> {
  var BonesNames = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text("Bone, Joints & Muscles"),
          backgroundColor: const Color.fromARGB(255, 30, 92, 155),
        ),
        body: Container(
            margin: EdgeInsets.all(10),
            child: Text(
                'No medical conditions available in this category.\nSorry for the inconvenience.')));
  }
}

class ListViewBrain extends StatefulWidget {
  @override
  _ListViewBrainState createState() => _ListViewBrainState();
}

class _ListViewBrainState extends State<ListViewBrain> {
  var BrainNames = [allNames[0], allNames[7], allNames[8], allNames[9]];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text("Brain & Nervous System"),
          backgroundColor: const Color.fromARGB(255, 30, 92, 155),
        ),
        body: ListView.builder(
            itemCount: BrainNames.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  showDialogFunc(context,
                      textLocation[allNames.indexOf(BrainNames[index])]);
                },
                child: Card(
                    color: Colors.lightBlue[100],
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                BrainNames[index],
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              );
            }));
  }
}

class ListViewCancer extends StatefulWidget {
  @override
  _ListViewCancerState createState() => _ListViewCancerState();
}

class _ListViewCancerState extends State<ListViewCancer> {
  var CancerNames = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text("Cancer"),
          backgroundColor: const Color.fromARGB(255, 30, 92, 155),
        ),
        body: Container(
            margin: EdgeInsets.all(10),
            child: Text(
                'No medical conditions available in this category.\nSorry for the inconvenience.')));
  }
}

class ListViewDigestive extends StatefulWidget {
  @override
  _ListViewDigestiveState createState() => _ListViewDigestiveState();
}

class _ListViewDigestiveState extends State<ListViewDigestive> {
  var DigestiveNames = [allNames[4]];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text("Digestive System"),
          backgroundColor: const Color.fromARGB(255, 30, 92, 155),
        ),
        body: ListView.builder(
            itemCount: DigestiveNames.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  showDialogFunc(context,
                      textLocation[allNames.indexOf(DigestiveNames[index])]);
                },
                child: Card(
                    color: Colors.lightBlue[100],
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                DigestiveNames[index], // BloodNames[index]
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              );
            }));
  }
}

class ListViewENT extends StatefulWidget {
  @override
  _ListViewENTState createState() => _ListViewENTState();
}

class _ListViewENTState extends State<ListViewENT> {
  var ENTNames = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text("Ear, Nose & Throat"),
          backgroundColor: const Color.fromARGB(255, 30, 92, 155),
        ),
        body: Container(
            margin: EdgeInsets.all(10),
            child: Text(
                'No medical conditions available in this category.\nSorry for the inconvenience.')));
  }
}

class ListViewEndo extends StatefulWidget {
  @override
  _ListViewEndoState createState() => _ListViewEndoState();
}

class _ListViewEndoState extends State<ListViewEndo> {
  var EndoNames = [allNames[3]];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text("Endocrine Glands & Diabetes"),
          backgroundColor: const Color.fromARGB(255, 30, 92, 155),
        ),
        body: ListView.builder(
            itemCount: EndoNames.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  showDialogFunc(context,
                      textLocation[allNames.indexOf(EndoNames[index])]);
                },
                child: Card(
                    color: Colors.lightBlue[100],
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                EndoNames[index], // BloodNames[index]
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              );
            }));
  }
}

class ListViewEyes extends StatefulWidget {
  @override
  _ListViewEyesState createState() => _ListViewEyesState();
}

class _ListViewEyesState extends State<ListViewEyes> {
  var EyesNames = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text("Eyes"),
          backgroundColor: const Color.fromARGB(255, 30, 92, 155),
        ),
        body: Container(
            margin: EdgeInsets.all(10),
            child: Text(
                'No medical conditions available in this category.\nSorry for the inconvenience.')));
  }
}

class ListViewGenetic extends StatefulWidget {
  @override
  _ListViewGeneticState createState() => _ListViewGeneticState();
}

class _ListViewGeneticState extends State<ListViewGenetic> {
  var GeneticNames = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text("Genetics"),
          backgroundColor: const Color.fromARGB(255, 30, 92, 155),
        ),
        body: Container(
            margin: EdgeInsets.all(10),
            child: Text(
                'No medical conditions available in this category.\nSorry for the inconvenience.')));
  }
}

class ListViewHeart extends StatefulWidget {
  @override
  _ListViewHeartState createState() => _ListViewHeartState();
}

class _ListViewHeartState extends State<ListViewHeart> {
  var HeartNames = [allNames[9]];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text("Heart & Circulatory System"),
          backgroundColor: const Color.fromARGB(255, 30, 92, 155),
        ),
        body: ListView.builder(
            itemCount: HeartNames.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  showDialogFunc(context,
                      textLocation[allNames.indexOf(HeartNames[index])]);
                },
                child: Card(
                    color: Colors.lightBlue[100],
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                HeartNames[index], // BloodNames[index]
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              );
            }));
  }
}

class ListViewAllergies extends StatefulWidget {
  @override
  _ListViewAllergiesState createState() => _ListViewAllergiesState();
}

class _ListViewAllergiesState extends State<ListViewAllergies> {
  var AllergiesNames = [allNames[1]];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text("Immune System & Allergies"),
          backgroundColor: const Color.fromARGB(255, 30, 92, 155),
        ),
        body: ListView.builder(
            itemCount: AllergiesNames.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  showDialogFunc(context,
                      textLocation[allNames.indexOf(AllergiesNames[index])]);
                },
                child: Card(
                    color: Colors.lightBlue[100],
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                AllergiesNames[index], // BloodNames[index]
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              );
            }));
  }
}

class ListViewInfect extends StatefulWidget {
  @override
  _ListViewInfectState createState() => _ListViewInfectState();
}

class _ListViewInfectState extends State<ListViewInfect> {
  var InfectNames = [allNames[2], allNames[5], allNames[6]];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text("Infectious Diseases"),
          backgroundColor: const Color.fromARGB(255, 30, 92, 155),
        ),
        body: ListView.builder(
            itemCount: InfectNames.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  showDialogFunc(context,
                      textLocation[allNames.indexOf(InfectNames[index])]);
                },
                child: Card(
                    color: Colors.lightBlue[100],
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                InfectNames[index], // BloodNames[index]
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              );
            }));
  }
}

class ListViewUrology extends StatefulWidget {
  @override
  _ListViewUrologyState createState() => _ListViewUrologyState();
}

class _ListViewUrologyState extends State<ListViewUrology> {
  var UrologyNames = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text("Kidneys, Bladder & Urinary Tract",
              style: TextStyle(fontSize: 16)),
          backgroundColor: const Color.fromARGB(255, 30, 92, 155),
        ),
        body: Container(
            margin: EdgeInsets.all(10),
            child: Text(
                'No medical conditions available in this category.\nSorry for the inconvenience.')));
  }
}

class ListViewLungs extends StatefulWidget {
  @override
  _ListViewLungsState createState() => _ListViewLungsState();
}

class _ListViewLungsState extends State<ListViewLungs> {
  var LungNames = [allNames[1], allNames[2], allNames[6]];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text("Lungs & Airway"),
          backgroundColor: const Color.fromARGB(255, 30, 92, 155),
        ),
        body: ListView.builder(
            itemCount: LungNames.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  showDialogFunc(context,
                      textLocation[allNames.indexOf(LungNames[index])]);
                },
                child: Card(
                    color: Colors.lightBlue[100],
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                LungNames[index],
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              );
            }));
  }
}

class ListViewMental extends StatefulWidget {
  @override
  _ListViewMentalState createState() => _ListViewMentalState();
}

class _ListViewMentalState extends State<ListViewMental> {
  var MentalNames = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text(
            "Mental & Behavorial Health",
          ),
          backgroundColor: const Color.fromARGB(255, 30, 92, 155),
        ),
        body: Container(
            margin: EdgeInsets.all(10),
            child: Text(
                'No medical conditions available in this category.\nSorry for the inconvenience.')));
  }
}

class ListViewPregnancy extends StatefulWidget {
  @override
  _ListViewPregnancyState createState() => _ListViewPregnancyState();
}

class _ListViewPregnancyState extends State<ListViewPregnancy> {
  var PregnancyNames = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text(
            "Pregnancy & Postpartum",
          ),
          backgroundColor: const Color.fromARGB(255, 30, 92, 155),
        ),
        body: Container(
            margin: EdgeInsets.all(10),
            child: Text(
                'No medical conditions available in this category.\nSorry for the inconvenience.')));
  }
}

class ListViewRepro extends StatefulWidget {
  @override
  _ListViewReproState createState() => _ListViewReproState();
}

class _ListViewReproState extends State<ListViewRepro> {
  var ReproNames = [allNames[5]];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text("Reproductive System & Sex Organs",
              style: TextStyle(fontSize: 15)),
          backgroundColor: const Color.fromARGB(255, 30, 92, 155),
        ),
        body: ListView.builder(
            itemCount: ReproNames.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  showDialogFunc(context,
                      textLocation[allNames.indexOf(ReproNames[index])]);
                },
                child: Card(
                    color: Colors.lightBlue[100],
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                ReproNames[index],
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              );
            }));
  }
}

class ListViewSHN extends StatefulWidget {
  @override
  _ListViewSHNState createState() => _ListViewSHNState();
}

class _ListViewSHNState extends State<ListViewSHN> {
  var SHNNames = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text(
            "Skin, Hair & Nails",
          ),
          backgroundColor: const Color.fromARGB(255, 30, 92, 155),
        ),
        body: Container(
            margin: EdgeInsets.all(10),
            child: Text(
                'No medical conditions available in this category.\nSorry for the inconvenience.')));
  }
}

class ListViewSleep extends StatefulWidget {
  @override
  _ListViewSleepState createState() => _ListViewSleepState();
}

class _ListViewSleepState extends State<ListViewSleep> {
  var SleepNames = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text(
            "Sleep",
          ),
          backgroundColor: const Color.fromARGB(255, 30, 92, 155),
        ),
        body: Container(
            margin: EdgeInsets.all(10),
            child: Text(
                'No medical conditions available in this category.\nSorry for the inconvenience.')));
  }
}

class ListViewSpine extends StatefulWidget {
  @override
  _ListViewSpineState createState() => _ListViewSpineState();
}

class _ListViewSpineState extends State<ListViewSpine> {
  var SpineNames = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text(
            "Spine",
          ),
          backgroundColor: const Color.fromARGB(255, 30, 92, 155),
        ),
        body: Container(
            margin: EdgeInsets.all(10),
            child: Text(
                'No medical conditions available in this category.\nSorry for the inconvenience.')));
  }
}

showDialogFunc(context, textLocation) {
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(top: 70, bottom: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Stack(children: [
                      Container(
                          padding: EdgeInsets.only(
                        top: 18.0,
                      )),
                      Positioned(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Align(
                            alignment: Alignment.topRight,
                            child: CircleAvatar(
                              radius: 15.0,
                              backgroundColor: Color.fromARGB(255, 30, 92, 155),
                              child: Icon(Icons.close, color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ]),
                    Image.asset(textLocation)

                    // Text(title,
                    //     style: const TextStyle(
                    //         fontSize: 20, fontWeight: FontWeight.bold)),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    // Text(des,
                    //     style: const TextStyle(fontSize: 14),
                    //     textAlign: TextAlign.start)
                  ],
                ),
              ),
            ),
          ),
        );
      });
}

showCategoryButtonFunc(imageLocation, imageLabel, context, listView) {
  return Container(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.lightBlue[100],
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                    color: const Color.fromARGB(255, 129, 206, 241), width: 2)),
            child: IconButton(
              icon: Image.asset(imageLocation, scale: 0.1),
              iconSize: 100,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => listView),
                );
              },
            )),
        Container(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              imageLabel,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ))
      ]));
}

showCategoryPage(allNames, description) {}
