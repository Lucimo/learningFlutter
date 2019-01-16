import 'package:first_flutter_projectv2/homescreen/HomeView.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePresenter {
  /*launchURL() async {
    const url = 'https://flutter.io';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  */
  HomeView _view;
  HomePresenter(this._view);



  void onClickElement(int position){
    _view.detailScreen(position);
  }


}
