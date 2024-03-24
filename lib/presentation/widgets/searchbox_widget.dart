import 'package:flutter/material.dart';
import 'package:flutter_dashboard_ui/util/colors.dart';
import 'package:flutter_dashboard_ui/util/responsive.dart';

class SearchBoxWidget extends StatelessWidget {
  const SearchBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if(!Responsive.isComputer(context))
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: const Padding(
                padding: EdgeInsets.all(4),
                child: Icon(Icons.menu, color: kGrey, size: 25),
              ),
            ),
          ),

        if(!Responsive.isMobile(context))
          Expanded(
            //height: 50,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: kCardBackgroundColor,
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: kTransparent),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Theme.of(context).primaryColor),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 5),
                hintText: "Search",
                prefixIcon: const Icon(
                  Icons.search,
                  color: kGrey,
                  size: 21,
                ),
              ),
            ),
          ),

        if(Responsive.isMobile(context))
          Row(
            children: [
              IconButton(
                onPressed: (){}, 
                icon: const Icon(
                  Icons.search, 
                  color: kGrey, 
                  size: 25,
                ),
              ),
              InkWell(
                onTap: () => Scaffold.of(context).openEndDrawer(),
                child: CircleAvatar(
                  backgroundColor: kTransparent,
                  child: Image.asset(
                    "assets/images/avatar.png", 
                    width: 32,
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}