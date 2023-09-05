import 'package:evital_sales/cubit/search/search_cubit.dart';
import 'package:evital_sales/cubit/search/search_state.dart';
import 'package:evital_sales/model/search/search_model_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchController = TextEditingController();

  int totalLength = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.indigo,
        leading: IconButton(
          padding: const EdgeInsets.only(right: 0),
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.chevron_left,
            color: Colors.white,
          ),
        ),
        titleSpacing: 0,
        leadingWidth: 40,
        centerTitle: true,
        title: TextField(
          cursorColor: Colors.white,
          controller: searchController,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.search,
          onTapOutside: (event) => FocusScope.of(context).unfocus(),
          style: const TextStyle(color: Colors.white),
          onChanged: (value) {
            SearchCubit.isSearching = true;
            searchItem(value: value);
          },
          decoration: InputDecoration(
            hintText: "Search Medicine",
            border: InputBorder.none,
            hintStyle: TextStyle(
              color: Colors.white.withOpacity(0.4),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              searchController.clear();
              context.read<SearchCubit>().clearText();
              setState(() {});
            },
            icon: Icon(
              Icons.close,
              color: Colors.grey.withOpacity(0.8),
            ),
          )
        ],
      ),
      body: BlocConsumer<SearchCubit, SearchState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is SearchLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is SearchSuccessState) {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: buildDataTable(state),
            );
          } else if (state is SearchEmptyState) {
            return const Center(
              child: Chip(
                label: Text("Not found"),
              ),
            );
          } else if (state is SearchFailState) {
            return Text(state.errorMessage);
          }
          return const SizedBox();
        },
      ),
    );
  }

  Widget buildDataTable(SearchSuccessState state) {
    return DataTable(
      dataRowMaxHeight: 100,
      columnSpacing: 15,
      headingRowHeight: 30,
      showBottomBorder: false,
      dividerThickness: 0,
      columns: [
        DataColumn(
          label: Text(
            "${state.results.length} items",
            style: const TextStyle(
              color: Colors.blue,
            ),
          ),
        ),
        const DataColumn(
          label: Text(
            'Stock',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        const DataColumn(
          label: Text(
            'MRP',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
      rows: List.generate(
        state.results.length,
        (index) {
          SearchModelDataResult modelData = state.results.elementAt(index);
          return DataRow(
            cells: [
              DataCell(
                RichText(
                  text: TextSpan(
                    text: modelData.medicineName ?? "-",
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: "\n${modelData.manufacturerName}" ?? "-",
                        style: const TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                ),
              ),
              DataCell(Text(modelData.quantity.toString() ?? "")),
              DataCell(Text(
                  double.parse(modelData.mrp.toString()).toStringAsFixed(2) ??
                      "")),
            ],
          );
        },
      ).toList(),
    );
  }

  void searchItem({required String value}) {
    if (value.isNotEmpty) {
      context.read<SearchCubit>().searchProducts(query: value.trim());
    }
  }
}
