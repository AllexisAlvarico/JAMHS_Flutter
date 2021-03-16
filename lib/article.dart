import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'ArtifactCard.dart';
import 'viewpage.dart';

final List<String> imgList = [
  'https://isteam.wsimg.com/ip/340f64d4-61d4-4ba9-b784-ba4e64301bbf/levitow.jpg/:/cr=t:0%25,l:0%25,w:100%25,h:100%25/rs=w:1280',
  'https://isteam.wsimg.com/ip/340f64d4-61d4-4ba9-b784-ba4e64301bbf/jacobs.jpg/:/rs=w:1280',
  'https://isteam.wsimg.com/ip/340f64d4-61d4-4ba9-b784-ba4e64301bbf/tibor1.jpg/:/rs=w:1280',
  'https://isteam.wsimg.com/ip/340f64d4-61d4-4ba9-b784-ba4e64301bbf/kravitz.jpg/:/cr=t:0%25,l:0%25,w:100%25,h:100%25/rs=w:1280',
  'https://img1.wsimg.com/isteam/ip/340f64d4-61d4-4ba9-b784-ba4e64301bbf/battle-of-the-alamo.webp/:/cr=t:0%25,l:0%25,w:100%25,h:100%25/rs=w:1280/:/cr=t:0%25,l:0%25,w:100%25,h:100%25/rs=w:1280',
  'https://img1.wsimg.com/isteam/ip/340f64d4-61d4-4ba9-b784-ba4e64301bbf/Mendes%20Cohen.jpg/:/cr=t:0%25,l:0%25,w:100%25,h:100%25/rs=w:1280'
];
List<ArtifactData> data = [
  ArtifactData(
      "assets/images/isadore.jpg",
      "Isadore S.Jachman\nMedal of Honor Recipient",
      "Rank & Service: Staff Sergeant, U.S. Army\n\nUnit: Company B, 513th Parachute Infantry Regiment, 17th Airborne Division\n\nPlace and date: At Grand-Pre, France, October 26, 1918.\n\nBorn: December 14, 1922, Berlin, Germany\n\nDied: January 4, 1945 (aged 22) Belgium\n\nInterment: Adahs Israel Congregation Cemetery Dundalk, Maryland\n\nCitation:\n\nSergeant Jachman, Company B, 513th Parachute Infantry Regiment and his company were pinned down by enemy artillery, mortar, small arms fire and two hostile tanks that attacked the unit, inflicting heavy casualties. Sergeant Jachman left his place of cover, dashed across open ground, through a hail of fire and grabbed a bazooka from a fallen comrade. He then advanced on the tanks, which concentrated their fire on him. Firing his weapon, he damaged one and forced both of them to retire.\n\nAwards:\n\nMedal of Honor\n\nDistinguished Service Cross\n\nBronze Star\n\nPurple Heart "),
  ArtifactData(
      "assets/images/jack.jpg",
      "Jack H.Jacobs\nMedal of Honor Recipient",
      "Rank & Service: LT, US Army\n\nUnit: 505th Infantry Regiment, 82nd Airborne Division\n\nBorn: August 2, 1945 (age 73) Brooklyn, New York\n\nCitation: \n\nFor conspicuous gallantry and intrepidity in action at the risk of his life above and beyond the call of duty. Capt. Jacobs (then 1st Lt.), Infantry, distinguished himself while serving as assistant battalion advisor, 2d Battalion, 16th Infantry, 9th Infantry Division, Army of the Republic of Vietnam. The 2d Battalion was advancing to contact when it came under intense heavy machine gun and mortar fire from a Viet Cong battalion positioned in well fortified bunkers.\n\nAs the 2d Battalion deployed into attack formation its advance was halted by devastating fire.Capt. Jacobs, with the command element of the lead company, called for and directed air strikes on the enemy positions to facilitate a renewed attack. Due to the intensity of the enemy fire and heavy casualties to the command group, including the company commander, the attack stopped and the friendly troops became disorganized. Although wounded by mortar fragments, Capt. Jacobs assumed command of the allied company, ordered a withdrawal from the exposed position and established a defensive perimeter.\n\nDespite profuse bleeding from head wounds which impaired his vision, Capt. Jacobs,with complete disregard for his safety, returned under intense fire to evacuate a seriously wounded advisor to the safety of a wooded area where he administered lifesaving first aid.\n\nHe then returned through heavy automatic weapons fire to evacuate the wounded company commander. Capt. Jacobs made repeated trips across the fire-swept open rice paddies evacuating wounded and their weapons. On 3 separate occasions, Capt. Jacobs contacted and drove off Viet Cong squads who were searching for allied wounded and weapons, single-handedly killing 3 and wounding several others.\n\nHis gallant actions and extraordinary heroism saved the lives of 1 U.S. advisor and 13 allied soldiers.Through his effort the allied company was restored to an effective fighting unit and prevented defeat of the friendly forces by a strong and determined enemy.\n\nCapt. Jacobs, by his gallantry and bravery in action in the highest traditions of the military service, has reflected great credit upon himself, his unit, and the U.S. Army.\n\nAwards:\n\nMedal of Honor\n\nSilver Star with oak leaf cluster\n\nLegion of Merit\n\nBronze Star Medal with  device and two oak leaf clusters\n\nPurple Heart with oak leaf cluster\n\nMeritorious Service Medal\n\nAir Medal\n\nArmy Commendation Medal\n\nNational Defense Service Medal\n\nVietnam Service Medal with four campaign stars\n\nArmy Service Ribbon\n\nOverseas Service RibbonVietnam Cross of Gallantry with palm\n\nVietnam Staff Service Medal\n\nRepublic of Vietnam Campaign Medal\n\n"),
  ArtifactData(
      "assets/images/john.png",
      "John Levitow\nMedal of Honor Recipient",
      "Rank & Service: Sergeant, U.S. Air Force \n\nUnit: 3d Special Operations Squadron.\n\nplace and date: Long Binh Army post, Republic of Vietnam, 24 February 1969.\n\nEntered service at: New Haven, Conn. Born: 1 November 1945, Hartford, Conn.\n\nCitation:\n\nFor conspicuous gallantry and intrepidity in action at the risk of his life above and beyond the call of duty. Sgt. Levitow (then A1C), U.S. Air Force, distinguished himself by exceptional heroism while assigned as a loadmaster aboard an AC-47 aircraft flying a night mission in support of Long Binh Army post.Sgt. Levitow\'s aircraft was struck by a hostile mortar round. The resulting explosion ripped a hole 2 feet in diameter through the wing and fragments made over 3,500 holes in the fuselage.\n\nAll occupants of the cargo compartment were wounded and helplessly slammed against the floor and fuselage.The explosion tore an activated flare from the grasp of a crewmember who had been launching flares to provide illumination for Army ground troops engaged in combat. Sgt. Levitow, though stunned by the concussion of the blast and suffering from over 40 fragment wounds in the back and legs, staggered to his feet and turned to assist the man nearest to him who had been knocked down and was bleeding heavily.As he was moving his wounded comrade forward and away from the opened cargo compartment door, he saw the smoking flare ahead of him in the aisle. Realizing the danger involved and completely disregarding his own wounds, Sgt. Levitow started toward the burning flare.\n\nThe aircraft was partially out of control and the flare was rolling wildly from side to side.\n\nSgt. Levitow struggled forward despite the loss of blood from his many wounds and the partial loss of feeling in his right leg.Unable to grasp the rolling flare with his hands, he threw himself bodily upon the burning flare. Hugging the deadly device to his body, he dragged himself back to the rear of the aircraft and hurled the flare through the open cargo door.\n\nAt that instant the flare separated and ignited in the air, but clear of the aircraft. Sgt. Levitow, by his selfless and heroic actions, saved the aircraft and its entire crew from certain death and destruction. Sgt. Levitow\'s gallantry,his profound concern for his fellowmen, at the risk of his life above and beyond the call of duty are in keeping with the highest traditions of the U.S. Air Force and reflect great credit upon himself and the Armed Forces of his country.\n\nAwards:\n\nMedal of Honor\n\nPurple Heart\n\nAir Medal with silver and two bronze oak leaf clusters\n\nAir Force Presidential Unit Citation\n\nAir Force Outstanding Unit Award\n\nAir Force Good Conduct Medal\n\nNational Defense Service Medal\n\nVietnam Service Medal with two bronze service stars\n\nSmall Arms Expert Marksmanship Ribbon\n\nRepublic of Vietnam Gallantry Cross with palm\n\nVietnam Campaign Medal\n\nEnlisted Aircrew Badge"),
  ArtifactData(
      "assets/images/raymond.png",
      "Raymond Zussman\nMedal of Honor Recipient",
      "Raymond Zussman was born on July 23, 1917 in Hamtramck, Michigan to Nathan Zussman and Rebecca Leah Zussman. Raymond Zussman had seven siblings, with his mom being a stay at home wife and his father ran a shoe shop. Zussman as boy sang in his synagogue’s choir but was ridiculed for his height. Raymond was a graduate of Durfey Intermediate and of Central High School of Detroit. He played basketball, tennis, and track, but he would have loved to play football but because of his size, he couldn\'t make the high school team.After graduating from high school, Zussman joined Local Union #337 in Detroit, eventually rising to the position of shop steward at his place of employment.\n\nAt this time his mother would pass away in 1938.Zussman spent one year of college at Wayne State University and also took night classes in metallurgy. Ray’s father had served in the Russo-Japanese War and his brother Abraham served in the World War 1 with the US Army,were he was wounded in the Meuse Argonne.The Navy rejected Zussman for being too short, but In September 1941, Zussman finally was accepted into the US Army. Raymond was 24 years old when he entered the Army on September 24, 1941 at 5’4,140 lbs.\n\n He first went to Fort Sill, Oklahoma, for basic training, and later to Fort Knox, Kentucky, where he attended classes for Armored Officers School, from which he graduated as a Second Lieutenant on January 9, 1943.He served as a tank instructor for the next 5 months before he shipped to North Africa in June 1943.\n\n Raymond was 24 years old when he entered the Army on September 24, 1941 at 5’4, 140 lbs. He first went to Fort Sill, Oklahoma, for basic training, and later to Fort Knox, Kentucky, where he attended classes for Armored Officers School, from which he graduated as a Second Lieutenant on January 9, 1943. He served as a tank instructor for the next 5 months before he shipped to North Africa in June 1943.\n\nThe 756th Tank Battalion was activated as a light tank battalion on June 1st 1941. The battalion received training at Fort Lewis as part of the IX Corps. It first joined the 3rd Infantry Division at Fort Ord, California for amphibious training on August 4th, 1942 before moving to New Jersey to prepare for its participation in the invasion of North Africa. Companies A and C of the 756th landed with the 3rd Infantry Division at Fedala, one of the first beachheads during Operation Torch in November 1942. On May 7, 1943 the 756th was relieved.\n\nIn June 1943 Lt. Zussman would arrived to the 756th Tank Battalion and was attached to Company A. On September 17, 1943, the 756th would see its first action at Pasteum Italy, just south of Naples. After numerous combat missions, the unit was re-designated from 756th Tank Battalion [L] to 756th Tank Battalion by G.O. No. 107 on December 15, 1943. The 756th saw action across the Rapido River in January of 1944, and would be one of the first units to enter the Monte Cassino Area. This is where Lt. Zussman was wounded.\n\n After being treated for his wounds he was assigned as a general’s aide.Lamenting, he requested to join a front-line unit before they shipped off to southern France. Between May 11th and June 10th, the battalion saw constant action and participated in every phase with the drive on Rome.It wasn’t relieved until 6 days after the fall of Rome. Except for two brief moments the 756th would remain attached to the 3rd Infantry Division until the end of the war. The battalion next supported the 3rd ID in Operation Dragoon, the Allied invasion of Southern France on 15 August 1944. In September of 1944, the 756th was helping the 3rd ID drive into the Rhône Valley.This is where Lt. Zussman in Eastern France for his actions would posthumously receive the Congressional Medal of Honor.\n\n Lt. Raymond Zussman was killed in action by a German mortar round on September 21, 1944 in Raddon, France, just 9 days after his heroic actions. He was 27 years old. Raymond’s brother died a week later in a VA Hospital at the age of 51. His father passed away in 1949. Raymond Zussman did not marry. Zussman wrote in his final letter home, Not much to tell except we are doing quite a lot of fighting and very little resting. I\'ve been pretty tired and so have my men.We\'re going to try to end this war soon because we\'d like to get back to our people [families]."
          "\n\nLt. Zussman is buried at Machpelah Cemetery in Ferndale, Oakland County, Michigan in Section 6 Row 15 Lot 17.\n\nCitation:\n\nGeneral Order No. 42 Dated 24th May, 1945\n\nThe President of the United States of America, in the name of Congress, takes pride in presenting the Medal of Honor (Posthumously) to Second Lieutenant Raymond Zussman, United States Army, for conspicuous gallantry and intrepidity in action above and beyond the call of duty while serving with Company A, 756th Tank Battalion, 3d Infantry Division. On 12 September 1944, Second Lieutenant Zussman was in command of two tanks operating with an infantry company in the attack on enemy forces occupying the town of Noroy le Bourg, France. At 7 p.m.,his command tank bogged down. \n\nThroughout the ensuing action, armed only with a carbine, he reconnoitered alone on foot far in advance of his remaining tank and the infantry. Returning only from time to time to designate targets, he directed the action of the tank and turned over to the infantry the numerous German soldiers he had caused to surrender. He located a road block and directed his tanks to destroy it. Fully exposed to fire from enemy positions only 50 yards distant, he stood by his tank directing its fire. Three Germans were killed and eight surrendered. Again he walked before his tank,leading it against an enemy-held group of houses, machinegun and small arms fire kicking up dust at his feet. The tank fire broke the resistance and 20 enemy surrendered. Going forward again alone he passed an enemy-occupied house from which Germans fired on him and threw grenades in his path. After a brief fire fight, he signaled his tank to come up and fire on the house. Eleven German soldiers were killed and 15 surrendered. Going on alone, he disappeared around a street corner. The fire of his carbine could be heard and in a few minutes he reappeared driving 30 prisoners before him. Under Second Lieutenant Zussman\'s heroic and inspiring leadership,18 enemy soldiers were killed and 92 captured.\n\nRank & Service: Second Lieutenant, US Army\n\nUnit: 756th Tank Battalion\n\nBorn: July 23, 1917 Hamtramck, Michigan\n\nDied: September 21, 1944 (aged 27) France\n\nPlace of burial: Machpelah Cemetery, Ferndale, Michigan\n\nAwards: \n\nMedal of Honor\n\nPurple Heart\n\nArmy Good Conduct Medal\n\nAmerican Defense Service Medal\n\nAmerican Campaign Medal\n\nEuropean-African-Middle Eastern Campaign Medal\n\nWorld War II Victory Medal\n\n "),
];

