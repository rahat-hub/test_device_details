import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_device_details/module/table_row_column_test/table_data_helper.dart';

class TableRowColumnTestLogic extends GetxController {


  var tableData = [
    {
      "OEId": 27352,
      "ExpenseDate": "10/26/2023",
      "CreatedByName": "Sarker, Ujjal",
      "ExpenseType": "Aircraft [N43845M]",
      "Vendor": "mhh [yy]",
      "PurchaserName": "Sarker, Ujjal",
      "PurchaserNameBase": "FOX 1",
      "PoNumber": "",
      "IndexCode": "Default Index Code",
      "NumberOfItems": 1,
      "TotalCost": 6.87,
      "ApprovalStatus": "Awaiting Supervisor Approval  (Sarker, Ujjal)",
      "TotalCostString": "\$6.87"
    },
    {
      "OEId": 27353,
      "ExpenseDate": "10/26/2023",
      "CreatedByName": "Sarker, Ujjal",
      "ExpenseType": "Aircraft [DEMO]",
      "Vendor": "Maintanence Shop [yy]",
      "PurchaserName": "Sarker, Ujjal",
      "PurchaserNameBase": "FOX 3",
      "PoNumber": "",
      "IndexCode": "",
      "NumberOfItems": 1,
      "TotalCost": 9,
      "ApprovalStatus": "Awaiting Supervisor Approval  (Goodman, Brad)",
      "TotalCostString": "\$9.00"
    },
    {
      "OEId": 27355,
      "ExpenseDate": "10/26/2023",
      "CreatedByName": "Sarker, Ujjal",
      "ExpenseType": "Aircraft",
      "Vendor": "",
      "PurchaserName": "Sarker, Ujjal",
      "PurchaserNameBase": "",
      "PoNumber": "",
      "IndexCode": "",
      "NumberOfItems": 0,
      "TotalCost": 0,
      "ApprovalStatus": "In-Progress",
      "TotalCostString": "\$0.00"
    },
    {
      "OEId": 27351,
      "ExpenseDate": "10/25/2023",
      "CreatedByName": "Sarker, Ujjal",
      "ExpenseType": "Aircraft",
      "Vendor": "",
      "PurchaserName": "Sarker, Ujjal",
      "PurchaserNameBase": "",
      "PoNumber": "",
      "IndexCode": "",
      "NumberOfItems": 1,
      "TotalCost": 7,
      "ApprovalStatus": "In-Progress",
      "TotalCostString": "\$7.00"
    },
    {
      "OEId": 27117,
      "ExpenseDate": "05/18/2023",
      "CreatedByName": "Sarker, Ujjal",
      "ExpenseType": "Aircraft",
      "Vendor": "",
      "PurchaserName": "Sarker, Ujjal",
      "PurchaserNameBase": "",
      "PoNumber": "",
      "IndexCode": "",
      "NumberOfItems": 1,
      "TotalCost": 500,
      "ApprovalStatus": "In-Progress",
      "TotalCostString": "\$500.00"
    },
    {
      "OEId": 27116,
      "ExpenseDate": "05/18/2023",
      "CreatedByName": "Sarker, Ujjal",
      "ExpenseType": "Fuel",
      "Vendor": "",
      "PurchaserName": "Sarker, Ujjal",
      "PurchaserNameBase": "",
      "PoNumber": "",
      "IndexCode": "",
      "NumberOfItems": 1,
      "TotalCost": 300,
      "ApprovalStatus": "In-Progress",
      "TotalCostString": "\$300.00"
    },
    {
      "OEId": 23158,
      "ExpenseDate": "05/18/2021",
      "CreatedByName": "Deese, Amanda",
      "ExpenseType": "Aircraft",
      "Vendor": "",
      "PurchaserName": "Deese, Amanda",
      "PurchaserNameBase": "",
      "PoNumber": "",
      "IndexCode": "",
      "NumberOfItems": 0,
      "TotalCost": 0,
      "ApprovalStatus": "In-Progress",
      "TotalCostString": "\$0.00"
    },
    {
      "OEId": 23157,
      "ExpenseDate": "05/18/2021",
      "CreatedByName": "Deese, Amanda",
      "ExpenseType": "Aircraft [N43845M]",
      "Vendor": "Bell Helicopter [254893]",
      "PurchaserName": "Deese, Amanda",
      "PurchaserNameBase": "FOX 1",
      "PoNumber": "",
      "IndexCode": "",
      "NumberOfItems": 1,
      "TotalCost": 2500,
      "ApprovalStatus": "Awaiting Supervisor Approval  (Deese, Amanda)",
      "TotalCostString": "\$2,500.00"
    },
    {
      "OEId": 22545,
      "ExpenseDate": "12/03/2020",
      "CreatedByName": "Demoreta, Joaquin",
      "ExpenseType": "Aircraft",
      "Vendor": "",
      "PurchaserName": "Demoreta, Joaquin",
      "PurchaserNameBase": "",
      "PoNumber": "",
      "IndexCode": "",
      "NumberOfItems": 0,
      "TotalCost": 0,
      "ApprovalStatus": "In-Progress",
      "TotalCostString": "\$0.00"
    },
    {
      "OEId": 18938,
      "ExpenseDate": "05/30/2018",
      "CreatedByName": "Demoreta, Joaquin",
      "ExpenseType": "Aircraft",
      "Vendor": " [1]",
      "PurchaserName": "Demoreta, Joaquin",
      "PurchaserNameBase": "FOX 1",
      "PoNumber": "",
      "IndexCode": "",
      "NumberOfItems": 1,
      "TotalCost": 1,
      "ApprovalStatus": "In-Progress",
      "TotalCostString": "\$1.00"
    }
  ].obs;

