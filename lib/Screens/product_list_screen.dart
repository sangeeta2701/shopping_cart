import 'package:flutter/material.dart';
import 'package:shopping_cart/Widgets/sizedbox.dart';
import 'package:shopping_cart/utils/colors.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<String> productName = [
    "Papaya",
    "Pomegranate",
    "Pineapple",
    "Dragon Fruit",
    "Mixed Fruit Bucket",
    "Tomato",
    "Brinjal",
    "Cauliflower"
  ];
  List<String> productUnit = ["KG", "KG", "kG", "KG", "KG", "kG", "KG", "KG"];
  List<int> productPrice = [50, 140, 80, 95, 200, 30, 5, 35];
  List<String> productImage = [
    "https://pngimg.com/uploads/papaya/papaya_PNG30.png",
  "https://th.bing.com/th/id/R.1208a25b95960cf598a88e9c3f1943eb?rik=dzu5ChcPRDsmCg&riu=http%3a%2f%2fclipart-library.com%2fimage_gallery2%2fPomegranate-Free-PNG-Image.png&ehk=OWANGjJslxhzP8NcLZI3THL18zLbkO0u8HaeHDfUa6o%3d&risl=1&pid=ImgRaw&r=0",
  "https://purepng.com/public/uploads/large/purepng.com-two-pineapplepineappleripeananasfruithealth-9815247613167gpzc.png",
  "https://th.bing.com/th/id/R.6c68c561154cda1d4a4751aa987519ad?rik=XFJk3yiiuCPhKg&riu=http%3a%2f%2fsapodaklak.com%2fwp-content%2fuploads%2f2020%2f09%2fDragon-Fruit.png&ehk=ZoX4YG0GKcU50ZejfpZzmY0%2faLv23zDXT72apQUUfMg%3d&risl=&pid=ImgRaw&r=0",
  "https://th.bing.com/th/id/R.4ca01137d12af643e83a87fb3fc0c71f?rik=i8hNao0SWP0VZg&riu=http%3a%2f%2fpngimagesfree.com%2fFruit%2fMix-fruit-png%2fFruits_in_basket_png_pictur.png&ehk=MQ6JtXr%2fuoYOtrYoHXmnxkisW%2bxPGagcLYszlLKATh8%3d&risl=&pid=ImgRaw&r=0",
  "https://purepng.com/public/uploads/large/purepng.com-tomatovegetables-tomato-941524712357ikhy3.png",
  "https://purepng.com/public/uploads/large/purepng.com-eggplantvegetables-brinjal-eggplant-melongene-garden-egg-guinea-squash-941524724238ehfjs.png",
  "https://th.bing.com/th/id/R.f7c2ca8bdc4bfeb73971b84db17912c3?rik=XwAFnOKrmzGjVA&riu=http%3a%2f%2fwww.pngmart.com%2ffiles%2f8%2fCauliflower-PNG-Image-HD.png&ehk=dTrrAJfHDLRTfft7eoA4amP68EFLpZDtMLIn%2ftoaaNA%3d&risl=&pid=ImgRaw&r=0"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: wColor,
        title: Text("Product List"),
        centerTitle: true,
        actions: [
          Badge(
            label: Text("0"),
            child: Icon(Icons.shopping_cart_outlined),
          ),
          width20,
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: productName.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Card(
                          color: wColor,
                          elevation: 1,
                          
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Image(
                                      width: 100,
                                      height: 80,
                                      image: NetworkImage(productImage[index]),fit: BoxFit.contain,),
                                      width12,
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                             Text(
                                        productName[index],
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                                                        ),
                                                                        height4,
                                                                        Row(
                                        children: [
                                          Text(
                                            productUnit[index],
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.grey
                                            ),
                                          ),
                                          width12,
                                          Text(
                                            "\$${productPrice[index]}",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black
                                            ),
                                          ),
                                        ],
                                                                        ),
                                                                        height4,
                                                                         Align(
                                        alignment: Alignment.centerRight,
                                         child: SizedBox(
                                          height: 35,
                                          width: 100,
                                           child: MaterialButton(
                                                                           color: Colors.green,
                                                                           shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(6)
                                                                           ),
                                                                           onPressed: (){},child: Text("Add to Cart",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w600),),),
                                         ),
                                                                         )
                                          ],
                                        ),
                                      ),
                                  
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
