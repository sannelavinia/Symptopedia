import 'package:flutter/material.dart';

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
            margin: const EdgeInsets.all(20.0),
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 150),
                ),
                Image.asset('assets/images/round_logo_transparent.png',
                    scale: 1.5),
                Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 30, 92, 155),
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
                        child: const Text('Get Started',
                            style: TextStyle(color: Colors.white)))),
                Container(
                    margin: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 125, 125, 125),
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
                    context, ListViewAll()),
                showCategoryButtonFunc('assets/images/pain-in-joints.png',
                    'Bone, Joints \n & Muscles', context, ListViewAll())
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                showCategoryButtonFunc('assets/images/brain.png',
                    'Brain \n & Nervous System', context, ListViewBrain()),
                showCategoryButtonFunc('assets/images/ribbon.png', 'Cancer \n',
                    context, ListViewAll())
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                showCategoryButtonFunc('assets/images/stomach.png',
                    'Digestive System /n', context, ListViewAll()),
                showCategoryButtonFunc('assets/images/ent.png',
                    'Ear, Nose \n & Throat', context, ListViewAll())
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                showCategoryButtonFunc('assets/images/endocrine-system.png',
                    'Endocrine Glands \n & Diabetes', context, ListViewAll()),
                showCategoryButtonFunc(
                    'assets/images/eye.png', 'Eyes \n', context, ListViewAll())
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              showCategoryButtonFunc('assets/images/dna.png', 'Genetics \n',
                  context, ListViewAll()),
              showCategoryButtonFunc('assets/images/heart.png',
                  'Heart \n & Circulatory System', context, ListViewAll())
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                showCategoryButtonFunc('assets/images/immune-system.png',
                    'Immune System \n & Allergies', context, ListViewAll()),
                showCategoryButtonFunc('assets/images/coronavirus.png',
                    'Infectuous disease \n', context, ListViewAll())
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                showCategoryButtonFunc(
                    'assets/images/urology.png',
                    'Kidneys, Bladder \n & Urinary Tract',
                    context,
                    ListViewAll()),
                showCategoryButtonFunc('assets/images/lungs.png',
                    'Lungs & Airway \n', context, ListViewLungs())
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                showCategoryButtonFunc('assets/images/mental-health.png',
                    'Mental \n & Behavorial Health', context, ListViewAll()),
                showCategoryButtonFunc('assets/images/pregnant.png',
                    'Pregnancy \n & Postpartum', context, ListViewAll())
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                showCategoryButtonFunc(
                    'assets/images/sex.png',
                    'Reproductive System \n & Sex Organs',
                    context,
                    ListViewAll()),
                showCategoryButtonFunc('assets/images/acne.png',
                    'Skin, Hair \n & Nails', context, ListViewAll())
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                showCategoryButtonFunc('assets/images/sleeping.png', 'Sleep \n',
                    context, ListViewAll()),
                showCategoryButtonFunc('assets/images/chiropractic.png',
                    'Spine \n', context, ListViewAll())
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                showCategoryButtonFunc(
                    'assets/images/grid.png', 'All \n', context, ListViewAll()),
                Container(
                  padding: const EdgeInsets.all(100),
                )
              ],
            )
          ],
        ));
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
            margin: const EdgeInsets.all(20),
            child: const Text(
                "Welcome to the Symptopedia app! the medical student's guide to conditions & symptoms")));
  }
}

// CATEGORY PAGES //
class ListViewAll extends StatefulWidget {
  @override
  _ListViewAllState createState() => _ListViewAllState();
}

