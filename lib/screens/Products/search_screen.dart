import 'package:SampleApp/models/Products/searchItem_model.dart';
import 'package:SampleApp/routes/app_router.gr.dart';
import 'package:SampleApp/widgets/custom_button.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import '../../gen/assets.gen.dart';
import '../../providers/products/products_provider.dart';
import '../../theme/colors.dart';
import '../../theme/shadows.dart';
import '../../widgets/text_field_with_title.dart';

@RoutePage()
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  var search = TextEditingController();
  FocusNode searchNode = FocusNode();
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        leadingWidth: 0.0,
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
        title: TextFieldWithTitleBase.widget(
          suffixIcon: GestureDetector(
              onTap: () {
                searchNode.unfocus();
                productProvider.fetchProducts(search.text);
              },
              child: Icon(Icons.search)),
          controller: search,
          label: 'Search Products',
          isRequired: false,
          textInputAction: TextInputAction.next,
          focusNode: searchNode,
          validator: (value) {
            if(value!.isEmpty){

            }
            return null;
          },
          keyboardType: TextInputType.text,
          textCapitalization: TextCapitalization.words,
        ),
      ),
      body:_buildBody(productProvider)
    );
  }

  Widget _buildBody(ProductProvider productProvider) {
    return RefreshIndicator(
      onRefresh: () async {
        // Add your refresh logic here
        await productProvider.fetchProducts('');
      },
      child: _buildListView(productProvider),
    );
  }
  Widget _buildListView(ProductProvider productProvider){
    if (productProvider.isLoading) {
      return const Center(child: CircularProgressIndicator());
    } else if (productProvider.error != null) {
      return Center(
        child: Text('Error: ${productProvider.error}'),
      );
    } else if (productProvider.products.isEmpty) {
      return const Center(
        child: Text('Search results shows here.'),
      );
    } else {
      return ListView.builder(
        itemCount: productProvider.products.length,
        itemBuilder: (context, index) {
          SearchResult product = productProvider.products[index];

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
                          product.description.toString(),
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
                        Row(
                          children: [
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
                          ],
                        ),
                        const Gap(6),
                        CustomButton(
                          title: "Add to bag",
                          onPressed: (){
                            search.clear();
                            searchNode.unfocus();
                            productProvider.addToList(product);
                            productProvider.products.clear();
                            context.pushRoute(HomeRoute());
                          },
                        ),
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
