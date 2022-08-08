import 'package:draggable_scrollbar/draggable_scrollbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_app/Components/AppBar.dart';
import 'package:store_app/Components/GradientContainer.dart';
import 'package:store_app/Components/ProductListViewItem.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  ScrollController _scrollController = ScrollController(initialScrollOffset: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        bottom: GradientContainer(text: 'العطور'),
      ),
      body: Column(
        children: [
          Container(
            height: 65,
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.2,
                vertical: 17),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                    iconSize: 30,
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/search.svg',
                      color: Color(0xFF70BCFF),
                      height: 30,
                      width: 30,
                    )),
                hintText: 'البحث',
                hintStyle: TextStyle(fontSize: 12, color: Color(0xFF70BCFF)),
                border: UnderlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(12, 20, 12, 0),
              child: DraggableScrollbar(
                alwaysVisibleScrollThumb: true,
                controller: _scrollController,
                backgroundColor: Colors.black,
                heightScrollThumb: 20,
                scrollThumbBuilder:
                    (backgroundColor, thumbAnimation, labelAnimation, height,
                        {labelConstraints, labelText}) {
                  return Container(
                    height: 12,
                    width: 12,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFF0059A7)),
                  );
                },
                child: GridView.custom(
                  controller: _scrollController,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 60,
                      mainAxisExtent: 160,
                      crossAxisCount: 2,
                      crossAxisSpacing: 60),
                  childrenDelegate: SliverChildListDelegate(
                    List.generate(
                      15,
                      (index) => ProductListViewItem(),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
