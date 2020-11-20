import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  int _bannerPageIndex = 0;

  int get bannerPageIndex => _bannerPageIndex;

  set bannerPageIndex(int pageIndex) {
    _bannerPageIndex = pageIndex;
    notifyListeners();
  }
}