import 'package:flutter/material.dart';
import 'package:suvidha_sarathi/Navigationscreen/route_screen.dart';
import 'package:suvidha_sarathi/Unitls/geticon.dart';
import 'package:suvidha_sarathi/model/Drawermodel.dart';

List<Drawermodel> model = [
  Drawermodel(
    id: 0,
    name: 'Home',
    screenname: RouteScreen.Suvidhasarathi_Home,
    icon: getIcons.Home,
  ),
  Drawermodel(
    id: 1,
    name: 'Why Suvidha Sarthi ?',
    screenname: RouteScreen.WhySuvidhasarathi,
    icon: getIcons.why_suvidha_sarthi,
  ),
  Drawermodel(
    id: 2,
    name: 'Events',
    screenname: RouteScreen.Event,
    icon: getIcons.event,
  ),
  Drawermodel(
    id: 3,
    name: 'My Contribution',
    screenname: RouteScreen.Aboutus,
    icon: getIcons.my_contribution,
  ),
  Drawermodel(
    id: 4,
    name: 'Contribute Now',
    screenname: RouteScreen.Aboutus,
    icon: getIcons.contributenow,
  ),
  Drawermodel(
    id: 5,
    name: 'About Us',
    screenname: RouteScreen.Aboutus,
    icon: getIcons.about_us,
  ),
  Drawermodel(
    id: 6,
    name: 'Contact Us',
    screenname: RouteScreen.Aboutus,
    icon: getIcons.contact_us,
  ),
  Drawermodel(
    id: 7,
    name: 'FAQ',
    screenname: RouteScreen.Aboutus,
    icon: getIcons.faqs,
  ),
  Drawermodel(
    id: 8,
    name: 'Feedback',
    screenname: RouteScreen.Aboutus,
    icon: getIcons.feedBack,
  ),
  Drawermodel(
    id: 9,
    name: 'Privacy Policy',
    screenname: RouteScreen.Aboutus,
    icon: getIcons.privacy_policy,
  ),
  Drawermodel(
    id: 10,
    name: 'Notifications',
    screenname: RouteScreen.Aboutus,
    icon: getIcons.notifications,
  ),
  Drawermodel(
    id: 11,
    name: 'Support',
    screenname: RouteScreen.Aboutus,
    icon: getIcons.support,
  ),
  Drawermodel(
    id: 12,
    name: 'Logout',
    screenname: RouteScreen.Aboutus,
    icon: getIcons.logout,
  ),
];