  var isDescendingPrime = false.obs;

  var items = [].obs;

  @override
  void onInit() {
    super.onInit();
    items.addAll(tableData);

  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  indexDataViewReturn({sizingInformation}) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Stack(
        children: [
          SingleChildScrollView(
            child: Row(
              children: [
                DataTable(
                  columns: TableDataHelper.kTableColumnsList.getRange(0, 2).map((e) {
      return DataColumn(
        label: SizedBox(
          width: e.width,
          child: Text(e.title ?? ""),
        ),
      );
    }).toList(),
                  rows: List.generate(items.length, (index) {
                    return DataRow(cells: [
                      DataCell(Text(items[index]["ExpenseDate"].toString())),
                      DataCell(Text(items[index]["CreatedByName"].toString())),
                    ]);
                  }),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columns: TableDataHelper.kTableColumnsList.getRange(2, TableDataHelper.kTableColumnsList.length).map((e) {
                        return DataColumn(
                          label: SizedBox(
                            width: e.width,
                            child: Text(e.title ?? ""),
                          ),
                        );
                      }).toList(),
                      rows: List.generate(items.length, (index) {
                        return DataRow(cells: [
                          DataCell(Text(items[index]["ExpenseType"].toString())),
                          DataCell(Text(items[index]["Vendor"].toString())),
                          DataCell(Text(items[index]["PurchaserName"].toString())),
                          DataCell(Text(items[index]["PurchaserNameBase"].toString())),
                          DataCell(Text(items[index]["PoNumber"].toString())),
                          DataCell(Text(items[index]["IndexCode"].toString())),
                          DataCell(Text(items[index]["NumberOfItems"].toString())),
                          DataCell(Text(items[index]["TotalCostString"].toString())),
                          DataCell(Text(items[index]["ApprovalStatus"].toString())),
                        ]);
                      }),
                    ),
                  ),
                ),
              ],
            ),
          ),
          tableHeader()
        ],
      )
    ]);
  }

  tableHeader() {
    return Row(
      children: [
        DataTable(
          columns: TableDataHelper.kTableColumnsList.getRange(0, 2).map((e) {
            return DataColumn(
              label: SizedBox(
                width: e.width,
                child: Text(e.title ?? ""),
              ),
            );
          }).toList(),
          rows: const [],
          // rows: List.generate(items.length, (index) {
          //   return DataRow(cells: [
          //     DataCell(Text(items[index]["ExpenseDate"].toString())),
          //     DataCell(Text(items[index]["CreatedByName"].toString())),
          //   ]);
          // }),
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: const [
                DataColumn(label: Text("Expense Type")),
                DataColumn(label: Text("Vendor")),
                DataColumn(label: Text("Purchaser:")),
                DataColumn(label: Text("Purchaser's Base")),
                DataColumn(label: Text("PO #:")),
                DataColumn(label: Text("Index Code")),
                DataColumn(label: Text("# Items:")),
                DataColumn(label: Text("Total Cost: ")),
                DataColumn(label: Text("Status")),
              ],
              rows: const [],
              // rows: List.generate(items.length, (index) {
              //   return DataRow(cells: [
              //     DataCell(Text(items[index]["ExpenseType"].toString())),
              //     DataCell(Text(items[index]["Vendor"].toString())),
              //     DataCell(Text(items[index]["PurchaserName"].toString())),
              //     DataCell(Text(items[index]["PurchaserNameBase"].toString())),
              //     DataCell(Text(items[index]["PoNumber"].toString())),
              //     DataCell(Text(items[index]["IndexCode"].toString())),
              //     DataCell(Text(items[index]["NumberOfItems"].toString())),
              //     DataCell(Text(items[index]["TotalCostString"].toString())),
              //     DataCell(Text(items[index]["ApprovalStatus"].toString())),
              //   ]);
              // }),
            ),
          ),
        ),
      ],
    );
  }

  sortingDynamicValueReturn({sizingInformation, isDescendingIntValue, title, onPressed, sortingTitleEnable = true}) {
    return Material(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      color: Colors.blue,
      child: sortingTitleEnable
          ? TextButton.icon(
          icon: const RotatedBox(
            quarterTurns: 0,
            child: Icon( Icons.arrow_downward, color: Colors.white),
          ),
          label: Text(title, textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: Theme.of(Get.context!).textTheme.titleLarge!.fontSize!)),
          onPressed: onPressed)
          : Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
        child: Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: Theme.of(Get.context!).textTheme.titleLarge!.fontSize!, fontWeight: FontWeight.bold)),
      ),
    );
  }

  itemsDataAdd(item, sizingInformation, {keyName}) {
    final sortedItems = isDescendingPrime.value ? items.reversed.toList() : items;
    final itemsNew = sortedItems[item];
    // return {
    //   "fixedTable": TableRow(
    //       decoration: BoxDecoration(color: item % 2 == 0 ? ColorConstants.PRIMARYBLUE.withOpacity(0.2) : ColorConstants.PRIMARYBLUE.withOpacity(0.5)),
    //       children: [
    //         returnScrollTableView(items: itemsNew, item: item, keyName: "ExpenseDate"),
    //         returnScrollTableView(items: itemsNew, item: item, keyName: "CreatedByName"),
    //       ]),
    //   "scrollableTable": TableRow(
    //       decoration: BoxDecoration(color: item % 2 == 0 ? ColorConstants.PRIMARYBLUE.withOpacity(0.2) : ColorConstants.PRIMARYBLUE.withOpacity(0.5)),
    //       children: [
    //         returnScrollTableView(items: itemsNew, item: item, keyName: "ExpenseType"),
    //         returnScrollTableView(items: itemsNew, item: item, keyName: "Vendor"),
    //         returnScrollTableView(items: itemsNew, item: item, keyName: "PurchaserName"),
    //         returnScrollTableView(items: itemsNew, item: item, keyName: "PurchaserNameBase"),
    //         returnScrollTableView(items: itemsNew, item: item, keyName: "PoNumber"),
    //         returnScrollTableView(items: itemsNew, item: item, keyName: "IndexCode"),
    //         returnScrollTableView(items: itemsNew, item: item, keyName: "NumberOfItems"),
    //         returnScrollTableView(items: itemsNew, item: item, keyName: "TotalCostString"),
    //         returnScrollTableView(items: itemsNew, item: item, keyName: "ApprovalStatus"),
    //       ])
    // };

    return DataRow(
        cells: [
          DataCell(returnScrollTableView(items: itemsNew, item: item, keyName: keyName)),
        ]
    );
  }

  // itemsDataAdd(item, sizingInformation) {
  //   final sortedItems = isDescendingPrime.value ? items.reversed.toList() : items;
  //   final itemsNew = sortedItems[item];
  //   return {
  //     "fixedTable": TableRow(
  //         decoration: BoxDecoration(color: item % 2 == 0 ? ColorConstants.PRIMARYBLUE.withOpacity(0.2) : ColorConstants.PRIMARYBLUE.withOpacity(0.5)),
  //         children: [
  //           returnScrollTableView(items: itemsNew, item: item, keyName: "ExpenseDate"),
  //           returnScrollTableView(items: itemsNew, item: item, keyName: "CreatedByName"),
  //         ]),
  //     "scrollableTable": TableRow(
  //         decoration: BoxDecoration(color: item % 2 == 0 ? ColorConstants.PRIMARYBLUE.withOpacity(0.2) : ColorConstants.PRIMARYBLUE.withOpacity(0.5)),
  //         children: [
  //           returnScrollTableView(items: itemsNew, item: item, keyName: "ExpenseType"),
  //           returnScrollTableView(items: itemsNew, item: item, keyName: "Vendor"),
  //           returnScrollTableView(items: itemsNew, item: item, keyName: "PurchaserName"),
  //           returnScrollTableView(items: itemsNew, item: item, keyName: "PurchaserNameBase"),
  //           returnScrollTableView(items: itemsNew, item: item, keyName: "PoNumber"),
  //           returnScrollTableView(items: itemsNew, item: item, keyName: "IndexCode"),
  //           returnScrollTableView(items: itemsNew, item: item, keyName: "NumberOfItems"),
  //           returnScrollTableView(items: itemsNew, item: item, keyName: "TotalCostString"),
  //           returnScrollTableView(items: itemsNew, item: item, keyName: "ApprovalStatus"),
  //         ])
  //   };
  // }

  returnScrollTableView({items, item, keyName}) {
    return Text(items[keyName].toString());

    // return SizedBox(
    //     height: 69.5,
    //     child: Center(
    //         child: Padding(
    //       padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
    //       child: Text(keyName != "workOrder" ? items[keyName].toString() : ""),
    //     )));
  }




}
