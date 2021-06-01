import 'package:flutter/material.dart';
import 'package:jamhs_flutter/displayView.dart';
import 'package:panorama/panorama.dart';
import 'package:jamhs_flutter/floorPlanView.dart';
import 'size_config.dart';
import 'package:jamhs_flutter/ArtifactArticlesCards.dart';

class VirutalToursPage extends StatefulWidget {
  @override
  _VirutalToursPageState createState() => _VirutalToursPageState();
}

class _VirutalToursPageState extends State<VirutalToursPage> {
  int _displayId = 0;
  String mohText = "Jewish American recipients of awards for valor.  The Medal of Honor is" +
      "the highest award for valor but is not the only award for valor." +
      " Just beneath the Medal of Honor is the Distinguished Service Cross (Army)" +
      " for extreme gallantry and risk of life in combat, Navy Cross (Navy & Marines)" +
      " for valor in combat, and the Air Force Cross also for valor in combat." +
      " Hundreds of Jewish Americans have earned these awards. Below these awards" +
      " are the Silver Star for valor in combat and the Bronze Star for heroic achievement," +
      " heroic service, meritorious achievement, or meritorious service in a combat zone." +
      " Thousands of Jewish Americans have earned these awards.";

  List<DisplayData>? displayData;

  List<ArtifactArticlesData> data = [
    ArtifactArticlesData(
        "assets/images/uriah-p-levy.jpg",
        "Commodore Uriah P. Levy",
        "URIAH P. LEVY",
        "Naval Officer",
        "Uriah Phillips Levy was born into a Jewish family from Philadelphia, Pennsylvania on April 22, 1792. His grandfather, Jonas Phillips, moved to the United States from Germany in 1756, and fought against the British during the American Revolution.\n\nAt the age of ten, Levy left home to serve as a cabin boy on a trading ship. He returned home to celebrate his Bar Mitzvah with his family, though he quickly returned to the sea soon afterward. Levy eventually joined the U.S. Navy, where he became a sailing master.\n\nHe first saw battle in the Barbary Wars, and then again, during the War of 1812, aboard the USS Argus. After taking 20 ships, the Argus herself was captured on August 14, 1813, and the surviving crew, including Levy, were sent to Dartmoor Prison in England. Levy remained a prisoner there for sixteen months. After his release, Levy returned to the U.S. and continued to serve in the Navy, rising to the ranks of Lieutenant (1817), Master Commandant (1837), and Captain (1844).\n\nAfter witnessing flogging in the Navy firsthand, Levy joined those who opposed corporal punishment. In 1838, as commander of the USS Vandalia, he developed his own system of discipline, substituting mild reforms for corporal punishment. Because of his refusal to inflict corporal punishment on a young seaman, he was court-martialed and dismissed from the service. That dismissal was eventually overturned by President John Tyler.\n\nLevy became an outspoken opponent of flogging aboard ships, publishing articles, giving lectures, and publicly advocating to Congress to outlaw it. The practice first was limited in 1850, and then banned in 1862, due in quite significant measure to his efforts; making the U.S. Navy the first military organization in the world to abolish physical punishment.\n\nOver his career, Levy faced significant anti-Semitism. He was, in fact, courts-martialed six separate times; several after fights directly provoked by anti-Semitic comments, including once killing a man in a duel. All charges were eventually overturned. In 1855, after years of requesting a ship’s commission, he was informed of his dismissal from the Navy once again. However, he fought the decision through a Congressional Court of Inquiry, and was reinstated in 1858.\n\nHe was then given command of the USS Macedonian, and soon after, became the flag officer of the Mediterranean fleet; receiving the rank of Commodore, then the highest ranking in the Navy, with the current rank equivalent of Admiral. He was stateside when the Civil War broke out, and he pleaded with President Lincoln to be brought back into active duty. Eventually, and perhaps ironically, he was tasked with heading the Navy’s Court Martial Board.\n\nWhile he had no children, he did leave behind many legacies. An ardent admirer of Thomas Jefferson, Levy purchased Monticello, the late President's estate, in 1836, and publicly announced that he intended to restore the property to its original condition and open it for visitation. The house and grounds remained in the Levy family until the estate was sold to the Thomas Jefferson Memorial Foundation in 1923.\n\nA statue of Thomas Jefferson commissioned by Levy stands today in the rotunda of the U.S. Capitol. A destroyer escort was named the USS Levy (DE-162); it received 5 battle stars for its service in the Pacific theater of WWII. In 1959, the Navy's oldest Jewish Chapel located at Naval Station Norfolk was renamed the Commodore Levy Chapel in honor of Levy's dedication to his religion and his country, and in 2003, the rebuilt Jewish chapel at the U.S. Naval Academy was named for him as well. In December 2011, a statue of Levy was unveiled outside of Philadelphia's Congregation Mikveh Israel, where Levy had his bar mitzvah in 1805. A plaque on the synagogue quotes the American hero’s simple but fiery words borne of a lifetime of proud service: “I am an American, a sailor, and a Jew.”\n\n“My parents were Israelites, and I was nurtured in the faith of my ancestors. In deciding to adhere to it, I have but exercised a right guaranteed to me by the Constitution of my State and the United States, a right given to all men by their Maker. But, while claiming this right, I have ever accorded it to all men, and, as an officer of the Navy, I have treated each and every one as a man and never as a partisan or sectarian.”\n\n"),
    ArtifactArticlesData(
        "assets/images/Defenders at the Alamo.jpg",
        "Jewish Defenders at the Alamo/Texas Revolution",
        "Defenders at the Alamo",
        "Texas Revolution",
        "The Texas Revolution was fought from 1835 to 1836 resulting in independence for the Republic of Texas until the United States’ annexation in 1845 which led to the Mexican-American War. Sydney Gumpertz in his book The Jewish Legion of Valor writes, “…the Jew again drew the sword in defense of liberty” for “the Lone Star State in its fight for independence…” In her book, Pioneer Jewish Texans, Natalie Ornish writes, “…there may have been eight Jews at the Alamo in the fighting for Texas independence…”\n\nDavid Levi Kokernut, Dr. Albert Moses Levy, Julian Harby, and Herman Ehrenberg, members of the New Orleans Grays fought for five days in the storming of Bexar starting on December 4, 1835. Kokernut, Levy, and Ehrenberg would record in writing the experience of fighting house to house. Dr. Levy was rewarded for his bravery and Ehrenberg who stayed in the Alamo was known to scout and acquire provisions, risking his life, in enemy areas.\n\nLouis Moses Rose is said to have been a French Jew who fought in the French   Army under Napoleon in Italy, the French invasion of Russia and the Peninsular War.\n\nIt is also said in Texas he had fought in the Fredonian Rebellion (1826) and at the Battle of Nacogdoches (1832) and with his friend Colonel James Bowie at the first two battles at the Alamo, the storming of Bexar and the battle which proceeded the fall of the Alamo. What happened next is shrouded in mystery. The story goes that Rose escaped the Alamo before the fall and made his way to the Zuber Ranch. Some didn’t believe he escaped but the story of Colonel Travis’ speech and drawing a line in the sand with his sword is credited to Rose’s account.\n\nAnthony (Avram) Wolf and his two sons, Benjamin (12) and Michael (11), had moved to San Antonio with the Texas Army as a member of Captain William R. Carey's artillery company. Wolf was killed asking the Mexicans for clemency after the fall of the Alamo.\n\nAccording to two survivors the Wolf boys were killed by the Mexicans in a room with other survivors. Wolf and his two sons are the only known Jews to die at the Alamo.\n\nThree weeks after the fall of the Alamo, 330 Texan prisoners including their leader, James Walker Fannin Jr., were shot to death at Goliad on March 27, 1835. Of the four Jews present at Goliad, Herman Ehrenberg, Benjamin M. Mordecai, and M.K. Moses escaped. Edward Isaac Johnson the fourth Jew was killed. Ehrenberg writes about the massacre at Goliad and his miraculous escape.\n\n"),
    ArtifactArticlesData(
        "assets/images/Defenders at Fort McHenry.jpg",
        "Defenders at Fort McHenry",
        "Mendes Cohen",
        "War of 1812",
        "On September 13, 1814 the British detained Francis Scott Key aboard the HMS Tonnant while negotiating the release of prisoners. He famously observed the bombardment of Fort McHenry during the Battle of Baltimore which led to him penning the poem 'Defence of Fort M'Henry' which would later become the Star-Spangled Banner. What is not so famous is the story of the Jewish defenders of Fort McHenry who ensured “through the perilous fight …that our flag was still there.” Brothers Phillip I. and Mendes I. Cohen, nephews of Jacob I. Cohen, who fought in the Revolutionary war in South Carolina, were chief among the Jewish defenders at Fort McHenry.\n\nAccording to the “Muster Roll of Citizen Soldiers at North Point and Fort McHenry,” brothers Phillip I. Cohen and Mendes I. Cohen, nephews of Jacob I. Cohen, who fought in the Revolutionary war in South Carolina defended Fort McHenry. Sydney Gumpertz, in his book, The Jewish Legion of Valor lists their father Israel I. Cohen as the brother of Mendes as a defender. The muster rolls also list Lieutenant Jacob Myers and Private Andrew Levy of the Maryland Chassuers, Captain Joseph Myers of the First Regiment Franklin Artillery, Private Samuel Etting along with the two Cohen brothers of the Baltimore Fencibles as the Jewish defenders of Fort McHenry. Benjamin I. Cohen is also mention elsewhere as having been at Fort McHenry and the oldest brother Jacob might also have been there.  Salomon Ettig, Samuel’s father along with a Samuel Cohen are listed as might have being there.  A Dutch Jew, named Jacob Moses, a private in the Union Yagers and Private Levi Collmus in the Maryland Artillery who was permanently injured are also mentioned. Benjamin Pollock, Isaac De Jung, and Peter, Thomas and Vincent Levy (with “non-Jewish” first names), Isaac Levy and a few men named Phillips who may or who may not have been Jewish were also defenders at Fort McHenry. In total, there was possibly at least eight perhaps as many as nineteen plus Jewish defenders at Fort McHenry  according to Gumpertz.\n\nAccording to Leon Hühner in Jews in the War of 1812, forty-three Jews defended Fort McHenry. His list in addition to Sydney Gumpertz’s list includes; Lieutenant Jacob Myers and Andrew Levy of the Maryland Chassuers of the 5th Regiment of Maryland Calvary Militia, Captain Joseph Myers from the 1ST Regiment Franklin Artillery, Private Phillip I. Cohen and Private Samuel Etting of the Baltimore Fencibles, 2nd Sergeant Samuel Cohen Jr., Private Jacob Hess, Private Jesse Hess, and Jacob Jonas of the American Artillerists, Samuel Koing from the Washington Artillery, Salomon Myers from the Eagle Artillerists of the Washington Artillery, Levi Callmus of the United Maryland Artillery of the Washington Artillery, 1st Corporal Martin Hirsch and Private Jacob Moses of the Union Yagers of the 1st Rifle Battalion of the Maryland Militia, Private N. Myers of Captain Stile’s Corps of Marine Artillery, First Lieutenant Jacob Barnitz Jr., Private David Kaufman, and Private Jacob Lehman of the York Volunteers attached to the 5th Maryland Volunteer Infantry, Captain Jacob Baer of the Maryland Calvary.\n\nAlso listed by Hühner are; Private Michael Wolf of the 1st Baltimore Light infantry 5thRegiment of Infantry of Maryland Militia, Privates Thomas Levy and Jacob Meyer of the Mechanical Volunteers, Captain David Warfield and Private Isaac Phillips Jr. of the Baltimore United Volunteers, Sergeant Samuel Myers of the Independent Blues, Privates Henry Wolf and G.C. Leoni of the 6th Independent Regiment of the Maryland Militia, Privates Isaac Wolf, Benjamin Jacobs, Vincent Levy, Aaron Mark, and 3rd Sergeant Benjamin F. Pollock of the 27thIndependent Regiment, Privates L. Noah and Daniel Kaufman, 4thSergeant Jacob Wolf, Jr., Barnard Myers, First Lieutenant Samuel Wolf, and 4thCorporal William Samuels of the 39th Independent Regiment, Samuel Solomon of the 51st Independent Regiment, Issac Phillips, Manuel Joseph, and Solomon Etting.\n\nOne of the stories of heroic service which survives is that of the Cohen brothers. When the bombardment commenced, Phillip Cohen was a few feet and conversing with one of the first two out of four total casualties and miraculously was not injured. Meanwhile Mendes Cohen heeded, the commander, Major Armistead’s call for the dangerous duty to remove the powder kegs from the storage room when it was hit by a British shell. Etting and Cohen families were commended for their service and played a significant role in Baltimore’s civic life.\n\n"),
    ArtifactArticlesData(
        "assets/images/David_Salisbury_Franks.jpg",
        "Lieutenant Colonel David Salisbury Franks (1740–1793)",
        "Lieutenant Colonel David Salisbury Franks",
        "American Revolution",
        "Excerpt from The Jewish Legion of Valor by Sydney Gumpertz (page 73)] there is the splendid record of Lieutenant-Colonel David Salisbury Franks, a nephew, who was also a brother-in-law of Hyam Salomon. He served as Aide-de-Camp to General Benedict Arnold, until the time of the General’s treachery. Colonel Franks received a clean bill of health and was completely exonerated of any complicity. In a letter dated September 25th 1780, Arnold stated that, 'In justice to the gentlemen on my official Family, Colonel Varick and Major Franks, I think myself bound to declare that they as well as Joshua Smith, Esq. (who I know is Suspected) are totally Ignorant of any transactions of mine that they had reason to believe were Injurious to the Public'.\n\nLater we hear of Colonel Franks as being ordered abroad to deliver the ratification of the definitive treaty of ministers plenipotentiary. For his services in the Revolution he was granted 400 acres of land.\n\nHe began his patriotic career by speaking disrespectfully of George the Third and being arrested in Montreal. IN 1776, General Worcester appointed him Paymaster to the American garrison in Montreal. When the army retreated from Canada, he enlisted as a volunteer and joined the Massachusetts Regiment. IN 1778, he was ordered to service under Count d’Estaing, commanding the American Naval forces at sea. The expedition was a failure and Franks became a member of Arnold’s military family.\n\n"),
    ArtifactArticlesData(
        "assets/images/Julius_Stahel.jpg",
        "MG Julius Stahel: Recieved Civil War Medal of Honor ",
        "Major General Julius Stahel Jewish",
        "Civil War",
        "Stahel is a case study of how determining if a historical military figure is Jewish or not is complicated.\n\nFor most Jewish historical military figures, there is strong direct evidence that they were Jewish such as self-identifying, birth records, death records, service records, census data, associations, Jewish organization or synagogue membership, or other contemporary records.  For others there is no direct evidence but only circumstantial evidence. Sometimes there is overwhelming circumstantial evidence and sometimes not.  Sometimes the circumstantial evidence is strong and sometimes, although abundant, it is weak. Conflicting evidence is another issue affecting clarity. Standards, a framework, or a methodology must be established to evaluate evidence of a Jewish connection.\n\nMethodology: What defines a Jew?\n\nWe use the most liberal methodology, any one piece of verifiable connection to Judaism or direct evidence of Jewish identification. This standard is what the National Museum of American Jewish Military History Collections, Archives, and Exhibitions Coordinator, Pamela Elbe, explained they use to determine if a historic military figure is Jewish when asked why they only recognize 17 Jewish American Medal of Honor Recipients. Some online lists contain dozens of names of Jewish Medal of Honor recipients. “We only include those that we have some sort [of] proof to indicate that they were Jewish (either they or their family identified them as Jewish, or there is some primary source indicating that they were Jewish).”  With the threshold of just one piece of proof, it takes into account things such as converting later in life (Mordecai Meyers), the family converting after death and interment (David Rosenkrantz), being born Jewish, or paternal linage with no known affiliations or adherence.\n\nWhy would it be so hard?\n\nMany Jews in the 1800s for various reasons changed their names, tried to hide their identity, or did not connect with their Jewish linage. Mordecai Meyers, a valiant combatant in the War of 1812, was Jewish but married a gentile later in life and no longer identified as a Jew or affiliated himself as such. Some may have changed their name out of fears of antisemitism. It is important to note that during this era there were not only pogroms in Eastern Europe but in Central Europe as well. The most famous Jewish Medal of Honor recipient who changed his name, Simon Suhler, who used the names Charles Gardner and Simon Neustadle during his service, appears to have changed his name not because of antisemitism, but due to having deserted or trying to conceal his identity for other reasons. Some, especially the immigrants from Central Europe who participated in the revolutions of 1848, connected more with the humanist ideals of the movement than with their Jewish linage. There were also stronger societal pressures and barriers for Jews in Europe, which caused some to shed that shackle of their Jewish background.\n\nStrength of Evidence\n\nThere are certainly different levels of evidence or information. A high level of direct evidence is the military historical figure having a bar mitzvah, identifying as Jewish, or being buried in a Jewish cemetery. A low level of circumstantial evidence, which is often used, is having a Jewish sounding surname. There are many levels of circumstantial evidence and information in between. Clearly, the preferred standard is clear unambiguous proof but the varying strength and veracity of the direct or circumstantial evidence should inform judgements on probability.\n\nJewish Name?\n\nThe most prevalent and lowest level of circumstantial claims for a historical military figure for being Jew is a Jewish surname. This standard is undesirable as it is unreliable, but acceptable as a cursory triage of where to focus some effort as a last resort. This method alone is not proof enough to discern Jewishness. Having the name surname Katz does not automatically indicate someone is Jewish.\n\nRemember the Maine!\n\nWe pursued this method trying to verify a claim that there were 15 Jews killed aboard the USS Maine on February 15, 1898. We had first read this in some of Seymour Brody’s various writing and had seen it repeated in many Jewish online magazine articles since. We wanted to validate this claim and tracked its first mention to an 1899 book called Justice to the Jew by Madison C. Peters. No evidence for this claim is cited in any of these sources so we tried to verify it. Looking over the names of the USS Maine casualties there are more identifiably Japanese names such as Ishida, Kitagata, Sugisaki, or Suzuki (there were nine sailors of Japanese descent aboard the USS Maine, seven perished). The closest to Jewish sounding names we could muster is Zeigler, Salmin, Frank, or Blomberg among the casualties and Schwartz among the survivors, which is nowhere near the 15 number or close to definitive. Without more evidence we can acknowledge there is this claim, but cannot say with any type of certainty that it is true.\n\nAre there more than 17 Jewish Medal of Honor Recipients?\n\nPossibly, the Medal of Honor recipients who are suggested as being Jewish, which we can only speculate is based solely on their surname, are John Otto Siegel, Samuel Sampler, Edouard Izac, Louis C. Mosher, George Geiger, Jacob Troutman, Henry Heller, Abraham Greenawalt, Isaac Gause, Phillip Katz, Jack Weinstein, William Zion, and David Goodman. Besides perhaps a Jewish sounding name, most “lack any documentation to back that up” according to Elbe.\n\nElbe provided information about these people. Records list Siegel as Catholic and the Canadian census of 1901 corroborates that. Sampler and Trautman have crosses on their grave markers. Izac attended a Catholic school, had a son who was a priest, and has a cross on his grave marker. Mosher’s funeral was held in a church and he has a cross on his grave marker. Geiger’s official military records lists his religion as Protestant. Heller was buried in a Baptist cemetery. Greenawalt in his son’s biography states his father was a member of the Methodist Church. Gause, according to his own book and researchers, was Quaker. Katz has information saying he was Protestant and the family sold pork. With Weinstein and Goodman, nothing has yet become known besides a Jewish sounding surname. Could some or all of these men be Jewish? Certainly, but there is nothing yet known to verify that.\n\nNone of this is to say they are definitively not Jewish, but there does not exist any evidence that they are. Elbe explains this further, “Maybe some of these individuals converted later in life to Christianity, but there’s nothing to indicate that any of them were Jewish. “  She continued, “With nothing to say that they were Jewish and at least one (if not more) primary source to indicate to the contrary, there is no way that we can include these individuals in the Museum’s list.”\n\nWith some of these individuals there appears to be conflicting information. Sydney Gumpertz, a Jewish Medal of Honor Recipient in World War I, in his 1934 book, The Jewish Legion of Valor, seeks to illustrate the valor of Jewish soldiers throughout world history, in the United States, and particularly during World War I. He has an extensive list of the accomplishments of Jews in various wars. Included in the book are Heller, Greenawalt, Gause, and Zion. Gumpertz, certainly, thought they were Jewish but without knowing the methodology he employed or the information he verified, it is impossible to make a determination.\n\nThat brings us to Major General Julius Stahel\n\nFilmmaker Peter Kovacs Rosenbluth in the documentary he directed The Jewish 48’ERS in the American Civil War suggests that Stahel along with a few other Central European immigrants such as Major General Franz Sigel, Major General Charles Mundee, and the Utassy brothers are likely Jewish. The documentary’s website states, “Stahel's Jewishness cannot be confirmed for [100%] sure but he was likely of Jewish roots.”\n\nRosenbluth provides a great deal of circumstantial evidence leading to his conclusion. He says, “Stahel's original surname was Szamvald which comes from Schamwad a name of Ashkenazi origin.” He continues, “Stahel's father was a taxation officer a job where majority of the people were Jews.” Rosenbluth adds that Stahel’s occupation of book trader was also a typical Jewish profession, the city where he was born had a huge Jewish population, and most of his pallbearers were Jewish. At the very least Stahel surrounded himself with many Jews both during the Civil War and after. He writes about the Jews under his command in letters to, the contemporary Jewish historian and one of his pallbearers, Simon Wolf.\n\nRosenbluth says the close association with Jews would not be common for a gentile from Hungary due to the ardent antisemitism at the time. Stahel, a German speaker, appeared not to identify as German or belong to any German communities. He also points out there was a 1878 letter to the editor published in The American Israelite as a rebuttal to The Washington Sentinel bemoaning the Hayes administration’s lack of appointing German Christians to diplomatic positions. The original article appears to have listed Stahel among others as Israelites, but the author of the letter claims to be “creditably informed” that Stahel is not an Israelite, but an Austrian. We know that he is Hungarian. Rosenbluth finishes with, “unfortunately he did not marry…and died without descendants” so the direct evidence we seek is harder to obtain.\n\nThe 'final' verdict…\n\nWith Major General Julius Stahel, like most of these historical military figures, we have to become comfortable with the uncertainty. We would like there to be clear-cut direct evidence for us to be able to have certainty, but things are complicated and not linier. We can always hope that some researcher will find definitive direct evidence in some European synagogue’s records, government documents, or in a family collection.\n\nThere is an abundance of information that is low-level circumstantial evidence. Despite the number of data points, the aggregated information is not strong enough alone or together to begin to assign a probability to Stahel being Jewish. If there was some stronger circumstantial evidence, saying Major General Stahel was likely Jewish would not be a stretch. With the information currently available, we cannot rule out the possibility that Major General Stahel was Jewish, but cannot say that he likely was.\n\nWe encourage you to view the incredibly interesting film The Jewish 48’ERS in the American Civil War at http://jewishdocumentaries.info and make up your own mind.\n\n"),
    ArtifactArticlesData(
        "assets/images/stuart_wolfer.jpg",
        "Major Stuart Wolfer",
        "Major Stuart Wolfer",
        "Iraq War",
        "Stuart Wolfer grew up with his sister Beverly in Dix Hills, Long Island, New York where they attended Solomon Schechter Day School in Jericho. His Bar-Mitzvah was at the Dix Hills Jewish Center on Memorial Day, May 28, 1984. Later that year, Stuart moved with his family to Coral Springs, FL, where he attended Ramblewood Middle School and graduated in 1989 with honors from Taravella High School. While at Taravella he was a member of the National Honor Society, Debate Club, a participant in Leadership Broward, JR Varsity Football, Lacrosse and was active in BBYO (B’nai Brith Youth Organization). Stuart was confirmed at Temple Beth Orr. Stuart’s summers involved Outward Bound, Volunteers for Israel, American Jewish Social Services that cost him his spot on the football team of his senior year, and B’nai Brith Youth Organization (BBYO) Leadership programsHe had a great time during his high school years at JPT!!!! Stuart attended Washington University in St. Louis, MO. During Thanksgiving of his freshman year Stuart told his parents that he had been auditing Army ROTC classes and now wanted to officially enroll in the program. Stuart was involved in Student Government and Hillel House. Upon graduation in 1993 with a Bachelor of Business Administration (BBA) Stuart was commissioned as a 2nd Lieutenant from the Army ROTC program. Due to cutbacks in the Military, Stuart was placed in the Army Reserves.Leaving St. Louis, Stuart moved to Des Moines, Iowa and held various sales positions as well as starting his own vending machine business, Lilly Vending.In 1996, Stuart moved to Los Angeles, CA to accept another sales position. While in LA he attended night law school at Loyola University and graduated in 2002 with his JD. Stuart and Lee Anne were married August 18, 2001 and have three daughters—Lillian 6, Melissa 4 and Isadora 2, where they live on their 80 acre farm in Emmett, Idaho. After law school graduation, he moved to Idaho and was a regional representative for Thomson-Reuters Legal Division in Idaho and Montana.Since college graduation, Stuart served in the Army Reserves and in August 2004 was called to active duty as a logistics officer at Ft. Buerhring,Kuwait where he served until October 2005 when he was promoted to Major. In December 2007 he was re-activated to the Multi National Security Transition Command-Iraq-Logistics/Operations (MNSTC-I/J3) and arrived in the Green Zone in January 2008.Major Stuart Wolfer by the Tigris River, Baghdad, Iraq 2008.While serving in the Green Zone Stuart was an active member of B’nai Baghdad (a Jewish lay led minyan);a liaison to the Iraqi Jewish Community; a participant in the Green Zone Council—Iraqi Boy/Girl Scout Troop and a member of the cricket team amongst the multi-nationals of the Green Zone. On April 6, 2008, while working out in the Fitness Center Stuart was killed along with another officer and 17 other soldiers were wounded from an incoming mortar attack.His brother-in-law John Nerenberg said it best. “We are only failing him if we let his message, his love for all people and commitment to change for peace, be silenced with the end of his life.” May you consider the enormity of Stuart and his contributions; and take away with you a motivation to make at least one change in your life, your community, or humanity at large. This will be Stuart’s legacy.'Major Wolfer being honored at the head of the table during the Seder at Camp Bondsteel, Kosovo 2016.Like all of you … they knew what they were leaving behind when they deployed, but they came to perform a mission that they believed in,' said Iraqi Training and Advisory Mission Director Maj. Gen. Richard J. Rowe Jr., before the run. 'These things are important for us to remember … There is only one true way to honor these fallen heroes, and that is to succeed.'After the run, Rowe asked the participants to continue to honor the colonel and major by completing the mission for which they gave their lives. 'We must build an Iraqi security force that can stand on its own as we leave,' he said."),
    ArtifactArticlesData(
        "assets/images/moritz-morris.jpg",
        "LT Moritz Morris the First Black Jewish Officer",
        "Moritz Morris",
        "First Black Jewish Officer",
        "The first (and probably only) Black Jewish officer in the Confederate States Army is such an amazing story that it is equally amazing that the story is not well known. If that was the only amazing aspect to the story of Moritz (or Morris) W. Morris it would suffice, but wait, it gets better. Lieutenant Moritz Morris was also the first (and probably only) Black Jewish officer in the Union Army! Lieutenant Moritz Morris was the first Black Jewish officer in both the Confederate States and union armies. He does have some acclaim but it is not for this amazingly rare piece of Jewish American military history. After he changed his name to Lewis Morrison he is known for a very successful acting career.\n\nMoritz Morris was born in Kingston, Jamaica on September 4, 1845 to a father of English decent and a mother of Spanish descent. His father’s business took them back to England at a young age. His mother moved with him to Brooklyn in 1855 to stay with her brother where he was raised.\n\nAt the start of the Civil War Moritz Morris joined the 1st Louisiana Native Guard (CSA) as a Lieutenant. In January 1862 the Louisiana State Legislature passed a law stating only “...free white males capable of bearing arms… ” which forced the unit to be disbanded, initially in February and finally in April. In September 1862, about ten percent of the unit including Lieutenant Morris joined the Union’s 1st Louisiana Native Guard which later became the 73rd Regiment Infantry of the United States Colored Troops.\n\nAfter the war Moritz changed his name and started acting in New Orleans. Now known as Lewis Morrison he moved to San Francisco in 1874, toured the world, and was best known for his role as Mephistopheles in the play Faust. He played this role from the opening in New York in 1889 until his death on August 18, 1906 from complication of a stomach surgery.\n\nMoritz Morris is best known as the actor Lewis Morrison. His granddaughters Constance, Barbara, and Joan Bennett were successful actors and his great-grandson Morton Downey Jr. had some success as a television talk show host. Most might know him from his and his family’s acting success. He should be known for his truly amazing claim of being the only black Jewish Confederate officer and the only black Jewish Union officer.\n\n"),
    ArtifactArticlesData(
        "assets/images/mordecai_sheftall.jpg",
        "Colonel Mordecai Sheftall",
        "Colonel Mordecai Sheftall",
        "American Revolution",
        "Colonel Mordecai Sheftall was the highest-ranking Jewish officer in the American Revolution. Mordecai Sheftall of Savannah, Georgia was the chairman of the patriotic committee which opposed British rule. Sheftall was appointed commissary-general to the troops and was appointed Colonel in the Continental Army. He helped finance the cause of liberty and participated in the defense of Savannah where he along with his son where captured. An observant Jew he refused to eat pork as a prisoner aboard the prison ship Nancy. His captors smeared his eating utensils in pig grease to torment him further. He was released, captured again, and exiled to Antigua before making his way back to New York and Philadelphia where he stayed until returning to Savannah in 1782.David Salisbury Franks and Solomon Bush were the only two Lieutenant Colonels in the continental Army. Mordecai Sheftall’s son Moses married Solomon Bush’s sister Nelly."),
    ArtifactArticlesData(
        "assets/images/abraham_charles_myers.jpg",
        "Colonel Abraham Charles Myers",
        "Colonel Abraham Charles Myers",
        "American Revolution",
        "Colonel Abraham Charles Myers was the son of Abraham Myers who fought in the Revolutionary War in the South Carolina Militia. Abraham Charles Myers was an 1833 graduate of West Point. During the Seminole Wars and Mexican-American War he rose through the quartermaster ranks.During the Civil War he served as the Quartermaster General of the Confederate States Army as one of the highest-ranking Jews in the confederacy. He led the largest Confederate Supply bureau from offices in Richmond, Virginia. In the year days of the war, Myers was known for his competence, integrity, and running an efficient operation.As the war dragged on his department came under criticism as the South could not obtain supplies to outfit the Army. Despite this he was well regarded among his colleagues and contemporaries and was nominated for the rank of Brigadier General. 76 members of the Confederate Congress signed a letter recommending the promotion but Jefferson Davis fired him on August 7, 1863 and replaced him with his friend. There was much controversy with the move which came close to causing a constitutional crisis in January of 1864 but by February the congress voted to install Davis’ pick. General Lee wrote that from Chancellorsville in May 1863 on his army was never adequately supplied and experienced several problems due to the lack of supplies.Fort Myers, Florida was named for Colonel Myers when the fort was built in 1850. Colonel Myers was the quartermaster for the Army\'s Department of Florid at that time during the Seminole Wars. His son, John Twiggs Myers, was the third generation of the family to serve and he became a Lieutenant General in the US Marine Corps. "),
    ArtifactArticlesData(
        "assets/images/the_california_column.jpg",
        "California column",
        "California column",
        "American Civil war",
        "In 1862, a force of 1,500 men from ten companies of the 1st California Infantry, five companies of the First California Cavalry,one company of the Second California Cavalry and Light Battery A of the Third U.S. Artillery marched from Southern California to as far East as El Paso,Texas. Prior to the march in September 1861, the 1ST California Infantry moved from Northern California to Southern California to stave of threats from Secessionists.The Southern California regular units needed reinforcement so they could depart for New York. On April 17, 1862 the 1st California Infantry departed camps near present day Los Angelesto head to the New Mexico Territory to repel Confederate forces who moved in from Texas. The column was augmented the 5th California Infantry bringing the total men to 2,350. Of thosemen there were several Jewish Americans. One officer when speaking of the loyalty and gallantly displayed by Solomon Davidson a Jew of the 1st Cavalry said, “Personally I know severalHebrews who served in the California Regiments known as the ‘California Column’…they were all good, faithful Soldiers to the flag they enlisted to defend.”"),
    ArtifactArticlesData(
        "assets/images/mordecai_myers.jpg",
        "The Sons of Jewish Patriots",
        "The Sons of Jewish Patriots",
        "The War of 1812",
        "The War of 1812 receives short shrift in comparison to our nation’s other engagements in education curriculum and in our collective memories. For that reason, it might be thought of as the sequel to the American Revolution where Britain came back to burn down Washington in revenge. The War of 1812 just a few decades on from the American Revolution is an interesting war because the sons of the revolutionaries took up arms against the same enemy. This war just like the American Revolution is rich in Jewish patriot involvement.Commodore Uriah Phillips Levy is by far the most known Jewish American in service during the War of 1812. As with all of America’s wars, many Jews served in that war with well-documented contemporaneous accounts of bravery and distinction. Many families had multiple members take up arms against the British with several brothers fighting, the Seixas and Gratz families prominent among them.Samspon Simpson one of the founders of Mt. Sinai Hospital in New York served as a Captain. Samuel Noah, an 1807 graduate of West Point, was a First Lieutenant who resigned his commission in 1811. Once war was declared, Simpson rejoined as a private and served in the defense of Brooklyn and through the end of the war. Jews served as privates, corporals, sergeants, and officers of all ranks one of the most prominent was Colonel Nathan Myers. Quite a few volunteers came from Pennsylvania.Solomon Etting was a prominent businessman in Baltimore. During the War of 1812 he was instrumental in the defense of Baltimore. His son Samuel was wounded at the battle at Fort McHenry.Many served with distinction like Captain Mordecai Myers of the 13th US Infantry who bravely saved lives and property at Sacketts Harbor and at the Battle of Chrysler’s Farm where he was severely wounded."),
    ArtifactArticlesData(
        "assets/images/frances_slanger.jpg",
        "Second Lieutenant Frances Slanger",
        "Second Lieutenant Frances Slanger",
        "World war 2",
        "Second Lieutenant Frances Slanger (1913-October 21, 1944) was one of only four nurses who went ashore at Normandy on June 10, 1944 four days after D-DAY. On 21 October 1944,in Elsenborn, Belgium while assigned to the 45th Field Hospital she became the only American nurse killed by enemy fire in the European Theater when she was killed by shrapnel from German artillery. Frances Y. Slanger was born Friedel Yachet Schlanger in Łódź, Poland in 1913. In 1920, she moved with her family to Roxbury, Massachusetts. After high school she enrolled in the Boston City HospitalSchool of Nursing graduating in 1937. She worked in local a hospital until joining the Army Nurse Corps in 1943. She was initially sent to Fort Devens, Massachusetts and then with persistence was assignedto the 45th Field Hospital. She was known for her kind care of her patients and cool-headedness. She gained some notoriety posthumously when, the Stars and Stripes published a letter she wrote describingtheir living conditions and how they cared for the Soldiers."),
    ArtifactArticlesData(
        "assets/images/mickey_marcus.jpg",
        "Colonel Mickey Marcus",
        "Colonel Mickey Marcus",
        "Arab-Israeli War ",
        "Colonel David Daniel 'Mickey' Marcus (22 February 1901 – 10 June 1948) is the only American interned at West Point who died fighting for another country. Although Marcus made considerable contributions to the war effort during World War II and what came after he is most famous for his involvement in the 1948 Arab-Israeli War and becoming Israel\'s first general. Marcus was one of the approximate 4,000 overseas volunteers who fought with the Israelis in 1948 who are called Machal in Israel. Marcus was played by Kirk Douglas in the 1966 film Cast A Giant Shadow.Marcus was born to immigrant parents from Romania on Manhattan’s Lower East Side in 1901. He was accepted to West Point in 1920 and graduated with the class of 1924. He then attended law school after his active duty obligation but remained in the reserves. In the 1930s he served as an Assistant United States Attorney in New York prosecuting gangsters. In 1939 he joined the National Guard’s 27th Division as the Judge Advocate. In 1940, he was appointed as the Commissioner of the New York City Department of Correction.After the attack on Pearl Harbor the 27th Division was sent to Hawaii. Marcus wanted to command troops in the field but as an officer in the Judge Advocate General\'s Corps and probably because of his civilian experience he was sent to Washington to plan for occupation governments, to accompany delegates at international conferences, and help draft the terms of Italy’s surrender.In May 1944, Marcus made his way to England and used his status as a West Point graduate to parachute into Normandy with the 101st without and parachute training. He took charge of some unorganized troops and fought for a week until he was sent home. Following Germany’s surrender, he served on General Clay’s staff in the occupation and was later assigned as the chief of the War Crimes division. In 1947 David Ben-Gurion asked him to find an American military advisor for Israel and by January of 1948 he was in Israel under an assumed name.Marcus used US Military doctrine to train and structure the Haganah which would later become the Israel Defense Forces. On May 28, 1948, Marcus was appointed as a General and given command of the Jerusalem front. He participated in planning for Operation Bin Nun Bet and Operation Yoram as well as built the 'Burma Road to Jerusalem' which broke the siege on Jerusalem the same day he died. Marcus was shot at 4am by an 18 year old sentry when challenged for the password. His body was returned to the States for burial at West Point."),
    ArtifactArticlesData(
        "assets/images/sam_sachs.jpg",
        "LTC(R)Sam Sachs",
        "LTC(R)Sam Sachs",
        "World war 2",
        "76 years ago as the company commander of the logistical company of the 325th Glider Infantry, 82nd Airborne Division, Sam Sachs was towed in to Normandy from England.He was in a glider with eight other Soldiers loaded to capacity with ammunition and weapons. Their mission was to land behind enemy lines and to destroy German defenses. This action would assistthe allied invasion of Normandy code-named Operation Overlord, which had been going on for a day.Sachs was born in Grand Forks, North Dakota on April 26, 1915. He wanted to do something with his life so joined the North Dakota National Guard while in college.In 1936 he earned a business administration degree from the University of North Dakota and received his commission into the Army through ROTC. He served in the U.S.,through Africa, and Italy before being sent to England to prepare for D-Day. Operation Overlord in Normandy was not Sachs’ only combat glider operation. He also conducteda combat glider operation in Operation Market Garden in Holland. He was discharged from the active Army at age 30 in 1945 but continued to serve in the Reserves after World WarII retiring after 32 years of service. "),
    ArtifactArticlesData(
        "assets/images/francis_salvador.jpg",
        "Francis Salvador",
        "Francis Salvador",
        "American Revolution",
        "The Jews of the South during the American Revolution proved conclusively, not only that Jews were staunch patriots but also that they were willing to shed their blood as well as risk their fortunes in their country\'s cause.” Leon Hühner in FRANCIS SALVADOR, A Prominent Patriot of the Revolutionary War 244 years ago today Francis Salvador became the first Jew to give his life for the cause of American Independence. Unfortunately he was not the last Jew to fall defending our great nation.On January 11, 1775, Francis Salvador (1747-1776) became the first Jewish person to hold an elected office in the Americas when he started his service on the South Carolina Provincial Congress. He was the only Jew to serve in the continental congress. Francis’ family was prominent in the East India Company and bought land in South Carolina. In 1773 Francis moved to the family’s South Carolina property to establish himself in the colonies.Salvador was a fierce supporter of independence which and headed committees pushing towards those ends. As the British were trying to convince the Cherokee to attack the colonists Salvador worked to keep the peace. Salvador earned the moniker the Paul Revere of the South” when on July 1, 1776 he rode 30 miles to warn the settlements and militia of an impending Cherokee attack.One month later on August 1, 1776 Salvador with Major Andrew Williamson about 300 men were ambushed along the Keowee River by Cherokee and loyalists. Salvador was shot and scalped in the ambush. Major Andrew Williamson found Salvador in a bush and was able to inform Salvador that they had won the engagement. At the age of 29 Francis Salvador became the first Jew known to have died for the cause of American independence. Salvador’s friend William Henry Drayton, who later became the chief justice of the South Carolina Supreme Court said Salvador “sacrificed his life in the service of his adopted country."),
    ArtifactArticlesData(
        "assets/images/moses_jacob_ezekiel.jpg",
        "Moses J Ezekiel\nJewish American Sculptor & Confederate",
        "Moses Jacob Ezekiel",
        "Jewish American Sculptor & Confederate",
        "Moses Jacob Ezekiel (1844-1917), the Jewish American sculptor, rose to fame in late nineteenth century Europe as sculptor of portrait busts, religious sculptures, and memorials. He attended the Royal Academy of Art in Berlin and gained notoriety in Europe securing the backing to set up a studio in Rome. He worked in Rome until his death. He was knighted by Emperor William I of Germany, and Kings Humbert I and Victor Emmanuel II of Italy. Ezekiel sculpted the Confederate Memorial for Arlington National Cemetery which was dedicated in 1914. After his death on March 27, 1917 in Rome he was brought back to the United States. He was buried at the base of the Confederate memorial he sculpted and his burial ceremony on March 31, 1921 was the first funeral to take place in the amphitheater at Arlington National Cemetery.\n\nIn 2017, a national debate raged in the United States surrounding the tearing down of Confederate monuments. The most notorious episode in this debate happened on August 12, 2017 in Charlottesville where one person was murdered and 28 injured when a man ran them over during a counter protest to the Unite the Right rally. The debate raged on and the focus soon turned to the Confederate Memorial sculpted by the proud Southerner and Jewish American Sculptor of Sephardi decent.  Joining the chorus of professors and historians calling for tearing down the memorial were decedents of relatives of Ezekiel.\n\nWhy was a Jewish American sculptor who lived most of his life in Europe buried in Arlington National Cemetery in the Confederate section?  How did he get swept into this national debate in 2017?  The answer is that Moses Jacob Ezekiel was a confederate Soldier during the Civil War.\n\nMoses Jacob Ezekiel was the first Jew to attend Virginia Military Institute (VMI) when he entered on September 17, 1862. In March 1863, the VMI Superintendent in a letter had to obtain permission for Ezekiel’s furlough to return to his family for the 'Feast of Unleavened Bread'. In May of 1863 Ezekiel was corporal of the guard for the funeral of Lt. Gen. Thomas 'Stonewall' Jackson. Ezekiel charged the Union lines as Sergeant of Company C with the other cadets at the Battle of New Market on May 15, 1864. After the Civil War Ezekiel finished his studies at VMI in 1866. He moved to Cincinnati for a short while before moving to Europe where he became the famous sculptor and ex-patriot.\n\n "),
    ArtifactArticlesData(
        "assets/images/simon_shuler.jpg",
        "Simon Shuler\nMedal of Honor Recipient",
        "Simon Shuler",
        "Medal of Honor Recipient",
        "During the Civil War, Simon Shuler enlisted in the 32nd Indiana Regiment also called the First Indiana German Regiment.  Shuler was captured and wounded at Shiloh and while furloughed deserted from this unit. He served as Simon Neustadle, honorably, for the rest of the Civil War in the 11th Heavy Artillery and after in the 4th New York Heavy Artillery.\n\nUnder the assumed name Charles Gardner he served in Company B, 8th Cavalry Regiment as a private. For actions between August 13 and October 31 1868 near the Black Mountains in Arizona, Shuler earned the Medal of Honor for 'bravery in scouts and actions against Indians.' After 12 years in the 8th Cavalry he retired as a sergeant.\n\n\n\nRank and organization: Private, United States Army, Company B, 8th U.S. Cavalry\n\nName Used for Service: Charles Gardner\n\nPlace and date: The Black Mountains, Arizona, August – October 1868\n\nBorn: 1844, Prague, Bavaria, Germany\n\nDied: May 16, 1895, San Antonio, TX\n\nInterment: San Antonio National Cemetery (MH) (I-1610), San Antonio, TX\n\nCitation: Bravery in scouts and actions against Indians "),
    ArtifactArticlesData(
        "assets/images/abraham_cohn.jpg",
        "Abraham Cohn\nMedal of Honor Recipient",
        "Abraham Cohn",
        "Medal of Honor Recipient",
        "Abraham Cohn was the second Jew to receive the Medal of Honor. Cohn’s father was the mayor of Guttentag, Silesia now in present day Poland. He studied Medicine at the University of Berlin before coming to the United States. He joined the 6th New Hampshire Volunteers as a Private on January 5, 1864 and quickly earned the respect of his superior officers for faithful performance of duty, accomplishments, and efficiency. A few months later on March 28, he was promoted to Sergeant Major. Abraham Cohn was awarded the Medal of Honor for two separate acts of gallantry.\n\nOn May 6, 1864 at the Battle of the Wilderness, under heavy fire from Confederate sharpshooters and batteries, Cohn was able to rally fleeing troops from different regiments and reorganize them to hold the position by reforming the line and returning fire. On July 30, 1864 at the mine in the Battle of Petersburg his courage and coolness under fire was recognized by his officers and comrades while carrying orders under heavy fire.\n\n\n\nRank and organization: Sergeant Major, United States Army, 6th New Hampshire Infantry\n\nPlace and date: Wilderness Campaign & at the mine, Petersburg, Virginia, July 30, 1864\n\nBorn: 1832, Guttentag, Silesia, Prussia\n\nDied: June 2, 1897, NEW YORK, NY\n\nInterment: Beth Olam Cemetery, Ridgewood, NY\n\nCitation:\nDuring Battle of the Wilderness rallied and formed, under heavy fire, disorganized and fleeing troops of different regiments. At Petersburg, Va., 30 July 1864, bravely and coolly carried orders to the advanced line under severe fire."),
    ArtifactArticlesData(
        "assets/images/leopold-karpeles.jpg",
        "Leopold Karpeles\nMedal of Honor Recipient",
        "Leopold Karpele",
        "Medal of Honor Recipient",
        "Leopold Karpeles was born on September 9, 1838 in Prague, Czechoslovakia. When he was 12 he joined a brother in Texas who had a business. He would accompany caravans across the Mexican border protecting them from roving bandits and Indians. He went to Springfield, Missouri for business and there enlisted in the 46th Massachusetts Volunteers in September 1862 and was mustered out the following year on July 24, 1863. He reenlisted into the 75th Massachusetts Volunteers and was appointed Color-Sergeant.\n\nOn May 6, 1864 at the Battle of the Wilderness, Karpeles' colors were the only colors remaining on the field in the woods full of fire and smoke in the face of the advancing Confederate forces. General Wadsworth seeing the colors stand resolute rode done the line to rally the retreating troops back to the flag to halt the enemy advance. This resolve in the face of the enemy advance earned him the Medal of Honor.\n\nKarpeles was at over a dozen battles to include Gettysburg, Petersburg, and Spotsylvania. He was wounded several times and once severely from a bursting shell striking him in the leg to cause a permanent limb. He was married with seven children and was a government employee after the war until his death.\n\n\nRank and organization: Sergeant, United States Army, Company E, 57th Massachusetts Infantry\n\nPlace and date: Wilderness Campaign, Virginia, May 6, 1864\n\nBorn: September 8, 1838, Prague, Austria-Hungary\n\nDied: February 2, 1909, Washington, DC\n\nInterment: Hebrew Congregation Cemetery (PM) (348), Washington, DC\n\nCitation:\n\nWhile color bearer, rallied the retreating troops and induced them to check the enemy’s advance.\n\n"),
    ArtifactArticlesData(
        "assets/images/david_urbansky.jpg",
        "David Urbansky\nMedal of Honor Recipient",
        "David Urbansky",
        "Medal of Honor Recipient",
        "Rank and organization: Private, United States Army, Company B 58th Ohio Infantry\n\nPlace and date: Shiloh, Tennessee and Vicksburg, Mississippi, 1862 & 1863\n\nBorn: 1843, Lautenberg, Prussia\n\nDied: January 22, 1897, Miami County, Ohio\n\nInterment: United Jewish Cemetery (MH) (4-146) Cincinnati, Ohio\n\n\nCitation:\n\nGallantry in action\n\n"),
    ArtifactArticlesData(
        "assets/images/benjamin_levy.jpg",
        "Benjamin Levy\nFirst Jewish Medal of Honor Recipient",
        "Benjamin Levy",
        "Medal of Honor Recipient",
        "This is the incredible story of the first Jewish American to receive the Medal of Honor, seventeen-year-old Benjamin Levy.\n\nBenjamin Levy was the first Jewish American awarded the Medal of Honor for actions when he was barely seventeen.  As a sixteen-year-old he enlisted as a drummer boy in Company G, 1st New York Infantry. While his unit was in Newport News, Virginia, he worked as an orderly for General Mansfield. His chief duty was carrying dispatches between General Mansfield and General Wool at Fort Monroe. One day he was carrying his dispatches aboard the steamboat named Express, which was towing a schooner. The Confederate gunboat named Seabird attacked the Express. Benjamin Levy in order to evade capture took his knife and cut the schooner free. The Seabird captured the schooner but the Express was able to get away. Several officers commended him for this action.\n\nLater Levy’s unit was on picket duty to cover the retreat from Richmond. His tent mate was ill with Malaria and was ready to give up when Levy abandoned his drum and took his tent mate’s rifle. At the battle of Charles City Crossroads in Glendale on June 30, 1862, Levy, as the drummer boy, did not need to participate in the fighting but confidently joined the battle. When most of the regiment’s color bearers were killed, Levy grabbed one of the colors. When the last color bearer was shot, he grabbed those colors as well and retreated with colors over each shoulder becoming slightly wounded in the retreat. General Kearney seeing him emerge from the woods with two colors promoted him to Color-Sergeant on the spot. This action was the action that would eventually earn him the Medal of Honor.\n\nLater at the Battle of Malvern Hill, their uniforms were so dusty that Union artillery not being able to distinguish them began firing. Levy’s Colonel ordered him to advance into the field, unfurl the colors so the artillery could tell they were union troops, and stop firing.  Confederate sharpshooters took aim at Levy and struck the flagstaff and Levy’s equipment but Levy miraculously avoided being struck. Levy fought in the various battles with the Army of the Potomac unit mustering out in June 1863.\n\nLevy reenlisted in January 1864 with the 40th New York Volunteers and distinguished himself at the Battle of the Wilderness. In this battle, he was wounded, captured held in primitive conditions for two weeks until they were recaptured. Levy recuperated until nearly the end of the war. Before rejoining his regiment, he was awarded the Medal of Honor on Mach 1, 1865. Numerous officers under whom he served recorded his heroic acts of gallantry in letters.\n\n\nRank and organization: Private, United States Army, Company G, 1st New York Infantry\n\nPlace and date: Glendale, Virginia, June 30, 1862\n\nBorn: February 22, 1845, New York, New York\n\nDied: July 20, 1921, New York, New York\n\nInterment: Cypress Hills Cemetery (Private) (MH) (9-538-170), Brooklyn, NY\n\nCitation:\n\nThis soldier, a drummer boy, took the gun of a sick comrade, went into the fight, and when the color bearers were shot down, carried the colors and saved them from capture.\n\n"),
    ArtifactArticlesData(
        "assets/images/john_levitow.jpg",
        "John Levitow\nMedal of Honor Recipient",
        "John Levitow",
        "Medal of Honor Recipient",
        "Rank & Service: Sergeant, U.S. Air Force \n\nUnit: 3d Special Operations Squadron.\n\nplace and date: Long Binh Army post, Republic of Vietnam, 24 February 1969.\n\nEntered service at: New Haven, Conn. Born: 1 November 1945, Hartford, Conn.\n\nCitation:\n\nFor conspicuous gallantry and intrepidity in action at the risk of his life above and beyond the call of duty. Sgt. Levitow (then A1C), U.S. Air Force, distinguished himself by exceptional heroism while assigned as a loadmaster aboard an AC-47 aircraft flying a night mission in support of Long Binh Army post.Sgt. Levitow\'s aircraft was struck by a hostile mortar round. The resulting explosion ripped a hole 2 feet in diameter through the wing and fragments made over 3,500 holes in the fuselage.\n\nAll occupants of the cargo compartment were wounded and helplessly slammed against the floor and fuselage.The explosion tore an activated flare from the grasp of a crewmember who had been launching flares to provide illumination for Army ground troops engaged in combat. Sgt. Levitow, though stunned by the concussion of the blast and suffering from over 40 fragment wounds in the back and legs, staggered to his feet and turned to assist the man nearest to him who had been knocked down and was bleeding heavily.As he was moving his wounded comrade forward and away from the opened cargo compartment door, he saw the smoking flare ahead of him in the aisle. Realizing the danger involved and completely disregarding his own wounds, Sgt. Levitow started toward the burning flare.\n\nThe aircraft was partially out of control and the flare was rolling wildly from side to side.\n\nSgt. Levitow struggled forward despite the loss of blood from his many wounds and the partial loss of feeling in his right leg.Unable to grasp the rolling flare with his hands, he threw himself bodily upon the burning flare. Hugging the deadly device to his body, he dragged himself back to the rear of the aircraft and hurled the flare through the open cargo door.\n\nAt that instant the flare separated and ignited in the air, but clear of the aircraft. Sgt. Levitow, by his selfless and heroic actions, saved the aircraft and its entire crew from certain death and destruction. Sgt. Levitow\'s gallantry,his profound concern for his fellowmen, at the risk of his life above and beyond the call of duty are in keeping with the highest traditions of the U.S. Air Force and reflect great credit upon himself and the Armed Forces of his country.\n\nAwards:\n\nMedal of Honor\n\nPurple Heart\n\nAir Medal with silver and two bronze oak leaf clusters\n\nAir Force Presidential Unit Citation\n\nAir Force Outstanding Unit Award\n\nAir Force Good Conduct Medal\n\nNational Defense Service Medal\n\nVietnam Service Medal with two bronze service stars\n\nSmall Arms Expert Marksmanship Ribbon\n\nRepublic of Vietnam Gallantry Cross with palm\n\nVietnam Campaign Medal\n\nEnlisted Aircrew Badge"),
    ArtifactArticlesData(
        "assets/images/jack_h_jacobs.jpg",
        "Jack H.Jacobs\nMedal of Honor Recipient",
        "Jack H.Jacobs",
        "Medal of Honor Recipient",
        "Rank & Service: LT, US Army\n\nUnit: 505th Infantry Regiment, 82nd Airborne Division\n\nBorn: August 2, 1945 (age 73) Brooklyn, New York\n\nCitation: \n\nFor conspicuous gallantry and intrepidity in action at the risk of his life above and beyond the call of duty. Capt. Jacobs (then 1st Lt.), Infantry, distinguished himself while serving as assistant battalion advisor, 2d Battalion, 16th Infantry, 9th Infantry Division, Army of the Republic of Vietnam. The 2d Battalion was advancing to contact when it came under intense heavy machine gun and mortar fire from a Viet Cong battalion positioned in well fortified bunkers.\n\nAs the 2d Battalion deployed into attack formation its advance was halted by devastating fire.Capt. Jacobs, with the command element of the lead company, called for and directed air strikes on the enemy positions to facilitate a renewed attack. Due to the intensity of the enemy fire and heavy casualties to the command group, including the company commander, the attack stopped and the friendly troops became disorganized. Although wounded by mortar fragments, Capt. Jacobs assumed command of the allied company, ordered a withdrawal from the exposed position and established a defensive perimeter.\n\nDespite profuse bleeding from head wounds which impaired his vision, Capt. Jacobs,with complete disregard for his safety, returned under intense fire to evacuate a seriously wounded advisor to the safety of a wooded area where he administered lifesaving first aid.\n\nHe then returned through heavy automatic weapons fire to evacuate the wounded company commander. Capt. Jacobs made repeated trips across the fire-swept open rice paddies evacuating wounded and their weapons. On 3 separate occasions, Capt. Jacobs contacted and drove off Viet Cong squads who were searching for allied wounded and weapons, single-handedly killing 3 and wounding several others.\n\nHis gallant actions and extraordinary heroism saved the lives of 1 U.S. advisor and 13 allied soldiers.Through his effort the allied company was restored to an effective fighting unit and prevented defeat of the friendly forces by a strong and determined enemy.\n\nCapt. Jacobs, by his gallantry and bravery in action in the highest traditions of the military service, has reflected great credit upon himself, his unit, and the U.S. Army.\n\nAwards:\n\nMedal of Honor\n\nSilver Star with oak leaf cluster\n\nLegion of Merit\n\nBronze Star Medal with  device and two oak leaf clusters\n\nPurple Heart with oak leaf cluster\n\nMeritorious Service Medal\n\nAir Medal\n\nArmy Commendation Medal\n\nNational Defense Service Medal\n\nVietnam Service Medal with four campaign stars\n\nArmy Service Ribbon\n\nOverseas Service RibbonVietnam Cross of Gallantry with palm\n\nVietnam Staff Service Medal\n\nRepublic of Vietnam Campaign Medal\n\n"),
    ArtifactArticlesData(
        "assets/images/tibor_rubin.jpg",
        "Tibor Rubin\nMedal of Honor Recipient",
        "Tibor Rubin",
        "Medal of Honor Recipient",
        "Rank & Service: Corporal, US Army\n\nUnit: Company I, 8th Cavalry Regiment, First Cavalry Division\n\nBorn: June 18, 1929 Pásztó, Hungary\n\nDied: December 5, 2015 (aged 86) Garden Grove, California\n\nInterment: Mount Saini, Los Angeles, CA\n\nCitation:\n\nFor conspicuous gallantry and intrepidity at the risk of his life above and beyond the call of duty: Corporal Tibor Rubin distinguished himself by extraordinary heroism during the period from July 23, 1950, to April 20, 1953, while serving as a rifleman with Company I, 8th Cavalry Regiment, 1st Cavalry Division in the Republic of Korea. While his unit was retreating to the Pusan Perimeter, Corporal Rubin was assigned to stay behind to keep open the vital Taegu-Pusan Road link used by his withdrawing unit.\n\nDuring the ensuing battle, overwhelming numbers of North Korean troops assaulted a hill defended solely by Corporal Rubin. He inflicted a staggering number of casualties on the attacking force during his personal 24-hour battle, single-handedly slowing the enemy advance and allowing the 8th Cavalry Regiment to complete its withdrawal successfully.\n\nFollowing the breakout from the Pusan Perimeter, the 8th Cavalry Regiment proceeded northward and advanced into North Korea. During the advance, he helped capture several hundred North Korean soldiers. On October 30, 1950, Chinese forces attacked his unit at Unsan, North Korea, during a massive nighttime assault. That night and throughout the next day, he manned a .30 caliber machine gun at the south end of the unit\'s line after three previous gunners became casualties. He continued to man his machine gun until his ammunition was exhausted. His determined stand slowed the pace of the enemy advance in his sector, permitting the remnants of his unit to retreat southward.\n\nAs the battle raged, Corporal Rubin was severely wounded and captured by the Chinese. Choosing to remain in the prison camp despite offers from the Chinese to return him to his native Hungary, Corporal Rubin disregarded his own personal safety and immediately began sneaking out of the camp at night in search of food for his comrades.\n\nBreaking into enemy food storehouses and gardens, he risked certain torture or death if caught. Corporal Rubin provided not only food to the starving Soldiers, but also desperately needed medical care and moral support for the sick and wounded of the POW camp. His brave, selfless efforts were directly attributed to saving the lives of as many as forty of his fellow prisoners. Corporal Rubin\'s gallant actions in close contact with the enemy and unyielding courage and bravery while a prisoner of war are in the highest traditions of military service and reflect great credit upon himself and the United States Army\n\nAwards:\n\nMedal of Honor\n\nPurple Heart with bronze oak leaf cluster\n\nPrisoner of War Medal\n\nArmy of Occupation Medal\n\nNational Defense Service Medal\n\nKorean Service Medal with four bronze campaign stars\n\nUnited Nations Korea Medal\n\nKorean War Service Medal\n\nRepublic of Korea Presidential Unit Citation (Army Version) \n\nCombat Infantryman Badge\n\n"),
    ArtifactArticlesData(
        "assets/images/leonard-m-kravitz.jpg",
        "Leonard M. Kravitz\nMedal of Honor Recipient",
        "Leonard M. Kravitz",
        "Medal of Honor Recipient",
        "Rank & Service: Private First Class, US Army\n\nUnit: 3rd Battalion, 5th Infantry Regiment, 24th Infantry Division\n\nBorn: August 8, 1931 Brooklyn, New York, U.S.\n\nDied: March 7, 1951 (aged 19) Yangpyong, South Korea\n\nInterment: Mount Carmel Cemetery Queens, New York\n\nCitation:\n\nPrivate First Class Leonard M. Kravitz distinguished himself by acts of gallantry and intrepidity above and beyond the call of duty while serving as an assistant machinegunner with Company M, 5th Infantry Regiment, 24th Infantry Division during combat operations against an armed enemy in Yangpyong, Korea on March 6 and 7, 1951. After friendly elements had repulsed two probing attacks, the enemy launched a fanatical banzai charge with heavy supporting fire and, despite staggering losses, pressed the assault with ruthless determination. When the machinegunner was wounded in the initial phase of the action, Private First Class Kravitz immediately seized the weapon and poured devastating fire into the ranks of the onrushing assailants. The enemy effected and exploited a breach on the left flank, rendering the friendly positions untenable. Upon order to withdraw, Private First Class Kravitz voluntarily remained to provide protective fire for the retiring elements. Detecting enemy troops moving toward friendly positions, Private First Class Kravitz swept the hostile soldiers with deadly, accurate fire, killing the entire group. His destructive retaliation caused the enemy to concentrate vicious fire on his position and enabled the friendly elements to withdraw. Later, after friendly troops had returned, Private First Class Kravitz was found dead behind the gun he had so heroically manned, surrounded by numerous enemy dead. Private First Class Kravitz's extraordinary heroism and selflessness at the cost of his own life, above and beyond the call of duty, are in keeping with the highest traditions of military service and reflect great credit upon himself, his unit and the United States Army.\n\nAwards:\n\nMedal of Honor\n\nPurple Heart\n\nNational Defense Service Medal\n\nKorean Service Medal with bronze campaign star\n\nUnited Nations Korea Medal\n\nKorean War Service Medal\n\nRepublic of Korea Presidential Unit Citation\n\nCombat Infantryman Badge\n\n"),
    ArtifactArticlesData(
        "assets/images/raymond-zussman.jpg",
        "Raymond Zussman\nMedal of Honor Recipient",
        "Raymond Zussman",
        "Medal of Honor Recipient",
        "Raymond Zussman was born on July 23, 1917 in Hamtramck, Michigan to Nathan Zussman and Rebecca Leah Zussman. Raymond Zussman had seven siblings, with his mom being a stay at home wife and his father ran a shoe shop. Zussman as boy sang in his synagogue’s choir but was ridiculed for his height. Raymond was a graduate of Durfey Intermediate and of Central High School of Detroit. He played basketball, tennis, and track, but he would have loved to play football but because of his size, he couldn\'t make the high school team.After graduating from high school, Zussman joined Local Union #337 in Detroit, eventually rising to the position of shop steward at his place of employment.\n\nAt this time his mother would pass away in 1938.Zussman spent one year of college at Wayne State University and also took night classes in metallurgy. Ray’s father had served in the Russo-Japanese War and his brother Abraham served in the World War 1 with the US Army,were he was wounded in the Meuse Argonne.The Navy rejected Zussman for being too short, but In September 1941, Zussman finally was accepted into the US Army. Raymond was 24 years old when he entered the Army on September 24, 1941 at 5’4,140 lbs.\n\n He first went to Fort Sill, Oklahoma, for basic training, and later to Fort Knox, Kentucky, where he attended classes for Armored Officers School, from which he graduated as a Second Lieutenant on January 9, 1943.He served as a tank instructor for the next 5 months before he shipped to North Africa in June 1943.\n\n Raymond was 24 years old when he entered the Army on September 24, 1941 at 5’4, 140 lbs. He first went to Fort Sill, Oklahoma, for basic training, and later to Fort Knox, Kentucky, where he attended classes for Armored Officers School, from which he graduated as a Second Lieutenant on January 9, 1943. He served as a tank instructor for the next 5 months before he shipped to North Africa in June 1943.\n\nThe 756th Tank Battalion was activated as a light tank battalion on June 1st 1941. The battalion received training at Fort Lewis as part of the IX Corps. It first joined the 3rd Infantry Division at Fort Ord, California for amphibious training on August 4th, 1942 before moving to New Jersey to prepare for its participation in the invasion of North Africa. Companies A and C of the 756th landed with the 3rd Infantry Division at Fedala, one of the first beachheads during Operation Torch in November 1942. On May 7, 1943 the 756th was relieved.\n\nIn June 1943 Lt. Zussman would arrived to the 756th Tank Battalion and was attached to Company A. On September 17, 1943, the 756th would see its first action at Pasteum Italy, just south of Naples. After numerous combat missions, the unit was re-designated from 756th Tank Battalion [L] to 756th Tank Battalion by G.O. No. 107 on December 15, 1943. The 756th saw action across the Rapido River in January of 1944, and would be one of the first units to enter the Monte Cassino Area. This is where Lt. Zussman was wounded.\n\n After being treated for his wounds he was assigned as a general’s aide.Lamenting, he requested to join a front-line unit before they shipped off to southern France. Between May 11th and June 10th, the battalion saw constant action and participated in every phase with the drive on Rome.It wasn’t relieved until 6 days after the fall of Rome. Except for two brief moments the 756th would remain attached to the 3rd Infantry Division until the end of the war. The battalion next supported the 3rd ID in Operation Dragoon, the Allied invasion of Southern France on 15 August 1944. In September of 1944, the 756th was helping the 3rd ID drive into the Rhône Valley.This is where Lt. Zussman in Eastern France for his actions would posthumously receive the Congressional Medal of Honor.\n\n Lt. Raymond Zussman was killed in action by a German mortar round on September 21, 1944 in Raddon, France, just 9 days after his heroic actions. He was 27 years old. Raymond’s brother died a week later in a VA Hospital at the age of 51. His father passed away in 1949. Raymond Zussman did not marry. Zussman wrote in his final letter home, Not much to tell except we are doing quite a lot of fighting and very little resting. I\'ve been pretty tired and so have my men.We\'re going to try to end this war soon because we\'d like to get back to our people [families]."
            "\n\nLt. Zussman is buried at Machpelah Cemetery in Ferndale, Oakland County, Michigan in Section 6 Row 15 Lot 17.\n\nCitation:\n\nGeneral Order No. 42 Dated 24th May, 1945\n\nThe President of the United States of America, in the name of Congress, takes pride in presenting the Medal of Honor (Posthumously) to Second Lieutenant Raymond Zussman, United States Army, for conspicuous gallantry and intrepidity in action above and beyond the call of duty while serving with Company A, 756th Tank Battalion, 3d Infantry Division. On 12 September 1944, Second Lieutenant Zussman was in command of two tanks operating with an infantry company in the attack on enemy forces occupying the town of Noroy le Bourg, France. At 7 p.m.,his command tank bogged down. \n\nThroughout the ensuing action, armed only with a carbine, he reconnoitered alone on foot far in advance of his remaining tank and the infantry. Returning only from time to time to designate targets, he directed the action of the tank and turned over to the infantry the numerous German soldiers he had caused to surrender. He located a road block and directed his tanks to destroy it. Fully exposed to fire from enemy positions only 50 yards distant, he stood by his tank directing its fire. Three Germans were killed and eight surrendered. Again he walked before his tank,leading it against an enemy-held group of houses, machinegun and small arms fire kicking up dust at his feet. The tank fire broke the resistance and 20 enemy surrendered. Going forward again alone he passed an enemy-occupied house from which Germans fired on him and threw grenades in his path. After a brief fire fight, he signaled his tank to come up and fire on the house. Eleven German soldiers were killed and 15 surrendered. Going on alone, he disappeared around a street corner. The fire of his carbine could be heard and in a few minutes he reappeared driving 30 prisoners before him. Under Second Lieutenant Zussman\'s heroic and inspiring leadership,18 enemy soldiers were killed and 92 captured.\n\nRank & Service: Second Lieutenant, US Army\n\nUnit: 756th Tank Battalion\n\nBorn: July 23, 1917 Hamtramck, Michigan\n\nDied: September 21, 1944 (aged 27) France\n\nPlace of burial: Machpelah Cemetery, Ferndale, Michigan\n\nAwards: \n\nMedal of Honor\n\nPurple Heart\n\nArmy Good Conduct Medal\n\nAmerican Defense Service Medal\n\nAmerican Campaign Medal\n\nEuropean-African-Middle Eastern Campaign Medal\n\nWorld War II Victory Medal\n\n "),
    ArtifactArticlesData(
        "assets/images/ben-l-salomon.jpg",
        "Ben L. Salomon\nMedal of Honor Recipient",
        "Ben L. Salomon",
        "Medal of Honor Recipient",
        "Born: September 1, 1914 Milwaukee, Wisconsin\n\nDied: July 7, 1944 (aged 29) Saipan, South Pacific Mandate\n\nRank & Service: Captain, U.S. Army\n\nUnit: 2nd Battalion, 105th Infantry Regiment, 27th Infantry Division\n\nInterment: Forest Lawn Memorial Park Glendale, California\n\nCitation:\n\nCaptain Ben L. Salomon was serving at Saipan, in the Marianas Islands on July 7, 1944, as the Surgeon for the 2nd Battalion, 105th Infantry Regiment, 27th Infantry Division. The Regiment’s 1st and 2d Battalions were attacked by an overwhelming force estimated between 3,000 and 5,000 Japanese soldiers.\n\nIt was one of the largest attacks attempted in the Pacific Theater during World War II. Although both units fought furiously, the enemy soon penetrated the Battalions’ combined perimeter and inflicted overwhelming casualties. In the first minutes of the attack, approximately 30 wounded soldiers walked, crawled, or were carried into Captain Salomon’s aid station, and the small tent soon filled with wounded men.\n\nAs the perimeter began to be overrun, it became increasingly difficult for Captain Salomon to work on the wounded. He then saw a Japanese soldier bayoneting one of the wounded soldiers lying near the tent. Firing from a squatting position, Captain Salomon quickly killed the enemy soldier. Then, as he turned his attention back to the wounded, two more Japanese soldiers appeared in the front entrance of the tent.\n\nAs these enemy soldiers were killed, four more crawled under the tent walls. Rushing them, Captain Salomon kicked the knife out of the hand of one, shot another, and bayoneted a third. Captain Salomon butted the fourth enemy soldier in the stomach and a wounded comrade then shot and killed the enemy soldier. Realizing the gravity of the situation, Captain Salomon ordered the wounded to make their way as best they could back to the regimental aid station, while he attempted to hold off the enemy until they were clear.\n\nCaptain Salomon then grabbed a rifle from one of the wounded and rushed out of the tent. After four men were killed while manning a machine gun, Captain Salomon took control of it. When his body was later found, 98 dead enemy soldiers were piled in front of his position. Captain Salomon’s extraordinary heroism and devotion to duty are in keeping with the highest traditions of military service and reflect great credit upon himself, his unit, and the United States Army.\n\nAwards:\n\nMedal of Honor\n\nPurple Heart\n\nAmerican Defense Service Medal\n\nAmerican Campaign Medal\n\nAsiatic-Pacific Campaign Medal with one campaign star\n\nWorld War II Victory Medal"),
    ArtifactArticlesData(
        "assets/images/isadore-s-jachman.jpg",
        "Isadore S.Jachman\nMedal of Honor Recipient",
        "Isadore S.Jachman",
        "Medal of Honor Recipient",
        "Rank & Service: Staff Sergeant, U.S. Army\n\nUnit: Company B, 513th Parachute Infantry Regiment, 17th Airborne Division\n\nPlace and date: At Grand-Pre, France, October 26, 1918.\n\nBorn: December 14, 1922, Berlin, Germany\n\nDied: January 4, 1945 (aged 22) Belgium\n\nInterment: Adahs Israel Congregation Cemetery Dundalk, Maryland\n\nCitation:\n\nSergeant Jachman, Company B, 513th Parachute Infantry Regiment and his company were pinned down by enemy artillery, mortar, small arms fire and two hostile tanks that attacked the unit, inflicting heavy casualties. Sergeant Jachman left his place of cover, dashed across open ground, through a hail of fire and grabbed a bazooka from a fallen comrade. He then advanced on the tanks, which concentrated their fire on him. Firing his weapon, he damaged one and forced both of them to retire.\n\nAwards:\n\nMedal of Honor\n\nDistinguished Service Cross\n\nBronze Star\n\nPurple Heart "),
    ArtifactArticlesData(
        "assets/images/william-sawelson.jpg",
        "William Sawelson\nMedal of Honor Recipient",
        "William Sawelson",
        "Medal of Honor Recipient",
        "Rank & Service: Sergeant, U.S. Army\n\nUnit: Company M, 312th Infantry, 78th Division.\n\nPlace and date: At Grand-Pre, France, October 26, 1918.\n\nEntered service at: Harrison, N.J.\n\nBorn: August 5, 1895, Newark, N.J.\n\nDied: October 26, 1918 (aged 23) Grandpré, France\n\nInterment: Meuse-Argonne American Cemetery and Memorial Romagne Meuse, France\n\nGeneral Orders No.16, War Department, January 22, 1919.\n\nCitation:\n\nHearing a wounded man in a shell hole some distance away calling for water, Sgt. Sawelson, upon his own initiative, left shelter and crawled through heavy machine gun fire to where the man lay, giving him what water he had in his canteen. He then went back to his own shell hole, obtained more water, and was returning to the wounded man when he was killed by a machine gun bullet.\n\nAwards:\n\nMedal of Honor"),
    ArtifactArticlesData(
        "assets/images/william-shermin.jpg",
        "William Shemin\nMedal of Honor Recipient",
        "William Shemin",
        "Medal of Honor Recipient",
        "Rank & Service: Sergeant, U.S. Army\n\nUnit: Company G, 47th Infantry Regiment, 4th Inf. Div.\n\nPlace and date: On the Vesle River, near Bazoches, France from August 7–9, 1918.\n\nBorn: October 14, 1896 Bayonne, New Jersey\n\nDied: August 15, 1973 (aged 76) New York City\n\nInterment: Baron Hirsch Cemetery\n\nCitation:\n\nSergeant Shemin distinguished himself by acts of gallantry and intrepidity above and beyond the call of duty while serving as a Rifleman with G Company, 2d Battalion, 47th Infantry Regiment, 4th Division, American Expeditionary Forces, in connection with combat operations against an armed enemy on the Vesle River, near Bazoches, France from August 7 to August 9, 1918. Sergeant Shemin left cover and crossed open space, repeatedly exposing himself to heavy machine-gun and rifle fire, to rescue wounded. After Officers and Senior Noncommissioned Officers had become casualties, Sergeant Shemin took command of the platoon and displayed great initiative under fire until wounded on August 9.\n\nSergeant Shemin\'s extraordinary heroism and selflessness, above and beyond the call of duty, are in keeping with the highest traditions of the military service and reflect great credit upon himself, his unit, and the United States Army.\n\nAwards:\n\nMedal of Honor\n\nPurple Heart\n\nWorld War I Victory Medal w/two bronze service stars to denote credit for the Aisne-Marne and Defensive Sector battle clasps\n\nArmy of Occupation of Germany Medal\n\n"),
    ArtifactArticlesData(
        "assets/images/benjamin-kaufman.jpg",
        "Benjamin Kaufman\nMedal of Honor Recipient",
        "Benjamin Kaufman",
        "Medal of Honor Recipient",
        "Rank and organization: First Sergeant, U.S. Army, Company K, 308th Infantry, 77th Division.\n\nPlace and date: In the Forest of Argonne, France, October 4, 1918. \n\nEntered service at: Brooklyn, New York\n\nBorn: March 10, 1894, Buffalo, New York\n\nDied: February 5, 1981 (aged 86); Mercer Medical Center in Trenton, New Jersey\n\nGeneral Orders: War Department, General Orders No. 50 (April 12, 1919)\n\nCitation:\n\nHe took out a patrol for the purpose of attacking an enemy machine gun which had checked the advance of his company. Before reaching the gun he became separated from his patrol and a machine gun bullet shattered his right arm. Without hesitation he advanced on the gun alone, throwing grenades with his left hand and charging with an empty pistol, taking one prisoner and scattering the crew, bringing the gun and prisoner back to the first-aid station.\n\nAwards:\n\nMedal of Honor\n\nPurple Heart\n\nWorld War I Victory Medal w/three bronze service stars to denote credit for the Oise-Aisne, Meuse-Argonne and Defensive Sector battle clasps.\n\nMédaille militaire (French Republic)\n\nCroix de guerre 1914–1918 w/bronze palm (French Republic)\n\nCroce al Merito di Guerra (Italy)\n\nMedal for Military Bravery (Kingdom of Montenegro)\n\n"),
    ArtifactArticlesData(
        "assets/images/sydney-g-gumpertz.jpg",
        "Sydney G. Gumpertzn\nMedal of Honor Recipient",
        "Sydney G. Gumpertzn",
        "Medal of Honor Recipient",
        "Rank and organization: First Sergeant, United States Army, Company E, 132d Infantry, 33d Division.\n\nPlace and date: In the Bois-de-Forges, France, September 29, 1918.\n\nEntered service at: Chicago, Illinois.\n\nBorn: October 24, 1879, San Raphael, California.\n\nGeneral Orders No.: 16, War Department, 1919.\n\nResidence at enlistment: 57 East Van Buren Street, Chicago, Illinois.\n\nDied: February 16, 1971\n\nInterment: Long Island National Cemetery\n\nCitation:\n\nWhen the advancing line was held up by machine gun fire, 1st Sgt. Gumpertz left the platoon of which he was in command and started with 2 other soldiers through a heavy barrage toward the machine gun nest. His 2 companions soon became casualties from bursting shells, but 1st Sgt. Gumpertz continued on alone in the face of direct fire from the machine gun, jumped into the nest and silenced the gun, capturing 9 of the crew.\n\nAwards:\n\nMedal of Honor\n\nWorld War I Victory Medal\n\nMédaille militaire (France)\n\nCroix de Guerre with palm (France)"),
    ArtifactArticlesData(
        "assets/images/richard_stern.jpg",
        "Richard Stern",
        "Richard Stern",
        "Life story",
        "The United States has a long and proud history of immigrants serving in its military. In every war from the Revolutionary War to present immigrants, some of whom were not citizens, have served in every conflict. In the earlier conflicts, these were primarily European first generation immigrants but in the past few decades, the first generation immigrants have come from all over the world with Asian, Africa, and South American immigration increases.\n\nJewish first generation immigrants have likewise heeded the call to service in their new nation in appreciation of the freedom and liberty they enjoyed. Richard Stern was such a first generation Jewish immigrant. What makes his story unique is, not only did he serve with valor in the U.S. Army in World War II but he also served in the German Army with valor in World War I.\n\nRichard Stern enlisted in the German Army as a teenager and was awarded the prestigious Iron Cross for his distinguished service during World War I. Later, Hitler would send the Hanseatic Cross to Stern for his war merit not realizing Stern was a Jew. Starting in 1927, Stern looked after his sister Martha and became the legal guardian of her son Rudolf. On April 1, 1933 the day Nazis launched the boycott of Jewish owned businesses, there is a famous image taken of Stern in front of his Cologne bedding store. He is wearing his Iron Cross next to the Nazi guard there to prevent Germans from entering.\n\nStern arrived in the United States as the age of 40 in 1939. He lived in Queens and worked as a bus boy. On October 13, 1942, still not a citizen and at the age of 43 he enlisted in the US Army. Stern served with distinction in the US Army earning the Silver Star for gallantry in action. In January of 1944 on Mount Porchio, Italy under heavy enemy machine gun fire, addressing the enemy in German convinced them to surrender. Stern’s Silver Star is still treasured by his family but Stern’s German medals are nowhere to be found. Family legend has it that Stern melted down his Iron and Hanseatic Crosses to make bullets to he used to fight the Nazis.\n\nRichard Stern's amazing life will be documented in an upcoming book written by his grandson, Rabbi Jack Romberg.\n\n"),
    ArtifactArticlesData(
        "assets/images/jewish_units_in_civil_war.jpg",
        "Jewish Units in the Civil War",
        "Jewish Units",
        "The American Civil War",
        "In 1862, there was a push for Jews to form their own military units in order “to show the country and the world that they appreciate the blessings they have enjoyed in this country.” Local newspapers published letters carrying this message to stoke this sentiment and public support. In the North Chicago and New York formed Jewish units. Jewish communities in the South formed two Jewish companies. There is little known about the companies formed in West Point, Georgia in 1861 and then Macon, Georgia in 1862 for the defense of Savannah.\n\nIn New York’s’ 6th Senatorial District Colonel William Meyer was recruiting to form a regiment called “Perkins Rifles.” His hope was that he would be successful in recruiting enough Jews so it would be a predominately Jewish unit. The local paper the Jewish Record challenged its readers to enlist so he did not have to “be compelled to seek support of men and means from others…” Ultimately Colonel Meyer did not have the support of the community which did not hold war meetings to support his cause.\n\nIn Syracuse and Chicago, there was support that led to success. In Chicago, the Jewish community held a meeting on August 13, 1862 at the Concordia Club to pledge support “to organize and outfit a Jewish Company for the new 82 nd Illinois Regiment.” Speeches were made, resolutions were drafted, money was raised, and men had volunteered. By the end of the week, the community raised 11,000 dollars and had 96 men join Company C of the 82 nd Illinois Regiment commanded by Captain Jacob LaSalle.\n\nIn Syracuse, the Society of Concord Congregation pledged to recruit and equip one company. A war meeting was held on August 24, 1862 that continued for a week with a recruiting office. The rabbi “appealed to his congregation to demonstrate their love for the Union by meeting the goal.” By the end of the week 3,000 dollars had been raised and enough men volunteered to establish the first company in the regiment. After Havdalah, the regimental commander swore in the men and marched them off with a band and cheers from the community.\n\nHistorians estimate that at least 10,000 to as many as 18,000 Jews served in both the Union and Confederate Armies. That equates to 4-5% of the Jewish population at the time. The fact that there were so few Jewish units is not an indication that Jews did not serve. To the contrary, they served in higher numbers in all other units as the majority showed “no desire for a segregated minority status.” Jews served in way higher numbers than their proportion in population percentage. The Anti-Semitic troupe that Jews did not serve in the Civil War prompted the formation of the oldest Veterans organization the Jewish War Veterans of the U.S.A. in 1896.\n\n"),
    ArtifactArticlesData(
        "assets/images/life_and_leadership_from_jewish_command_sergeant_major.jpg",
        "Life and Leadership from a Jewish Command Sergeant Major",
        "Life and Leadership from a Jewish Command Sergeant Major",
        "by CSM Sam Yudin, CA ARNG ",
        "Let’s talk about Purpose, Character, Pride, and Deliberate Action. I want to illustrate these four keys through discussing how being raised Jewish with a sense of purpose and pride prepared me to be successful in the Army, and how Jewish pride in service, as well as connection to each other and our past, are important.\n\nWe’ll start with the past; specifically, an all but unknown military figure from my personal past: my great-great-uncle, who wrote a family memoir that has had a deep impact on me. At the end of 1892, my great-great grandfather, Pesach Isar Geilczynski, was the head of a Yeshiva in Lomza, Poland. One of his sons, Moyshe, was conscripted into the Czar’s Army. My great-great grandfather took Moyshe to go see a great rabbi for a blessing before he shipped off to service in the far off Novogorodsky district of Russia. When the rabbi gave Moyshe his blessing he said cryptically, “Maybe they need Jews there.” In his memoir, Moyshe writes that this comment stayed in his mind long after and was not to be taken lightly.\n\nI believe this comment by the rabbi in Lomza is a beautifully Jewish way to explain our service as Jews. Why did you join the Army? Navy? Marines? Air Force? Coast Guard? Law Enforcement?\n\nMaybe they need Jews there!\n\nWhy do you have to go to Korea? Germany? Kosovo? Kuwait? Iraq? Afghanistan?\n\nMaybe they need Jews there!\n\nWhy did the Rebbe send emissaries to almost every country from A to Z?\n\nMaybe they need Jews there!\n\nThe rabbi was right. They certainly needed Moyshe there, as we are needed where we are sent. And if they need Jews there, they also need a Jewish Chaplain or Lay Leader to advocate for Jewish servicemembers.\n\nDuring a Passover Seder I led in Kosovo in 2016, I described Passover as the quintessential Jewish Holiday for inquisitiveness and love for knowledge and understanding. The Jewish proclivity to inquisitiveness is only trumped by needing to recite pages of prayers; otherwise there would be way more than four questions! But in the military, inquisitiveness and religious accommodation is sometimes seen as a challenge to authority. Having a Jewish chaplain to ask the questions and educate the command saves the service member from alienating leaders, and that’s crucial.\n\nReading Moyshe’s memoir, it appears he acted as a Jewish Chaplain or lay leader during his service. As an advocate for Jewish religious observance and as a stubborn guardian of their dignity, he asked the questions and did the things that needed to be done to advocate for the Jewish troops; things that we all have done and still do.\n\nMoyshe relates that he was always the fastest on the obstacle course and best during maneuvers, and this gave him a level of respect. I have felt this throughout my career as well. Once you have received the confidence in your leaders, you will have the latitude to do many things. We a r e in the people, teamwork, and relationship business. We must create that trust in order to be effective. Once we gain trust, all things are possible regardless of our race, gender, religion, or creed. We must put in the work and not expect anything without giving something.\n\nMoyshe talks about Kashrut. He asks, “Was it permissible to eat the food that we were given or not? No one seemed to pay any attention to that. I did not start to eat treyf right away, but then we joined the brigade. There I understood that it was not going to be such a simple matter.” Here we see that being an exemplary soldier was not always enough. Moyshe said he used various pretexts to maintain his Kosher diet, and for that he needed a little ingenuity, and luck as well: “When it was time to eat, , there were 7 or 8 of us to a bowl. I took the portion of meat that was doled out, just like everyone else, but I had to work very skillfully, as I brought an empty spoon to my mouth with a piece of bread... The more the others had, the better. If someone had enough, he didn’t look around to see who didn’t have. By the time they might have thought of something, I was already in the tea room with kosher salami from Warsaw, goose fat, bread, and tea sweetened with sugar.”\n\nEnter the Sergeant Major, which, given my position, interested me even more. In fact, the Sergeant Major would become an important part of this story; and truth be told, the Sergeant Major or your service equivalent should be an important part of your story. If you haven’t already done so, he or she is already hearing or telling stories about you. You might want to make sure you are helping him or her write them!\n\nBack to Moyshe, he writes, “One time the Sergeant Major came into company quarters at meal time and caught me eating my food. He said: ‘You aren’t eating the Army’s food, Goldinsky?’ My answer was: ‘Absolutely not, Sergeant Major, sir!’” He immediately established a clear and true relationship, and that would have an important impact for Moyshe and his fellow Jewish soldiers.\n\n“Passover was drawing near. It was the law that Jewish Soldiers be given furlough for holidays, the first and the second days but not the intermediary days.” Just a comment - I found this law more progressive than our current policy here in the U.S. 128 years later! In Czarist Russia, the holiday was given off, and in free America, we must request it off! In any case, Moyshe continues with his first act of Jewish advocacy for the group. “We collected 3 rubles from the Jewish Soldiers, and I brought the Sergeant-Major a gift from the Jews in honor of Passover. It was worth it: he let us have the intermediary days off as well! During one of the intermediary days, when the whole company was to go on maneuvers, everyone was lined up in front of their barracks waiting for the lieutenant to come. We were also lined up. Then the Sergeant Major went over to the sergeant and told him that the Jews are on holiday.”\n\nMoyshe does not reveal what the gift was to the Sergeant Major so I apologize that I cannot relate to you what a bribe to the Sergeant Major should be of course, before considering 128 years of inflation and conversion from rubles.\n\nMoyshe also mentions a bit of anti-semitism perhaps and how he handled advocating for all the Jews with courage, leveraging his credibility, and by what has served me well in my career - a whole lot of Chutzpah.\n\n“One day, we were getting ready to meet Czar Alexander the Third and the Crown Prince and the whole routine by parading before them. Suddenly, the Sergeant Major excluded the Jews from this event, because, it appears, he didn’t want them to have this pleasure. The Jews were sent to their barracks or to the kitchen. This annoyed me very much. When the Sergeant-Major came into the barracks, I screwed up my courage and asked him why he had placed the weaker soldiers in the parade and had excluded us. I asked him if he would exclude me from the next day’s maneuvers also.” And of course, Moyshe was allowed to partake in the parade. Moyshe, with chutzpah, when given the opportunity to - as Tevye from Fiddler on the Roof would say, stay far from the Czar, decided he wanted to parade in front of him.\n\nI relate these incredible stories of Moyshe Geilczynski because as you can see they are very relevant to the topics at hand.\n\nA set of Jewish values guide, frame, and inform my thinking and behavior as a leader. You must be an ethical leader. Immanuel Kant in Lectures on Ethics says that acting from intrinsic goodness is ethical. He goes on to say that in ethics, we deal with what we ought to do; not desire to do.\n\nI relate this to the Chabad movement’s push to enthusiastically do mitzvot. This relates to his categorical imperative, which says that you ought to do what is right, regardless of the outcome. It is telling that in describing ethics Kant focuses on the reason for the action and practically ignores the outcome. This view is also what I distilled from attending a Chabad school. Doing the good act in itself without thought to a reward is, as is relayed in Ethics of Our Fathers, important. This means even if it will mean negative consequences or discomfort. This is a constant situation a leader is in, and I argue a leader must have the moral clarity and personal courage to make the hard right over the easy wrong every time.\n\nWhat informs the way you act? How did you develop your character? I am assuming that for all of you it was developed, like me, within the Jewish faith.\n\nPurpose, character, and ethics are central to the Jewish way of life. Codes and creeds are almost compulsory but we live them for the intrinsic goodness of the action. Codes of conduct governed the criteria for a member of the Sanhedrin and governs the conduct of a service member. The purpose, character, and ethics developed in my Jewish faith translate directly to military service.\n\nThere are countless clear examples of lessons in Judaism that directly translate to military success. Payot, Tzitzit, and a Kippah are described as a uniform in the Chabad children’s club, Tzivos Hashem (which I attended as a child), teaching the child to always act in a manner with (military) bearing, not to bring discredit to yourself or G-d, a Chillul Hashem, but instead be a Kiddush Hashem, a sanctification of G-d. I am always more aware of my actions or perceived actions while in uniform or wearing a kippah.\n\nYou can take each Army value or creed such as the NCO Creed and correlate it to many Jewish ethical teachings. There are endless examples of Jewish leadership lessons good and bad in the Torah: Moses leads the Israelites into the wilderness where he hits a rock instead of speaking to it, Jonah runs away from his responsibility, Joseph earns the Pharaoh’s trust through sound advice and is rewarded. There are the Maccabees, good and bad kings, and the list goes on.\n\nJewish leadership is from the ethics of our fathers (both literally and figuratively), having a purpose to act out of intrinsic goodness by being the mensch among men and the light to lead others by example. This speaks to character, purpose and ethics.\n\nI have always had a sense of pride and purpose instilled in me from my Jewish upbringing. As Viktor Frankl puts it in Man’s Search for Meaning, we do not ask what the purpose of life is but life asks us what our purpose in life is. Life throws at us what it will and how we react determines our ethics, character and our purpose. I strive to prepare myself mentally, spiritually, and physically to handle what life asks of me. This strong sense of purpose has allowed me to be an agile and adaptable leader. The leadership landscape is not stable. The surface is ever changing and we must develop and learn skills to remain adaptable problem solvers equipped to handle what comes at us with no ethical lapses or leadership failures. If we do, when life asks us what our purpose in life is we will have a clear, strong, and unwavering answer.\n\nAs you see, “Tradition” is not just a song in Fiddler on the Roof, but allows us to keep our balance as leaders. Tradition is a connection to a long line of proud history and vested interest in the positive outcome for the community. Tradition is what weaves us together in Judaism, for us to keep our “balance” for so many years as Tevye would tell you, and it is just as important in the military weaving warriors together not only in the present but to our history.\n\nAnd that leads us to Jewish pride in service and connection to each other and our past. In a society that is less connected to military service, I have seen a great chasm with the Jewish Community. Since joining the military, I have felt alienated from Jewish communities, whether it was the ones I grew up in or ones across the world where I served. I turned to bonds with fellow Jews in service, but could never figure out how to involve the wider Jewish community.\n\nOne of the strong connections I made was to CPL Tibor Rubin. I did not know of many Jewish American military heroes, because nobody told me about them. Then I heard of Tibor Rubin being awarded the Medal of Honor and found out that my family knew his. Rabbi Engel, my first grade teacher, made the introduction. I used to visit him in the VA weekly and spent hours kibitzing where I learned so much about everything without learning anything at all.\n\nBut there are so many other inspiring stories to be told. There is Lewis Morrison, the first Black-Jewish commissioned officer in both the Confederate (1861) and Union (1861-1865) armies. Richard Stern earned the Iron Cross for Germany in WWI and the Silver Star for the US in WWII, and melted his Iron Cross down to be made into bullets to fight the Nazis. The father of the Navy Nuclear program, Admiral Rickover; the father of the Seabees, Admiral Moreell; father of the Green Berets, Colonel Bank; and so many other stories that needed to be told to Jewish Service members and the Jewish Community. Connections to this history is the tradition we need to keep as Jews and service members.\n\nIn 2018, I was finally successful in having an event at the local JCC which showcased Jewish pride in service and strengthened the bond be twe en Jewish v e t e r a n s a n d t h e J ewis h Community. Since joining the California National Guard, I noticed there was a display of Jewish American Medal of honor Recipients sitting unused in a classroom on base. I was shocked to see it originally in 2010 but even more shocked that it was sitting in the same room for years. It was created and donated by the Jewish War Veterans in 2004, displayed for a short time, and forgotten. In 2 0 1 8 , I be c ame the post commander of the JWV Tibor Rubin Post #786 and reached out to the JCC and fought for 6 months with the bureaucracy on the base and in the state to get authorization to display the exhibit at the JCC. It was an amazing event and enjoyed by all. It made great strides in us veterans being invited back into the community as celebrated members. The display is now traveling around the state being displayed proudly and is prompting discussions on expanding the scope of the exhibit and to highlighting other ethnic groups. Through things like this and organizations like the JWV we stay connected to each other, the community, and our purpose.\n\nIn summation, remember the examples of my great grand uncle, Moyshe Geilczynski on how to be an advocate for Jewish religious observance and as a stubborn guardian of Jewish service members dignity. Involve your senior enlisted in your military story. Make sure to stay connected to each other and the Jewish community as a whole because our connection to history and tradition keeps us balanced. You, as I have been, are prepared for success in your service by our Jewish upbringing. The teachings and directives of the Lubavitcher Rebbe are congruent to success in military service. So to be successful, just be yourself: be Jewish.\n\nhttp://www.aleph-institute.org/downloads/Pesach-Warrior-5780.pdf \n\n"),
    ArtifactArticlesData(
        "assets/images/salomon_brothers.jpg",
        "The Salomon Brothers",
        "The Salomon Brothers",
        "By CSM Sam Yudin, CA ARNG",
        "The United States Military has a long and proud tradition of family members serving together. This phenomenon has taken different shapes over the years. During World War II, when a higher portion of the population served, it was more common for families to send all their sons to war. More recently, fewer of the population shoulders the burden of military service. Yet, some families have a history of service, so there continue to be families that send multiple sons and daughters off to serve.\n\n\nThe Department of Defense started to take notice of the incredible burden of family loss when there were casualties during World War II . Steven Spielberg's 1998 film Saving Private Ryan dramatized this situation . There was no policy to address how to handle multiple casualties in one family until the 1948 Special Separation Policies for Survivorship or, as it is more commonly known, the Sole Survivor Policy. The greatest burden bore by one family was the Sullivans. At the Naval battle of Guadalcanal on November 13, 1942, 687 men were killed in action, including five Sullivan brothers, when the USS Juneau was sunk. The practices of the policy were implemented during World War II and have continued in every war since.\n\nThere is a great Jewish American Military History story to be told about one Jewish family's extraordinary military service. The four Salomon brothers were originally from Ströbeck, Halberstadt, Prussia. As residents of Manitowoc, Wisconsin, all four served during the Civil War. Charles and Frederick were officers, Edward was the Governor of Wisconsin, and Herman was an enlisted man. Their cousin Edward S. Salomon, originally from Schleswig, Prussia and later of Chicago, Illinois, was also a Brigadier General in the Civil War. He eventually became governor of Washington Territory.\n\nBrevet Brigadier General Charles Eberhard Salomon was born on June 24, 1824. In 1861, Charles joined the 5th Missouri Volunteer Infantry as a Captain. Members of the 5th Missouri elected Charles to be promoted to Colonel and command the regiment, which he did at the Battle of Carthage. He was discharged in August of 1861 but rejoined the Army in September of 1862, succeeding his younger brother Fredrick as the commander of the 9th Wisconsin Infantry. He led them at the First Battle of Newtonia, the Battle of Prairie Grove, the Battle of Helena and the Battle of Jenkins' Ferry. On January 13,  1866, President Andrew Johnson nominated Charles for appointment to Brevet Brigadier General of Volunteers with an effective date of March 13, 1865. The United States Senate confirmed the appointment on March 12, 1866.\n\nBrevet Major General Frederick Charles Salomon was born on April 7, 1826. While still in Prussia after high school, he was a government surveyor, an artillery lieutenant in the Prussian Army, and an architect student in Berlin before emigrating to Manitowoc, Wisconsin in 1849. In Wisconsin, he was county register of deeds, and the chief e n g i n e e r with the Manitowoc and Wisconsin Railroad before joining the 5th Missouri Volunteer Infantry as a Captain in 1861. He served at the Battle of Wilson's Creek. Frederick was then appointed Colonel of the 9th Wisconsin Volunteer Infantry Regiment, and joined its 'Indian Expedition.' Frederick was appointed a Brigadier General of volunteers in 1862. From 1862- 1864, as a member of the volunteers, he participated at the First Battle of Newtonia, the Battle of Helena, the Battle of Elkin's Ferry, and the Battle of Jenkins' Ferry. On January 13, 1866, President Andrew Johnson nominated Frederick for appointment to Brevet Major General of Volunteers with an effective date of March 13, 1865. The United States Senate confirmed the appointment on March 12, 1866. Frederick later became the surveyor general of Utah Territory, where he died on March 8, 1897 at the age of 70, and was buried in Salt Lake City.\n\nEdward Salomon was born on August 11, 1828. He attended the University of Berlin and emigrated in 1849. After arriving in Wisconsin, he was a school teacher, surveyor, deputy circuit court clerk. In 1852, he moved to Milwaukee, where he became a lawyer. He won election for Lieutenant Governor in 1861, and in 1862, when Governor Lewis P. Harvey drowned in the Tennessee River while inspecting Wisconsin troops after the Battle of Shiloh, Edward became Wisconsin's 8th Governor, and the first German-born and Jewish governor.\n\nHerman Salomon was born January 1, 1834. He enlisted on September 4, 1861 in Co. I of the First Missouri Volunteer Engineer Regiment and was discharged as a Sergeant at East Point, Georgia on September 28, 1864. He died on September 20, 1881 and is buried in Evergreen Cemetery in Manitowoc, Wisconsin.\n\n"),
    ArtifactArticlesData(
        "assets/images/eddit_jacobson.jpg",
        "Sgt Eddie Jacobson: Led Truman to Recognizing Israel",
        "Sergeant Eddie Jacobson",
        "Led Truman to Recognizing Israel",
        "Sergeant Eddie Jacobson: How a Jewish World War I Veteran Convinced the President of the United States to Recognize Israel\n\nEddie Jacobson befriended Harry S. Truman when both were in their teens working in Kansas City, Missouri. In 1917 they reported together in the same unit, the Battery F 129th Field Artillery, 60th Brigade, 35th Division of the Missouri National Guard, to basic training at Fort Sill, Oklahoma.  Jacobson served as a private and Truman was elected to lieutenant. During their time at Fort Sill, Jacobson clerked and ran a very profitable canteen for Lieutenant Truman. Truman would write to his wife that he had a “Jew Clerk” who was a “firecracker.”\n\nTruman would go on to be promoted to Captain in Battery D while in France. Although 129th would sustain heavy losses in the War, Battery D survived the war without a single casualty. Private Jacobson was slogging through the mud in a supply battery. On September 18, 1918, inside his copy of Readings from the Holy Scriptures for Jewish Soldiers and Sailors, Jacobson wrote “Raining, cold, Hope I never see another Yom Kippur like this. Hiked all night wet through and through.”\n\nAfter the war Truman and Jacobson continued their friendship and business partnership by opening the Truman & Jacobson Haberdashery at 104 West 12th St. in Kansas City, Missouri which sold men’s clothing. The store went bankrupt closing in 1922 after the postwar recession in 1921. The store going bankrupt freed up Truman to engage in politics first winning district judge in 1922, a seat in the Senate in 1934, and selected as Roosevelt’s vice President before succeeding him in 1945.  Jacobson continued as a men’s clothing salesman in Missouri.\n\nIn early 1948, Truman was reluctant to meet with Chaim Weizmann, the leader of the Zionist movement because he had grown tired of the Jewish lobby. Almost the entirety of the Washington establishment including the state department and military including General Marshall was against recognizing Israel based on the affect it would have in the region and it was not in the United States’ national interest.\n\nQUOTE:\n'Before there were position papers, or parlor meetings, or a policy conference, before there was the American Israel Public Affairs Committee (AIPAC), before there was the State of Israel, one man changed the course of history. His name was Eddie Jacobson.` Ron Cohen, President of AIPAC\n\nOn March 13, 1948 Jacobson went to the White House and convinced Truman to meet with Weizmann. A few days later, on March 18, 1948, Truman hosted Weizmann at the White House where Weizmann gave Truman a Torah and Truman pledged the United States support of the State of Israel.  On May 14, 1948 Truman recognized the state of Israel 11 minutes after David Ben-Gurion read Israel’s declaration of independence, making the United States the first nation to do so. The following statement signed by President Harry Truman was issued, 'This government has been informed that a Jewish state has been proclaimed in Palestine, and recognition has been requested by the provisional government thereof. The United States recognizes the provisional government as the de facto authority of the new State of Israel.' The pen used to sign that declaration, a key piece of Israeli history, still resides with Jacobson’s daughter in Tulsa, Oklahoma.\n\nTruman, later, based on some released diary outbursts, was accused of anti-Semitic and disparaging remarks against civil rights protestors. Despite this personal venting, Truman has a record of life long personal and professional relationships with Jews and progress in racial equality with the historic desegregation of the military in 1948.  He was also a champion for the creation of Israel, repatriation of refugees displaced by World War II, and implemented the Marshall Plan.\n\nQUOTE:\n“Today—not tomorrow—we must do all that is humanly possible to provide a haven and place of safety for all those who can be grasped from the hands of the Nazi butchers. Free lands must be opened to them. Their present oppressors must know that they will be held directly accountable for their bloody deeds. To do all of this, we must draw deeply on our tradition of aid to the oppressed, and to our great national generosity. This is not a Jewish problem. It is an American problem—and we must and we will face it squarely and honorably.” -  Harry Truman April 1943 address to crowd in Chicago as Senator\n\nJacobson would introduce Truman as “the man who helped create the State of Israel.” Truman shunned this introduction and instead said he was like Cyrus the king of Persia who defeated the Babylonians and permitted the exiled Jews to return to Jerusalem and rebuild the Temple. What Truman did was that historic and he would later say that recognizing Israel was “one of the proudest days of my life,”\n\nJacobson’s friendship and influence with Truman certainly changed the course of history making the creation of the state of Israel more possible. Truman said of Jacobson, 'He was one of the finest men I ever had anything to do with.' Jacobson's standing and influence with a U.S. President based on his character is astonishing but not unprecedented. George Washington had the Jewish officer Lieutenant Colonel Isaac Franks as his Aide-de-Camp and Major Benjamin Nones on his staff.  Teddy Roosevelt had Jewish Rough Riders he admired who rode and fought with him. These relationships led to those Presidents expressing glowing praise of Jews. What was unprecedented was the essential role a Jewish World War I Sergeant played in the United States recognizing the State of Israel.\n\n"),
  ];

