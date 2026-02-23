import 'package:event_hub_app/core/utils/colors.dart';
import 'package:event_hub_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {

    CustomAppbar({
    super.key, this.rightIcons,this.title
  });

List<Widget>? rightIcons;
String? title;
  @override
  Widget build(BuildContext context) {

    
    return SizedBox(
      height: 75,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0.0,),
                child: IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.arrow_back,color: AppColors.mainBlack,)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(title!,style: Style.black24W400,),
              )
            ],
          ),
          Row(children: rightIcons!)
        ],
      ),
    );
  }
}