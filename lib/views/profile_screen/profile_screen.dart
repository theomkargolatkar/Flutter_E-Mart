import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/views/profile_screen/components/details_card.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super (key : key );

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SafeArea(child: Column(
          children: [
//edit profile
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   const Align(
  
    alignment: Alignment.topRight,
  
  
  
  child: Icon( Icons.edit,color: whiteColor,)).onTap(() { }),
),


//usersdetails


            Padding(
              padding: const EdgeInsets.symmetric(horizontal:8.0),
              child: Row(
                children: [
                  Image.asset(imgProfile2,width: 100,fit: BoxFit.cover,).box.roundedFull.clip(Clip.antiAlias).make(),
                  10.widthBox,
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    
                    children: [
                    "Dummy User".text.fontFamily(semibold).white.make(),
                    
                    "CustomerEmail@gmail.com".text.white.make(),
                    
            
                  ],)),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: whiteColor,
                      )
                    ),
                    onPressed: (){}, child: logout.text.fontFamily(semibold).make(),)
                ],
              ),
            ),

          20.heightBox,
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            detailsCard(count: "00",title: "in your cart",width: context.screenWidth/3.4),
            detailsCard(count: "30",title: "in your wishlist",width: context.screenWidth/3.4),
            detailsCard(count: "60",title: "your orders",width: context.screenWidth/3.4),
          ],
         ),

          //buttons section
          ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context,index){
              return  const Divider(color: lightGrey,);

            },
            itemCount: profileButtonsList.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.asset(
                  profileButtonsIcon[index],
                  width: 22,
                ),
                title: profileButtonsList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
              );
            },
          ).box.white.rounded.margin(const EdgeInsets.all(12)).padding(const EdgeInsetsDirectional.symmetric(horizontal: 16)).shadowSm.make().box.make().color(redColor),

          ])),

      ),
    );
  }
}