  void setupList() {
    displayData = [
      DisplayData(
          displayPath: "assets/images/collection.jpg",
          casePath: "assets/images/collection_b.JPG",
          artifactPath: "assets/images/collection_c.JPG",
          title: "Introduction",
          pos: CoordPos(latitude: 20, longitude: 16),
          artifactButtonData: [
            ArtifactButtonData(
                pos: Position(left: 1020, top: 350),
                title: "Army MOH Replica",
                desc: mohText,
                tag: 1),
            ArtifactButtonData(
                pos: Position(right: 350, top: 600),
                title: "Navy MOH Replica",
                desc: mohText,
                tag: 2),
            ArtifactButtonData(
                pos: Position(left: 350, top: 600),
                title: "Air Force MOH Replica",
                desc: mohText,
                tag: 3),
          ]),
      DisplayData(
          displayPath: "assets/images/benjamin_title.jpg",
          casePath: "assets/images/benjamin_b.jpg",
          artifactPath: "assets/images/benjamin_c.jpg",
          title: "Benjamin",
          pos: CoordPos(latitude: 20, longitude: 51),
          artifactButtonData: [
            ArtifactButtonData(
                pos: Position(left: 250, top: 250), desc: "Kepi", tag: 1),
            ArtifactButtonData(
                pos: Position(left: 1000, top: 250),
                desc: "Infantry NCO Trousers, Wool White strip",
                tag: 2),
            ArtifactButtonData(
                pos: Position(left: 1000, top: 650),
                desc: "California Issue Sword Belt",
                tag: 3),
            ArtifactButtonData(
                pos: Position(left: 450, top: 800),
                desc: "Musket Bayonet",
                tag: 4),
            ArtifactButtonData(
                pos: Position(left: 350, top: 600), desc: "Drumstick", tag: 5),
          ],
          articleData: data[20]),
      DisplayData(
          displayPath: "assets/images/isaac_simon_title.jpg",
          casePath: "assets/images/isaac_simon_b.jpg",
          artifactPath: "assets/images/isaac_simon_c.jpg",
          title: "Isaac & Simon",
          pos: CoordPos(latitude: 20, longitude: 65),
          artifactButtonData: [
            ArtifactButtonData(
                pos: Position(left: 250, top: 200),
                desc: "Infantry Horn Insignia",
                tag: 1),
            ArtifactButtonData(
                pos: Position(left: 250, top: 380), desc: "Kepi", tag: 2),
            ArtifactButtonData(
                pos: Position(left: 1300, top: 450),
                desc: "Post Cavalry",
                tag: 3),
            ArtifactButtonData(
                pos: Position(left: 580, top: 530),
                desc: "Indian Campaign Medal",
                tag: 4),
            ArtifactButtonData(
                pos: Position(left: 850, top: 200),
                desc: "Dress Blue Trousers",
                tag: 5),
            ArtifactButtonData(
                pos: Position(left: 1250, top: 780),
                desc: "Infantry Seargents Stripes (1855-1871)",
                tag: 6),
            ArtifactButtonData(
                pos: Position(left: 170, top: 730),
                desc: "Infantry Corporal Stripes (1855-1871)",
                tag: 7),
          ]),
      DisplayData(
          displayPath: "assets/images/david_title.jpg",
          casePath: "assets/images/david_b.jpg",
          artifactPath: "assets/images/david_c.jpg",
          title: "David",
          pos: CoordPos(latitude: 20, longitude: 80),
          artifactButtonData: [
            ArtifactButtonData(
                pos: Position(left: 310, top: 410),
                desc: "Hardee Hat national insignia",
                tag: 1),
            ArtifactButtonData(
                pos: Position(left: 800, top: 360),
                desc: "Powder Horn",
                tag: 2),
            ArtifactButtonData(
                pos: Position(left: 1150, top: 200),
                desc: "Coffee Boiler with lid",
                tag: 3),
            ArtifactButtonData(
                pos: Position(left: 230, top: 600),
                desc: "Corporal Stripes, Infantry (1855-1871)",
                tag: 4),
            ArtifactButtonData(
                pos: Position(left: 750, top: 800),
                desc: "Capper, Patterson Revolver",
                tag: 5),
            ArtifactButtonData(
                pos: Position(left: 700, top: 500),
                desc: "Holster, Pistol",
                tag: 6),
            ArtifactButtonData(
                pos: Position(right: 100, top: 500), desc: "Kepi", tag: 7),
          ],
          articleData: data[19]),
      DisplayData(
          displayPath: "assets/images/leopold_title.jpg",
          casePath: "assets/images/leopold_b.jpg",
          artifactPath: "assets/images/leopold_c.jpg",
          title: "Leopold",
          pos: CoordPos(latitude: 20, longitude: 110),
          artifactButtonData: [
            ArtifactButtonData(
                pos: Position(left: 200, top: 200), desc: "Kepi", tag: 1),
            ArtifactButtonData(
                pos: Position(left: 550, top: 80),
                desc: "Calling Card",
                tag: 2),
            ArtifactButtonData(
                pos: Position(left: 800, top: 160),
                desc: "Belt Buckle",
                tag: 3),
            ArtifactButtonData(
                pos: Position(left: 800, top: 310),
                desc: "Infantry Seargeants Stripes (1855-1871)",
                tag: 4),
            ArtifactButtonData(
                pos: Position(right: 150, top: 180),
                desc: "Cartridge Box",
                tag: 5),
            ArtifactButtonData(
                pos: Position(right: 170, top: 550),
                desc: "Hardee Hat national insignia",
                tag: 6),
            ArtifactButtonData(
                pos: Position(left: 800, top: 500), desc: "GAR Medals", tag: 7),
            ArtifactButtonData(
                pos: Position(right: 110, botton: 200),
                desc: "Infantry Horn Insignia",
                tag: 8),
            ArtifactButtonData(
                pos: Position(left: 500, top: 200),
                desc: "40th Annual Campment GAR Badge",
                tag: 9),
          ],
          articleData: data[18]),
      DisplayData(
          displayPath: "assets/images/henry_title.jpg",
          casePath: "assets/images/henry_b.jpg",
          artifactPath: "assets/images/henry_c.jpg",
          title: "Henry",
          pos: CoordPos(latitude: 20, longitude: 140),
          artifactButtonData: [
            ArtifactButtonData(
                pos: Position(left: 10, top: 10), desc: "", tag: 1),
          ]),
      DisplayData(
          displayPath: "assets/images/samuel_benjamin_title.jpg",
          casePath: "assets/images/samuel_benjamin_b.jpg",
          artifactPath: "assets/images/samuel_benjamin_c.jpg",
          title: "Samuel & Benjamin",
          pos: CoordPos(latitude: 30, longitude: 172),
          artifactButtonData: [
            ArtifactButtonData(
                pos: Position(left: 300, top: 300),
                desc: "USMC Campaign Hat with EGA",
                tag: 1),
            ArtifactButtonData(
                pos: Position(left: 10, botton: 200),
                desc: "Haitian Campaign Medal",
                tag: 2),
            ArtifactButtonData(
                pos: Position(left: 600, botton: 200),
                desc: "Mills Belt",
                tag: 3),
            ArtifactButtonData(
                pos: Position(left: 650, top: 300), desc: "Puttees", tag: 4),
          ],
          articleData: data[30]),
      DisplayData(
          displayPath: "assets/images/sydney_title.jpg",
          casePath: "assets/images/sydney_b.jpg",
          artifactPath: "assets/images/sydney_c.jpg",
          title: "Sydney",
          pos: CoordPos(latitude: 20, longitude: 219),
          artifactButtonData: [
            ArtifactButtonData(
                pos: Position(left: 600, top: 300),
                desc: "Helmet, M1917",
                tag: 1),
            ArtifactButtonData(
                pos: Position(left: 850, top: 350),
                desc: "Ammunition Pouch",
                tag: 2),
            ArtifactButtonData(
                pos: Position(left: 350, botton: 170), desc: "Whistle", tag: 3),
            ArtifactButtonData(
                pos: Position(left: 100, top: 400), desc: "Medal", tag: 4),
            ArtifactButtonData(
                pos: Position(left: 50, botton: 250),
                desc: "M1902 First Sergeant Stripes paper",
                tag: 5),
            ArtifactButtonData(
                pos: Position(right: 300, botton: 300),
                desc: "Protective Mask",
                tag: 6),
            ArtifactButtonData(
                pos: Position(right: 300, top: 150),
                desc: "M1917 Bolo Knife",
                tag: 7),
          ],
          articleData: data[31]),
      DisplayData(
          displayPath: "assets/images/william_ben_title.jpg",
          casePath: "assets/images/william_ben_b.jpg",
          artifactPath: "assets/images/william_ben_c.jpg",
          title: "William & Ben",
          pos: CoordPos(latitude: 20, longitude: 248),
          artifactButtonData: [
            ArtifactButtonData(
                pos: Position(left: 730, top: 420),
                desc: "M1902 Sergeant Stripes",
                tag: 1),
            ArtifactButtonData(
                pos: Position(right: 300, top: 200),
                desc: "Japanese Gas Mask",
                tag: 2),
            ArtifactButtonData(
                pos: Position(left: 700, top: 200),
                desc: "WWI Victory Medal",
                tag: 3),
            ArtifactButtonData(
                pos: Position(right: 100, botton: 200),
                desc: "Photograph, Japanese Soldiers",
                tag: 4),
            ArtifactButtonData(
                pos: Position(left: 200, botton: 200),
                desc: "WWI overseas cap",
                tag: 5),
            ArtifactButtonData(
                pos: Position(left: 820, top: 200),
                desc: "Asiatic Pacific Campaign Medal",
                tag: 6),
            ArtifactButtonData(
                pos: Position(left: 850, botton: 200),
                desc: "WWI Thrench Knife",
                tag: 7),
            ArtifactButtonData(
                pos: Position(left: 200, top: 300),
                desc: "Canteen with Cover",
                tag: 8),
          ],
          articleData: data[28],
          secondaryArticleData: data[26]),
      DisplayData(
          displayPath: "assets/images/raymond_isadore_title.jpg",
          casePath: "assets/images/raymond_isadore_b.jpg",
          artifactPath: "assets/images/raymond_isadore_c.jpg",
          title: "Ray & Isadore",
          pos: CoordPos(latitude: 20, longitude: 276),
          artifactButtonData: [
            ArtifactButtonData(
                pos: Position(left: 500, top: 120),
                desc: "M1936 Pistol Belt",
                tag: 1),
            ArtifactButtonData(
                pos: Position(left: 750, top: 200),
                desc: "M1918 First Aid Pouch",
                tag: 2),
            ArtifactButtonData(
                pos: Position(right: 350, top: 150),
                desc: "Wool Cold Weather Cap (Jeep Cap)",
                tag: 3),
            ArtifactButtonData(
                pos: Position(left: 150, top: 300),
                desc: "M1912 Leather Dismounted Holster, Brown",
                tag: 4),
            ArtifactButtonData(
                pos: Position(left: 500, top: 400),
                desc: "Officers Service Hat",
                tag: 5),
            ArtifactButtonData(
                pos: Position(left: 1100, top: 400),
                desc: "Parachute Badge",
                tag: 6),
            ArtifactButtonData(
                pos: Position(left: 1100, top: 480),
                desc: "Combat Infantry Badge",
                tag: 7),
            ArtifactButtonData(
                pos: Position(left: 1150, top: 650),
                desc:
                    "Europe-Africa-Middle East Campaign Medal with 2 service stars",
                tag: 8),
            ArtifactButtonData(
                pos: Position(right: 100, top: 200),
                desc: "2.35-inch rocket",
                tag: 9),
            ArtifactButtonData(
                pos: Position(left: 800, top: 500),
                desc: "Sergeant Stripes",
                tag: 10),
          ],
          articleData: data[25],
          secondaryArticleData: data[27]),
      DisplayData(
          displayPath: "assets/images/rubin_title.jpg",
          casePath: "assets/images/rubin_b.jpg",
          artifactPath: "assets/images/rubin_c.jpg",
          title: "Tibor Rubin",
          pos: CoordPos(latitude: 20, longitude: 305),
          artifactButtonData: [
            ArtifactButtonData(
                pos: Position(right: 300, top: 300),
                desc: "Map of Korea",
                tag: 1),
            ArtifactButtonData(
                pos: Position(left: 500, top: 200),
                desc: "Shoulder Sleeve Insignia, 1st Cavalry Division",
                tag: 2),
            ArtifactButtonData(
                pos: Position(left: 790, top: 320),
                desc: "Collar Insignia “U.S.”",
                tag: 3),
            ArtifactButtonData(
                pos: Position(left: 600, top: 320),
                desc: "Collar Insignia “Infantry”",
                tag: 4),
          ],
          articleData: data[23]),
      DisplayData(
          displayPath: "assets/images/jack_title.jpg",
          casePath: "assets/images/jack_b.jpg",
          artifactPath: "assets/images/jack_c.jpg",
          title: "Jack",
          pos: CoordPos(latitude: 20, longitude: 327),
          artifactButtonData: [
            ArtifactButtonData(
                pos: Position(left: 700, top: 200),
                desc: "M1954 Belt with Magazine Pouches",
                tag: 1),
            ArtifactButtonData(
                pos: Position(left: 700, botton: 110),
                desc: "Combat Infantry Badge",
                tag: 2),
            ArtifactButtonData(
                pos: Position(left: 100, botton: 500),
                desc: "Hot Weather Cap",
                tag: 3),
            ArtifactButtonData(
                pos: Position(left: 400, botton: 200),
                desc: "Vietnam Service Medal",
                tag: 4),
            ArtifactButtonData(
                pos: Position(left: 980, botton: 200),
                desc: "Republic Cross Gallantry Medal",
                tag: 5),
            ArtifactButtonData(
                pos: Position(right: 100, top: 400),
                desc: "Grounds Troops Helmet M1",
                tag: 6),
          ],
          articleData: data[22]),
      DisplayData(
          displayPath: "assets/images/john_title.jpg",
          casePath: "assets/images/john_b.jpg",
          artifactPath: "assets/images/john_c.jpg",
          title: "John",
          pos: CoordPos(latitude: 20, longitude: 340),
          artifactButtonData: [
            ArtifactButtonData(
                pos: Position(left: 300, top: 300),
                desc: "USAF Field Hat",
                tag: 1),
            ArtifactButtonData(
                pos: Position(left: 350, botton: 190),
                desc: "Vietnam Service Medal",
                tag: 2),
            ArtifactButtonData(
                pos: Position(left: 100, botton: 200),
                desc: "National Defense Service Medal",
                tag: 3),
            ArtifactButtonData(
                pos: Position(right: 100, botton: 300),
                desc: "Canteen with Cover",
                tag: 4),
            ArtifactButtonData(
                pos: Position(right: 250, top: 200),
                desc: "USAF Enlisted Service Hat",
                tag: 5),
            ArtifactButtonData(
                pos: Position(left: 700, botton: 300),
                desc: "Vietnam Mess Kit, dated (1966)",
                tag: 6),
          ],
          articleData: data[21]),
    ];
  }

