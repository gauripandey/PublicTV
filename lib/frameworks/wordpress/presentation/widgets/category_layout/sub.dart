import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:provider/provider.dart';
import '../../../../../common/config.dart';
import '../../../../../common/constants.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../models/index.dart';
import '../../../../../routes/flux_navigate.dart';
import '../../../../../screens/index.dart';
import '../../../../../services/index.dart';
import '../../../../../widgets/blog/blog_card_view.dart';

class SubCategories extends StatefulWidget {
  static const String type = 'subCategories';

  final ScrollController? scrollController;

  const SubCategories({
    this.scrollController,
  });

  @override
  State<StatefulWidget> createState() {
    return SubCategoriesState();
  }
}

class SubCategoriesState extends State<SubCategories> {
  int selectedIndex = 0;
  final Services _service = Services();
  bool initial=true;
  List<Category> selectedCategories = [];
  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Consumer<CategoryModel>(
      builder: (context, value, child) {
        if (value.isFirstLoad) {
          return kLoadingWidget(context);
        }
        var categories = value.categories
                ?.where((item) => item.parent.toString() != '2')
                .toList() ??
            [];
        if (categories.isEmpty) {
          return Center(
            child: Text(S.of(context).noData),
          );
        }
        return Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: MultiSelectDialogField<Category>(
                items: categories.map((e) => MultiSelectItem(e, e.displayName)).toList(),
                listType: MultiSelectListType.CHIP,

                initialValue: selectedCategories,

                chipDisplay: MultiSelectChipDisplay.none(),
                searchHint: 'Search Category',
                title: const Text('Select Categories'),
                onConfirm: (values) {
                 setState(() {
                   selectedCategories=values;
                   initial=false;
                 });
                },
              ),
            ),
            SizedBox(
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount:selectedCategories.isEmpty?categories.length: selectedCategories.length,
                itemBuilder: (context, index) {
                  print("totalLength");
                  print(categories.length);
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Center(
                        child: Text(selectedCategories.isEmpty?categories[index].displayName:selectedCategories[index].displayName,
                            style: TextStyle(
                                fontSize: 18,
                                color: selectedIndex == index
                                    ? theme.primaryColor
                                    : theme.hintColor)),
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child:LayoutBuilder(
                builder: (context, constraints) {
                  return FutureBuilder<List<Blog>>(
                    future: _service.api.fetchBlogsByCategory(
                      categoryId: selectedCategories.isEmpty?categories[selectedIndex].id:selectedCategories[selectedIndex].id,
                      page: 1,
                    ),
                    builder: (BuildContext context,
                        AsyncSnapshot<List<Blog>> snapshot) {
                      if (!snapshot.hasData) {
                        return kLoadingWidget(context);
                      }
                      return ListView.builder(
                        controller: widget.scrollController,
                        padding: const EdgeInsets.all(10),
                        itemCount: snapshot.data?.length,
                        itemBuilder: (context, index) => BlogCard(
                          item: snapshot.data![index],
                          width: constraints.maxWidth,
                          onTap: () {
                            print("hittt");
                            FluxNavigate.pushNamed(
                            RouteList.detailBlog,
                            arguments: BlogDetailArguments(
                              blog: snapshot.data![index],
                              listBlog: snapshot.data,
                            ),
                          );
                          },
                        ),
                      );
                    },
                  );
                },
              ),
            )
          ],
        );
      },
    );
  }
}
