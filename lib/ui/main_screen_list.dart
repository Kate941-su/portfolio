import 'package:flutter/cupertino.dart';
import 'package:rate_converter_flutter/ui/views/about_card.dart';
import 'package:rate_converter_flutter/ui/views/contact_zone.dart';
import 'package:rate_converter_flutter/ui/views/experience_card.dart';
import 'package:rate_converter_flutter/ui/views/home_card.dart';
import 'package:rate_converter_flutter/ui/views/portfolio_zone.dart';

final homeCardKey = GlobalKey();
final aboutCardKey = GlobalKey();
final experienceCardKey = GlobalKey();
final portfolioZonKey = GlobalKey();
final contactZonKey = GlobalKey();

Widget blankBox = const SizedBox.square(dimension: 180,);

final List<Widget> mainScreenCardList = [
  HomeCard(key: homeCardKey,),
  blankBox,
  AboutCard(key: aboutCardKey,),
  blankBox,
  ExperienceCard(key: experienceCardKey,),
  blankBox,
  PortfolioZone(key: portfolioZonKey,),
  blankBox,
  ContactZone(key: contactZonKey,),
];