class _ListViewAllState extends State<ListViewAll> {
  var titleList = [
    "Alzheimer",
    "Asthma",
    "Chest infection",
    "Diabetes type 2",
    "Food poisoning",
    "HIV",
    "Influenza",
    "Migraine",
    "Parkinson",
    "Stroke"
  ];
  var desList = [
    "Early symptoms: \n In the early stages, the main symptom of Alzheimer's disease is memory lapses. Someone with early Alzheimer's disease may: \n - Forget about recent conversations or events. \n - Misplace items. \n - Forget the names of places and objects. \n - Have trouble thinking of the right word \n - Ask questions repetitively \n - Show poor judgement or find it harder to make decisions \n - Become less flexible and more hesitant to try new things \n \n There are often signs of mood changes, such as increasing anxiety or agitation, or periods of confusion. \n \n \n Middle-stage symptoms: \n As Alzheimer's disease develops, memory problems will get worse. Someone with the condition may find it increasingly difficult to remember the names of people they know and may struggle to recognise their family and friends. Other symptoms may also develop, such as: \n - Increasing confusion and disorientation ??? for example, getting lost, or wandering and not knowing what time of day it is. \n - Obsessive, repetitive or impulsive behaviour \n - Delusions (believing things that are untrue) or feeling paranoid and suspicious about carers or family members. \n - Problems with speech or language (aphasia) \n - Disturbed sleep \n - Changes in mood, such as frequent mood swings, depression and feeling increasingly anxious, frustrated or agitated \n - Difficulty performing spatial tasks, such as judging distances \n - Seeing or hearing things that other people do not (hallucinations) \n - Some people also have some symptoms of vascular dementia. \n \n By this stage, someone with Alzheimer's disease usually needs support to help them with everyday living. For example, they may need help eating, washing, getting dressed and using the toilet. \n \n \n Later symptoms: \n In the later stages of Alzheimer's disease, the symptoms become increasingly severe and can be distressing for the person with the condition, as well as their carers, friends and family. Hallucinations and delusions may come and go over the course of the illness but can get worse as the condition progresses. Sometimes people with Alzheimer's disease can be violent, demanding and suspicious of those around them. \n \n A number of other symptoms may also develop as Alzheimer's disease progresses, such as: \n - Difficulty eating and swallowing (dysphagia) \n - Difficulty changing position or moving around without assistance \n - Weight loss ??? sometimes severe \n - Unintentional passing of urine (urinary incontinence) or stools (bowel incontinence) \n - Gradual loss of speech \n - Significant problems with short- and long-term memory \n \n In the severe stages of Alzheimer's disease, people may need full-time care and assistance with eating, moving and personal care. ",
    "Most children and adults with asthma have times when their breathing becomes more difficult. Some people with severe asthma may have breathing problems most of the time. \n \n The most common symptoms of asthma are: \n Respiratory systems: \n - Wheezing (a whistling sound when breathing) \n - Breathlessness \n - A tight chest?????? it may feel like???a band is tightening around???it \n - Coughing \n \n Many things can cause these symptoms, but they're more likely to be asthma if they: \n - Happen???often and keep coming back \n - Are worse at night and early in the morning \n - Seem to happen in response to an???asthma trigger???like exercise or an allergy (such as to pollen or animal fur) \n \n \n Asthma attacks: \n Asthma can???sometimes get worse???for a short time ??? this is known as an asthma attack. It can happen suddenly, or gradually over a few days. \n \n Signs of a severe asthma attack include: \n - Wheezing, coughing and chest tightness becoming severe and constant \n - Being too breathless to eat, speak or sleep \n - Breathing faster \n - A fast heartbeat \n - Drowsiness,???confusion, exhaustion or???dizziness \n - Blue lips or fingers \n - Fainting ",
    "Chest infections often follow colds or flu. \n \n The main symptoms are: \n \n Respiratory system: \n - A chesty cough ??? you may cough up green or yellow mucus \n - Wheezing and shortness of breath \n - Chest pain or discomfort \n \n Full body symptoms: \n - A high temperature \n - Aching muscles \n - Tiredness \n \n Symptoms related to face/head: \n - A headache \n \n \n These symptoms can be unpleasant, but they usually get better on their own in about 7 to 10 days. The cough and mucus can last up to 3 weeks. ",
    "Symptoms of type 2 diabetes include: \n \n Full body symptoms: \n - Feeling very tired \n - Losing weight without trying to \n \n Genital symptoms: \n - Itching around your penis or vagina, or repeatedly getting thrush \n \n Vision related symptoms: \n - Blurred vision \n \n Other: \n - Cuts or wounds taking longer to heal \n - Peeing more than usual, particularly at night \n - Feeling thirsty all the time ",
    "Full body symptoms: \n - A high temperature of 38C or above \n - Feeling generally unwell ??? such as feeling tired or having aches and chills \n \n \n Digestive system: \n - Feeling sick (nausea) \n - Diarrhoea \n - Being sick (vomiting) \n - Stomach cramps \n \n \n The symptoms usually start within a few days of eating the food that caused the infection. Sometimes they start after a few hours or not for a few weeks. ",
    "Most people infected with HIV experience???a short, flu-like illness that occurs 2-6???weeks after infection. After this, HIV may not cause any???symptoms for several years. It's estimated up to 80% of people who are infected with HIV experience this flu-like illness. \n \n The most common symptoms are: \n \n Full body symtpoms: \n - Raised temperature (fever) \n - Body rash \n \n Respiratory systems: \n - Sore throat \n \n \n Other symptoms can include: \n \n Full body symptoms: \n - Tiredness \n - Joint pain \n - Muscle pain \n - Swollen glands \n \n The symptoms usually last 1-2 weeks, but can be longer. They're a sign that your immune system is putting up a fight against the virus.???\n Once the immune system becomes severely damaged, symptoms???can include: \n \n Full body symptoms: \n - Weight loss \n - Night sweats \n - Skin problems \n - Recurrent infections \n - Serious life-threatening illnesses \n \n Digestive system: \n - Chronic diarrhoea \n \n \n Earlier diagnosis and treatment of HIV can prevent these problems. \n You should still take an HIV test if you may have been???at risk at any time in the past, even if you do not experience???any symptoms. ",
    "Respiratory system: \n - A dry cough \n - A sore throat \n - A runny or stuffy nose \n \n \n Full body symptoms: \n - A sudden high temperature \n - An aching body \n \n \n Psychological symptoms: \n - Feeling tired or exhausted \n - Difficulty sleeping \n \n \n Digestive system: \n - Diarrhoea \n - Tummy pain \n - Loss of appetite \n - Feeling sick (nausea) \n - Being sick (vomiting) \n \n \n Symtpoms related to face/head: \n - A headache ",
    "Common symptoms of a migraine: \n \n Symptoms related to face/head: - The main symptom of a migraine is usually an intense headache on 1 side of the head. \n - The pain is usually a moderate or severe throbbing sensation that gets worse when you move and prevents you carrying out normal activities. \n - In some cases, the pain can occur on both sides of your head and may affect your face or neck. \n \n \n Additional symptoms: \n Other symptoms commonly associated with a migraine include: \n \n - Digestive system \n - Feeling sick (nauseous) \n - Being sick (vomiting) \n - Tummy pain \n - Diarrhea \n \n Symptoms related to face/head: \n - Increased sensitivity to light and sound, which is why many people with a migraine want to rest in a quiet, dark room \n \n Some people also occasionally experience other symptoms, including: \n Full body symptoms: \n - Sweating \n - Poor concentration, \n - Feeling very hot or very cold \n \n Not everyone with a migraine experiences these additional symptoms and some people may experience them without having a headache. The symptoms of a migraine usually last between 4 hours and 3 days, although you may feel very tired for up to a week afterwards. \n \n \n About 1 in 3 people with migraines have temporary warning symptoms, known as aura, before a migraine. These include: \n - Visual problems ??? such as seeing flashing lights, zig-zag patterns or blind spots \n - Numbness or a tingling sensation like pins and needles ??? which usually starts in 1 hand and moves up your arm before affecting your face, lips and tongue \n - Feeling dizzy or off balance \n - Difficulty speaking \n - Loss of consciousness ??? although this is unusual \n \n Aura symptoms typically develop over the course of about 5 minutes and last for up to an hour. Some people may experience aura followed by only a mild headache or no headache at all.",
    "Main symptoms \n \n The main symptoms of Parkinson's disease affect physical movement: \n \n Full body symptoms: - Tremor?????? shaking, which usually begins in the hand or arm and is more likely to occur when the limb is relaxed and???resting \n - Slowness of movement (bradykinesia) ??? physical movements are much slower than normal, which can make everyday tasks difficult and result in a distinctive slow, shuffling walk with very small steps \n - Muscle stiffness (rigidity) ??? stiffness and tension in the muscles, which can make it difficult to move around and make facial expressions, and can result in painful muscle cramps???(dystonia) \n \n These main???symptoms are sometimes referred to by doctors as parkinsonism. \n \n Other symptoms: \n Parkinson's disease can also cause a range of other physical and mental symptoms. \n \n Physical symptoms: \n Other: \n - Balance problems ??? these can make someone with the condition more likely to have a???fall???and injure themselves \n - Loss of sense of smell???(anosmia)?????? sometimes occurs several years before other symptoms develop \n - Problems with peeing ??? such as having to get up frequently during the night to pee or???unintentionally peeing???(urinary incontinence) \n - Dizziness, blurred vision or???fainting???when moving from a sitting or lying position to a standing one?????????caused by a sudden drop in blood pressure \n - Swallowing difficulties???(dysphagia)?????????this can lead to???malnutrition???and???dehydration \n - Excessive production of saliva (drooling) \n \n Digestive system: \n - Constipation \n \n Genital symptoms: - An inability to obtain or sustain an erection???(erectile dysfunction)???in men \n Difficulty becoming sexually aroused and achieving an orgasm???(sexual dysfunction) in women \n \n Full body problems: - Excessive sweating???(hyperhidrosis) \n - Nerve pain ??????can cause unpleasant sensations, such as burning, coldness or numbness \n - Problems sleeping???(insomnia)?????? this can result in excessive sleepiness during the day \n \n Cognitive and psychiatric symptoms: \n - Depression???and???anxiety \n - mild cognitive impairment ??? slight memory problems and problems with activities that require planning and organisation \n - dementia?????? a group of symptoms, including more severe memory problems, personality changes,???seeing things that are not there (visual???hallucinations) and???believing things that are not true (delusions)",
    "Recognising the signs of a stroke. The signs and symptoms of a stroke vary from person to person, but usually begin suddenly. As different parts of your brain control different parts of your body, your symptoms will depend on the part of your brain affected and the extent of the damage. The main stroke symptoms can be remembered with the word FAST: \n - Face?????????the face may have dropped on 1 side, the person may not be able to smile, or their mouth or eye may have drooped. \n - Arms?????????the person may not be able to lift both arms and keep them there because of weakness or numbness in 1 arm. \n - Speech?????????their speech may be slurred???or garbled, or the person may not be able to talk at all despite appearing to be awake; they may also have problems understanding what you're saying to them. \n - Time?????????it's time to dial 999 immediately if you???notice any of these signs or symptoms. \n \n It's important for everyone to be aware of these signs and symptoms, particularly if you live with or care for a person who is in a high-risk group, such as someone who is elderly or has???diabetes???or???high blood pressure. \n \n Other possible symptoms: \n - Symptoms in the FAST test identify most strokes, but occasionally a stroke can cause different symptoms. \n \n Other signs and symptoms may include: \n \n  Full body symptoms: - Complete???paralysis???of 1 side of the body \n \n Digestive system: \n - Being sick (vomiting) \n - Feeling sick (nausea) \n \n Syptoms related to vision/head/face: \n - Sudden loss or blurring of vision \n - A sudden and very severe headache resulting in a blinding pain unlike anything \n \n Cognitive issues: \n - Confusion \n -Difficulty understanding what others are saying \n \n Other: \n - Difficulty swallowing???(dysphagia) \n - Experienced before \n - Loss of consciousness \n - Problems with balance and co-ordination \n - Dizziness "
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text("All"),
          backgroundColor: const Color.fromARGB(255, 30, 92, 155),
        ),
        body: ListView.builder(
            itemCount: titleList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  showDialogFunc(context, titleList[index], desList[index]);
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
                                titleList[index],
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

class ListViewBrain extends StatefulWidget {
  @override
  _ListViewBrainState createState() => _ListViewBrainState();
}

class _ListViewBrainState extends State<ListViewBrain> {
  var titleList = ["Alzheimer", "Migraine", "Stroke"];
  var desList = [
    "Early symptoms: \n In the early stages, the main symptom of Alzheimer's disease is memory lapses. Someone with early Alzheimer's disease may: \n - Forget about recent conversations or events. \n - Misplace items. \n - Forget the names of places and objects. \n - Have trouble thinking of the right word \n - Ask questions repetitively \n - Show poor judgement or find it harder to make decisions \n - Become less flexible and more hesitant to try new things \n \n There are often signs of mood changes, such as increasing anxiety or agitation, or periods of confusion. \n \n \n Middle-stage symptoms: \n As Alzheimer's disease develops, memory problems will get worse. Someone with the condition may find it increasingly difficult to remember the names of people they know and may struggle to recognise their family and friends. Other symptoms may also develop, such as: \n - Increasing confusion and disorientation ??? for example, getting lost, or wandering and not knowing what time of day it is. \n - Obsessive, repetitive or impulsive behaviour \n - Delusions (believing things that are untrue) or feeling paranoid and suspicious about carers or family members. \n - Problems with speech or language (aphasia) \n - Disturbed sleep \n - Changes in mood, such as frequent mood swings, depression and feeling increasingly anxious, frustrated or agitated \n - Difficulty performing spatial tasks, such as judging distances \n - Seeing or hearing things that other people do not (hallucinations) \n - Some people also have some symptoms of vascular dementia. \n \n By this stage, someone with Alzheimer's disease usually needs support to help them with everyday living. For example, they may need help eating, washing, getting dressed and using the toilet. \n \n \n Later symptoms: \n In the later stages of Alzheimer's disease, the symptoms become increasingly severe and can be distressing for the person with the condition, as well as their carers, friends and family. Hallucinations and delusions may come and go over the course of the illness but can get worse as the condition progresses. Sometimes people with Alzheimer's disease can be violent, demanding and suspicious of those around them. \n \n A number of other symptoms may also develop as Alzheimer's disease progresses, such as: \n - Difficulty eating and swallowing (dysphagia) \n - Difficulty changing position or moving around without assistance \n - Weight loss ??? sometimes severe \n - Unintentional passing of urine (urinary incontinence) or stools (bowel incontinence) \n - Gradual loss of speech \n - Significant problems with short- and long-term memory \n \n In the severe stages of Alzheimer's disease, people may need full-time care and assistance with eating, moving and personal care. ",
    "Common symptoms of a migraine: \n \n Symptoms related to face/head: - The main symptom of a migraine is usually an intense headache on 1 side of the head. \n - The pain is usually a moderate or severe throbbing sensation that gets worse when you move and prevents you carrying out normal activities. \n - In some cases, the pain can occur on both sides of your head and may affect your face or neck. \n \n \n Additional symptoms: \n Other symptoms commonly associated with a migraine include: \n \n - Digestive system \n - Feeling sick (nauseous) \n - Being sick (vomiting) \n - Tummy pain \n - Diarrhea \n \n Symptoms related to face/head: \n - Increased sensitivity to light and sound, which is why many people with a migraine want to rest in a quiet, dark room \n \n Some people also occasionally experience other symptoms, including: \n Full body symptoms: \n - Sweating \n - Poor concentration, \n - Feeling very hot or very cold \n \n Not everyone with a migraine experiences these additional symptoms and some people may experience them without having a headache. The symptoms of a migraine usually last between 4 hours and 3 days, although you may feel very tired for up to a week afterwards. \n \n \n About 1 in 3 people with migraines have temporary warning symptoms, known as aura, before a migraine. These include: \n - Visual problems ??? such as seeing flashing lights, zig-zag patterns or blind spots \n - Numbness or a tingling sensation like pins and needles ??? which usually starts in 1 hand and moves up your arm before affecting your face, lips and tongue \n - Feeling dizzy or off balance \n - Difficulty speaking \n - Loss of consciousness ??? although this is unusual \n \n Aura symptoms typically develop over the course of about 5 minutes and last for up to an hour. Some people may experience aura followed by only a mild headache or no headache at all.",
    "Recognising the signs of a stroke. The signs and symptoms of a stroke vary from person to person, but usually begin suddenly. As different parts of your brain control different parts of your body, your symptoms will depend on the part of your brain affected and the extent of the damage. The main stroke symptoms can be remembered with the word FAST: \n - Face?????????the face may have dropped on 1 side, the person may not be able to smile, or their mouth or eye may have drooped. \n - Arms?????????the person may not be able to lift both arms and keep them there because of weakness or numbness in 1 arm. \n - Speech?????????their speech may be slurred???or garbled, or the person may not be able to talk at all despite appearing to be awake; they may also have problems understanding what you're saying to them. \n - Time?????????it's time to dial 999 immediately if you???notice any of these signs or symptoms. \n \n It's important for everyone to be aware of these signs and symptoms, particularly if you live with or care for a person who is in a high-risk group, such as someone who is elderly or has???diabetes???or???high blood pressure. \n \n Other possible symptoms: \n - Symptoms in the FAST test identify most strokes, but occasionally a stroke can cause different symptoms. \n \n Other signs and symptoms may include: \n \n  Full body symptoms: - Complete???paralysis???of 1 side of the body \n \n Digestive system: \n - Being sick (vomiting) \n - Feeling sick (nausea) \n \n Syptoms related to vision/head/face: \n - Sudden loss or blurring of vision \n - A sudden and very severe headache resulting in a blinding pain unlike anything \n \n Cognitive issues: \n - Confusion \n -Difficulty understanding what others are saying \n \n Other: \n - Difficulty swallowing???(dysphagia) \n - Experienced before \n - Loss of consciousness \n - Problems with balance and co-ordination \n - Dizziness "
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text("Brain & Nervous System"),
          backgroundColor: const Color.fromARGB(255, 30, 92, 155),
        ),
        body: ListView.builder(
            itemCount: titleList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  showDialogFunc(context, titleList[index], desList[index]);
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
                                titleList[index],
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

class ListViewLungs extends StatefulWidget {
  @override
  _ListViewLungsState createState() => _ListViewLungsState();
}

class _ListViewLungsState extends State<ListViewLungs> {
  var titleList = ["Asthma", "Chest Infection"];
  var desList = [
    "Most children and adults with asthma have times when their breathing becomes more difficult. Some people with severe asthma may have breathing problems most of the time. \n \n The most common symptoms of asthma are: \n Respiratory systems: \n - Wheezing (a whistling sound when breathing) \n - Breathlessness \n - A tight chest?????? it may feel like???a band is tightening around???it \n - Coughing \n \n Many things can cause these symptoms, but they're more likely to be asthma if they: \n - Happen???often and keep coming back \n - Are worse at night and early in the morning \n - Seem to happen in response to an???asthma trigger???like exercise or an allergy (such as to pollen or animal fur) \n \n \n Asthma attacks: \n Asthma can???sometimes get worse???for a short time ??? this is known as an asthma attack. It can happen suddenly, or gradually over a few days. \n \n Signs of a severe asthma attack include: \n - Wheezing, coughing and chest tightness becoming severe and constant \n - Being too breathless to eat, speak or sleep \n - Breathing faster \n - A fast heartbeat \n - Drowsiness,???confusion, exhaustion or???dizziness \n - Blue lips or fingers \n - Fainting ",
    "Chest infections often follow colds or flu. \n \n The main symptoms are: \n \n Respiratory system: \n - A chesty cough ??? you may cough up green or yellow mucus \n - Wheezing and shortness of breath \n - Chest pain or discomfort \n \n Full body symptoms: \n - A high temperature \n - Aching muscles \n - Tiredness \n \n Symptoms related to face/head: \n - A headache \n \n \n These symptoms can be unpleasant, but they usually get better on their own in about 7 to 10 days. The cough and mucus can last up to 3 weeks. ",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text("Lungs & Airway"),
          backgroundColor: const Color.fromARGB(255, 30, 92, 155),
        ),
        body: ListView.builder(
            itemCount: titleList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  showDialogFunc(context, titleList[index], desList[index]);
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
                                titleList[index],
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

showDialogFunc(context, title, des) {
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(title,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(des,
                        style: const TextStyle(fontSize: 14),
                        textAlign: TextAlign.start)
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
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.lightBlue[100],
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                    color: const Color.fromARGB(255, 129, 206, 241), width: 2)),
            child: IconButton(
              icon: Image.asset(imageLocation),
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
