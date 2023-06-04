import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                    height: 190,
                    ),
                Container(
                  margin: const EdgeInsets.only(top:100.0),
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(20.0),
                        width: 120,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            ),
                      )                     
                    ],
                  ),
                ),
                Container(
                  margin:const EdgeInsets.symmetric(horizontal: 30.0,vertical: 30.0),
                  child:const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",style: TextStyle(
                    color: Colors.black38,
                    letterSpacing: 0.8,
                    height: 1.5,
      

                  ),),
              
                ),
              ],
            ),
            SafeArea(child: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: const  Icon(Icons.arrow_back_rounded))),
            const Positioned(
                top: 100,
                left: 20,
                child: Text("Ai \nGlasses",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 45
                ),))
          ],
        ),
      ),
    );
  }
}