import 'package:flutter/material.dart';
import 'package:lux_interio_app_new/main.dart';

class PageViewDemoState extends StatefulWidget{
   const PageViewDemoState ({super.key});

   @override
    State<PageViewDemo> createState() => _PageViewDemoState();
  }

class _PageViewDemoState extends State<PageViewDemo>{

  final PageController _pageController = PageController(initialPage: 0);

  int _activePage = 0;
}

  }