class ArticlePage extends StatefulWidget {
  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color(0xff243C6C),
        appBar: AppBar(
          backgroundColor: Color(0xff2d4b87),
          title: Text(
            'Articles',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(child: carousel()),
      ),
    );
  }

  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.network(
                        item,
                        fit: BoxFit.cover,
                        width: 1000.0,
                      ),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: Text(
                            'No. ${imgList.indexOf(item)} image',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ))
      .toList();

  Widget carousel() {
    return Container(
        child: Scaffold(
      backgroundColor: Color(0xff243C6C),
      body: Align(
          alignment: Alignment.center,
          child: ListView(children: <Widget>[
            CarouselSlider(
              items: imageSliders,
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.map((url) {
                int index = imgList.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? Color.fromRGBO(0, 0, 0, 0.9)
                        : Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                );
              }).toList(),
            ),
            cardView(),
          ])),
    ));
  }

  //this wraps the cards
  Widget cardView() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 5, 10, 5),
      child: Wrap(
        children: data.map((data) {
          return ArtifactCard(
              imagePath: data.imagePath,
              description: data.desc,
              title: data.title,
              action: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ViewPage(
                              img: data.imagePath,
                              title: data.title,
                              desc: data.desc,
                            )));
              });
        }).toList(),
      ),
    );
  }
}