  Widget hotspotButton(
      {String? text, IconData? icon, VoidCallback? onPressed}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(CircleBorder()),
            backgroundColor: MaterialStateProperty.all(
                SizeConfig.backroundCOLOR.withOpacity(.70)),
            foregroundColor: MaterialStateProperty.all(Colors.white),
          ),
          child: Icon(icon),
          onPressed: onPressed,
        ),
        text != null
            ? Container(
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    color: SizeConfig.backroundCOLOR.withOpacity(.70),
                    borderRadius: BorderRadius.all(Radius.circular(3))),
                child: Center(
                    child: Text(
                  text,
                  textScaleFactor: .7,
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontFamily: "Futura"),
                )),
              )
            : Container(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    setupList();
    return MaterialApp(
      title: 'Panorama',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: SizeConfig.backroundCOLOR,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          backgroundColor: SizeConfig.backroundCOLOR,
          title: Text(
            "Exhibits",
            style: TextStyle(
                fontSize: SizeConfig.fontHEADERSIZE,
                fontWeight: FontWeight.bold,
                fontFamily: "Futura"),
          ),
        ),
        body: Stack(
          alignment: Alignment.topLeft,
          children: [
            Panorama(
                onViewChanged: (longitude, latitude, tilt) {
                  setState(() {});
                },
                onTap: (longitude, latitude, tilt) =>
                    print('onTap: $longitude, $latitude, $tilt, $_displayId'),
                child: Image.asset('assets/images/DisplayPanoramicOne.jpg'),
                minLatitude: -20.0,
                maxLatitude: 35.0,
                hotspots: displayData!
                    .map((data) => Hotspot(
                        name: data.title,
                        latitude: data.pos.latitude,
                        longitude: data.pos.longitude,
                        width: 90,
                        height: 75,
                        widget: hotspotButton(
                            text: data.title,
                            icon: Icons.zoom_in,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DisplayView(
                                            displayImgPath: data.displayPath,
                                            caseImgPath: data.casePath,
                                            caseImgZoomPath: data.artifactPath,
                                            title: data.title,
                                            artifactButtonData:
                                                data.artifactButtonData,
                                            articleData: data.articleData,
                                            secondaryArticleData:
                                                data.secondaryArticleData,
                                          )));
                            })))
                    .toList()),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FloorPlanView(
                                displayData: displayData!,
                              )));
                },
                icon: Icon(Icons.map_outlined),
                label: Text(
                  "floor plan",
                  style: TextStyle(
                      fontSize: SizeConfig.fontDISCRIPTIONSIZE,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Futura"),
                ),
                style: ElevatedButton.styleFrom(
                  primary: SizeConfig.backroundCOLOR.withOpacity(0.7),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
