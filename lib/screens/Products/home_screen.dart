import 'package:SampleApp/providers/products/products_provider.dart';
import 'package:SampleApp/routes/app_router.gr.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

import '../../gen/assets.gen.dart';
import '../../models/Products/searchItem_model.dart';
import '../../theme/colors.dart';
import '../../theme/shadows.dart';
import '../../widgets/add_or_remove_button.dart';
import '../../widgets/text_field_with_title.dart';


@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: screenBackgroundColor,
        appBar: AppBar(
          leadingWidth: 0.0,
          toolbarHeight: MediaQuery.of(context).size.height * 0.1,
          title: TextFieldWithTitleBase.widget(
            onTap: () {
              context.pushRoute(const SearchRoute());
            },
            suffixIcon: Icon(Icons.search),
            label: 'Search Products',
            isRequired: false,
            readOnly: true,
          ),
        ),
        body: _buildBody(productProvider)
      ),
    );
  }

  Widget _buildBody(ProductProvider productProvider) {
    if (productProvider.listItems.isEmpty) {
      return const Center(
        child: Text('No products in bag.'),
      );
    } else {
      return ListView.builder(
        itemCount: productProvider.listItems.length,
        itemBuilder: (context, index) {
          SearchResult product = productProvider.listItems[index];

          return Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(
              vertical: 6.0,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [shadow1],
            ),
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                      width: (MediaQuery.of(context).size.width * 0.4),
                      child: Assets.images.noproduct.image()
                  ),
                  const Gap(12),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.description ?? "",
                          style: Theme.of(context).textTheme.bodyLarge,
                          textAlign: TextAlign.start,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const Gap(4),
                        Row(
                          children: [
                            Text(
                              "Item Code : ",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                fontWeight: FontWeight.w800,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              product.itemCode,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                fontWeight: FontWeight.w800,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const Gap(4),
                        Text(
                          "Rs.${product.sellingPrice.toString()}",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                            fontWeight: FontWeight.w800,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        AddOrRemoveButton(
                          count: product.noQty.toString(),
                          onAddClicked: () {
                            setState(() {
                              productProvider.listItems[index].noQty++;
                            });
                          },
                          onRemoveClicked: () {
                            setState(() {
                              productProvider.listItems[index].noQty--;
                            });
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      );
    }
  }
}


