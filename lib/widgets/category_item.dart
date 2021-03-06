import 'package:flutter/material.dart';
import 'package:mealapp/screens/categorymaelscreen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String id;

  CategoryItem(this.title, this.color,this.id);
 void selectCatgory(BuildContext ctx){
   Navigator.of(ctx).pushNamed("/category_meals",arguments: {'id':id,'title':title})
    
   ;
 }
 @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>selectCatgory(context),
      splashColor: Theme.of(context).accentColor,
      borderRadius: BorderRadius.circular(25),
          child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(title,style: Theme.of(context).textTheme.title,),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
    
  }
}
