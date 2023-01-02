import 'package:flutter/material.dart';

class SayfaKesfet extends StatelessWidget {
  const SayfaKesfet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> foodImage = [
      'images/doner.png',
      'images/burger.png',
      'images/cigkofte.png',
      'images/pide.png',
      'images/pizza.png',
      'images/tatli.png',
      'images/evyemek.png',
      'images/sokaklezzet.png',
      'images/tavuk.png',
      'images/kebap.png',
      'images/tost.png',
      'images/kofte.png',
      'images/balik.png',
      'images/uzakdogu.png',
      'images/salata.png',
    ];

    var foodList = [
      "Döner",
      "Burger",
      "Çiğ Köfte",
      "Pide&  Lahmacun",
      "Pizza",
      "Tatlı",
      "Ev Yemekleri",
      "Sokak Lezzetleri",
      "Tavuk",
      "Kebap",
      "Tost&   Sandviç",
      "Köfte",
      "Balık&        Deniz Ürünleri",
      "Uzak Doğu",
      "Salata &       Sağlık",
    ];

    return Scaffold(
      backgroundColor: Colors.white54,
      body: GridView.builder(
        itemCount: foodList.length,
        itemBuilder: (context, index) {
          var food = foodList[index];
          return Container(
            child: GestureDetector(
              onTap: () {
                print("${food} sipariş verildi.");
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                    Image.asset(foodImage[index]),
                    Text(
                      foodList[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 1 / 1.1,
        ),
      ),
    );
  }
}
