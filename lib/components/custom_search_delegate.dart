import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/models/recipe.dart';
import 'package:recipe_app/screens/recipe_detail_page.dart';

class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query.isEmpty ? null : query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back_ios, size: 24, color: Colors.red),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<Recipe> filteredList = recipes
        .where((recipe) => recipe.recipeName
            .toString()
            .toLowerCase()
            .contains(query.toLowerCase()))
        .toList();
    return filteredList.length > 0
        ? Container(
            padding: const EdgeInsets.all(20),
            child: ScrollbarTheme(
              data: ScrollbarThemeData(
                  crossAxisMargin: -10,
                  mainAxisMargin: -10,
                  thumbColor: MaterialStateProperty.all(Color(0xff8c52ff))),
              child: Scrollbar(
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: filteredList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RecipeDetailPage(
                                    recipe: filteredList[index])));
                      },
                      child: Container(
                        height: 98,
                        margin: const EdgeInsets.only(bottom: 16),
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Colors.transparent),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Container(
                                    height: 53.43,
                                    width: 73,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/images/${filteredList[index].recipeImage}',
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 18.56,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          filteredList[index].recipeName,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: const TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF0E0E2D),
                                          ),
                                        ),
                                        Text(
                                          '${filteredList[index].recipeMaker}\'s recipe',
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF9A9DB0),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  child: Text(
                                    filteredList[index].recipeMaker[0],
                                    style: TextStyle(
                                        color: filteredList[index].startColor),
                                  ),
                                  backgroundColor: filteredList[index].endColor,
                                ),
                                const Spacer(),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/svg/icon-share-grey.svg'),
                                    const SizedBox(
                                      width: 7.65,
                                    ),
                                    SvgPicture.asset(
                                        'assets/svg/icon-bookmark-grey.svg'),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          )
        : Center(
            child: Text("Not Found"),
          );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Recipe> filteredList = recipes
        .where((recipe) => recipe.recipeName
            .toString()
            .toLowerCase()
            .contains(query.toLowerCase()))
        .toList();
    return filteredList.length > 0
        ? Container(
            padding: const EdgeInsets.all(20),
            child: ScrollbarTheme(
              data: ScrollbarThemeData(
                  crossAxisMargin: -10,
                  mainAxisMargin: -10,
                  thumbColor: MaterialStateProperty.all(Color(0xff8c52ff))),
              child: Scrollbar(
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: filteredList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RecipeDetailPage(
                                    recipe: filteredList[index])));
                      },
                      child: Container(
                        height: 98,
                        margin: const EdgeInsets.only(bottom: 16),
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Colors.transparent),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Container(
                                    height: 53.43,
                                    width: 73,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/images/${filteredList[index].recipeImage}',
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 18.56,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          filteredList[index].recipeName,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: const TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF0E0E2D),
                                          ),
                                        ),
                                        Text(
                                          '${filteredList[index].recipeMaker}\'s recipe',
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF9A9DB0),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  child: Text(
                                    filteredList[index].recipeMaker[0],
                                    style: TextStyle(
                                        color: filteredList[index].startColor),
                                  ),
                                  backgroundColor: filteredList[index].endColor,
                                ),
                                const Spacer(),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/svg/icon-share-grey.svg'),
                                    const SizedBox(
                                      width: 7.65,
                                    ),
                                    SvgPicture.asset(
                                        'assets/svg/icon-bookmark-grey.svg'),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          )
        : Center(
            child: Text("Not Found"),
          );
  }
}
