import 'package:flutter/material.dart';
import 'package:trendyol_design_project/sayfa_favoriler.dart';
import 'package:trendyol_design_project/sayfa_kesfet.dart';
import 'package:trendyol_design_project/sayfa_sepetim.dart';
import 'package:trendyol_design_project/sayfa_sipari%C5%9Flerim.dart';
import 'package:trendyol_design_project/sayfa_yard%C4%B1m.dart';

class TrendyolMain extends StatefulWidget {
  const TrendyolMain({Key? key}) : super(key: key);

  @override
  State<TrendyolMain> createState() => _TrendyolMainState();
}

class _TrendyolMainState extends State<TrendyolMain> {

  int selectIndex = 0 ;

  static const List<Widget> pageList = <Widget>[ SayfaKesfet(),SayfaFavoriler(),SayfaSepetim(),SayfaSiparislerim(),SayfaYardim()];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {

              },
              icon: const Icon(Icons.arrow_back,color: Colors.grey,)),
          title: Center(
            child:
               Padding(
                 padding: const EdgeInsets.only(right: 70),
                 child: Text("Mutfaklar",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 18)),
               ),
          ),
        ),
      body: pageList.elementAt(selectIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.explore),label: "Keşfet"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorilerim"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_basket),label: "Sepetim"),
          BottomNavigationBarItem(icon: Icon(Icons.flatware),label: "Siparişlerim"),
          BottomNavigationBarItem(icon: Icon(Icons.wechat),label: "Yardım"),
        ],
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: Colors.deepPurple,
        currentIndex: selectIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        onTap: (index){
          setState(() {
            selectIndex = index ;
          });
        },
      ),




    );
  }


}
