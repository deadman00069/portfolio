import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/PortfolioModel.dart';

class IndexScreenCubit extends Cubit<PortfolioModel> {
  IndexScreenCubit() : super(PortfolioModel());

  final List<GlobalKey> _gKeys = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  ];

  void onScroll(GlobalKey gKey) {
    Scrollable.ensureVisible(
      gKey.currentContext!,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOutCubic,
    );
  }

  onClick(int index) {
    switch (index) {
      case 0:
        {
          onScroll(_gKeys[0]);
        }
        break;
      case 1:
        {
          onScroll(_gKeys[1]);
        }
        break;
      case 2:
        {
          onScroll(_gKeys[2]);
        }
        break;
      case 3:
        {
          onScroll(_gKeys[3]);
        }
        break;
      case 4:
        {
          onScroll(_gKeys[4]);
        }
        break;
    }
  }

  List<GlobalKey> get gKeys {
    return _gKeys;
  }

  PortfolioModel get portfolio => state;

  void setPortfolioModel(PortfolioModel portfolio) {
    state.copyFrom(portfolio);
  }
}
