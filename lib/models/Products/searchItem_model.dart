
import 'dart:convert';

List<SearchResult> searchResultFromJson(String str) => List<SearchResult>.from(json.decode(str).map((x) => SearchResult.fromJson(x)));

String searchResultToJson(List<SearchResult> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SearchResult {
  int boqQty;
  double boqRate;
  int jobNo;
  dynamic documentName;
  dynamic number;
  int amount;
  dynamic date;
  dynamic bank;
  dynamic name;
  dynamic typeName;
  dynamic costCode;
  int slNumber;
  int itemId;
  int documentId;
  int docTypeId;
  dynamic referenceNo;
  dynamic remarks;
  dynamic documentType;
  dynamic pendingName;
  int pendingQty;
  dynamic filename;
  dynamic newFilename;
  String itemCode;
  String description;
  dynamic unit;
  dynamic rate;
  int excelRate;
  int gridrate;
  int differenceRate;
  dynamic group;
  dynamic subGroup;
  dynamic category;
  dynamic subCategory;
  dynamic vatCode;
  dynamic vatPercentage;
  int openingQty;
  int openingCost;
  double lpCost;
  double avgCost;
  double sellingPrice;
  int stockIn;
  int stockOut;
  int inHandQty;
  Model1 model1;
  dynamic excelItemCode;
  dynamic hsncode;
  dynamic model2;
  dynamic model3;
  int maxQty;
  int minQty;
  int size;
  int weight;
  int length;
  int width;
  int thickness;
  int density;
  dynamic specification;
  dynamic locationName;
  dynamic binA;
  dynamic binB;
  dynamic binC;
  dynamic binD;
  dynamic binE;
  dynamic binF;
  dynamic binG;
  dynamic binH;
  dynamic status;
  int active;
  int delFlag;
  int noQty;
  UnitName unitName;
  int unitId;
  dynamic grpName;
  int grpId;
  dynamic sbgrpName;
  int sbgrpId;
  dynamic categoryName;
  int categoryId;
  int subCategoryId;
  dynamic subCategoryName;
  dynamic vat;
  int vatId;
  double vatPer;
  int multiUnitId;
  int fraction;
  int unitPrice;
  int productMultiPriceId;
  int multiPriceId;
  int price;
  int itemRate;
  int locId;
  int deptId;
  int stocktotloseqty;
  int totQty;
  int sumtotqty;
  int custlastsellingprice;
  int userId;
  int divId;
  int mrp;
  int sellingPrice1;
  int sellingPrice2;
  int custId;
  dynamic condition;
  dynamic condition1;
  dynamic condition2;
  dynamic serialNo;
  dynamic otherdescription;
  dynamic differenceItemcode;
  int selectedvalue;
  int quantityselected;
  int bselected;
  int priceselected;
  dynamic differencemodel;
  dynamic differenceItemdesc;
  int differencequantity;
  int orderquantity;
  int receivedquantity;
  dynamic imeiNumber;
  int imeicount;
  int invtype;
  dynamic type;
  dynamic lotNo;
  dynamic modelm1;
  dynamic modelm2;
  dynamic modelm3;
  dynamic modelm4;
  dynamic modelm5;
  dynamic fromDate;
  dynamic toDate;
  dynamic container;
  dynamic var1;
  dynamic var2;
  dynamic transferDate;
  dynamic transferNo;
  dynamic loadFrom;
  dynamic loadTo;
  dynamic user;
  int productId;
  dynamic custName;
  dynamic boqSubId;
  dynamic boqNo;
  dynamic projectName;
  dynamic startDate;
  dynamic endDate;

  SearchResult({
    required this.boqQty,
    required this.boqRate,
    required this.jobNo,
    required this.documentName,
    required this.number,
    required this.amount,
    required this.date,
    required this.bank,
    required this.name,
    required this.typeName,
    required this.costCode,
    required this.slNumber,
    required this.itemId,
    required this.documentId,
    required this.docTypeId,
    required this.referenceNo,
    required this.remarks,
    required this.documentType,
    required this.pendingName,
    required this.pendingQty,
    required this.filename,
    required this.newFilename,
    required this.itemCode,
    required this.description,
    required this.unit,
    required this.rate,
    required this.excelRate,
    required this.gridrate,
    required this.differenceRate,
    required this.group,
    required this.subGroup,
    required this.category,
    required this.subCategory,
    required this.vatCode,
    required this.vatPercentage,
    required this.openingQty,
    required this.openingCost,
    required this.lpCost,
    required this.avgCost,
    required this.sellingPrice,
    required this.stockIn,
    required this.stockOut,
    required this.inHandQty,
    required this.model1,
    required this.excelItemCode,
    required this.hsncode,
    required this.model2,
    required this.model3,
    required this.maxQty,
    required this.minQty,
    required this.size,
    required this.weight,
    required this.length,
    required this.width,
    required this.thickness,
    required this.density,
    required this.specification,
    required this.locationName,
    required this.binA,
    required this.binB,
    required this.binC,
    required this.binD,
    required this.binE,
    required this.binF,
    required this.binG,
    required this.binH,
    required this.status,
    required this.active,
    required this.delFlag,
    required this.noQty,
    required this.unitName,
    required this.unitId,
    required this.grpName,
    required this.grpId,
    required this.sbgrpName,
    required this.sbgrpId,
    required this.categoryName,
    required this.categoryId,
    required this.subCategoryId,
    required this.subCategoryName,
    required this.vat,
    required this.vatId,
    required this.vatPer,
    required this.multiUnitId,
    required this.fraction,
    required this.unitPrice,
    required this.productMultiPriceId,
    required this.multiPriceId,
    required this.price,
    required this.itemRate,
    required this.locId,
    required this.deptId,
    required this.stocktotloseqty,
    required this.totQty,
    required this.sumtotqty,
    required this.custlastsellingprice,
    required this.userId,
    required this.divId,
    required this.mrp,
    required this.sellingPrice1,
    required this.sellingPrice2,
    required this.custId,
    required this.condition,
    required this.condition1,
    required this.condition2,
    required this.serialNo,
    required this.otherdescription,
    required this.differenceItemcode,
    required this.selectedvalue,
    required this.quantityselected,
    required this.bselected,
    required this.priceselected,
    required this.differencemodel,
    required this.differenceItemdesc,
    required this.differencequantity,
    required this.orderquantity,
    required this.receivedquantity,
    required this.imeiNumber,
    required this.imeicount,
    required this.invtype,
    required this.type,
    required this.lotNo,
    required this.modelm1,
    required this.modelm2,
    required this.modelm3,
    required this.modelm4,
    required this.modelm5,
    required this.fromDate,
    required this.toDate,
    required this.container,
    required this.var1,
    required this.var2,
    required this.transferDate,
    required this.transferNo,
    required this.loadFrom,
    required this.loadTo,
    required this.user,
    required this.productId,
    required this.custName,
    required this.boqSubId,
    required this.boqNo,
    required this.projectName,
    required this.startDate,
    required this.endDate,
  });

  factory SearchResult.fromJson(Map<String, dynamic> json) => SearchResult(
    boqQty: json["BOQQty"] ?? 0,
    boqRate: json["BOQRate"] != null ? double.parse(json["BOQRate"].toString()) : 0.0,
    jobNo: json["JobNo"] ?? 0,
    documentName: json["DocumentName"] ?? "",
    number: json["Number"] ?? 0,
    amount: json["Amount"] ?? 0,
    date: json["Date"],
    bank: json["Bank"] ?? "",
    name: json["Name"] ?? "",
    typeName: json["TypeName"] ?? "",
    costCode: json["CostCode"] ?? "",
    slNumber: json["SlNumber"] ?? 0,
    itemId: json["ItemId"] ?? 0,
    documentId: json["DocumentId"] ?? 0,
    docTypeId: json["DocTypeId"] ?? 0,
    referenceNo: json["ReferenceNo"] ?? "",
    remarks: json["Remarks"] ?? "",
    documentType: json["DocumentType"] ?? "",
    pendingName: json["PendingName"] ?? "",
    pendingQty: json["PendingQty"] ?? 0,
    filename: json["Filename"] ?? "",
    newFilename: json["NewFilename"] ?? "",
    itemCode: json["ItemCode"] ?? "",
    description: json["Description"] ?? "",
    unit: json["Unit"] ?? "",
    rate: json["Rate"] ?? 0.0,
    excelRate: json["ExcelRate"] ?? 0,
    gridrate: json["Gridrate"] ?? 0,
    differenceRate: json["DifferenceRate"] ?? 0,
    group: json["Group"] ?? "",
    subGroup: json["SubGroup"] ?? "",
    category: json["Category"] ?? "",
    subCategory: json["SubCategory"] ?? "",
    vatCode: json["VatCode"] ?? "",
    vatPercentage: json["VatPercentage"] ?? "",
    openingQty: json["OpeningQty"] ?? 0,
    openingCost: json["OpeningCost"] ?? 0,
    lpCost: json["LPCost"]?.toDouble() ?? 0.0,
    avgCost: json["AvgCost"] ?? 0.0,
    sellingPrice: json["SellingPrice"]?.toDouble() ?? 0.0,
    stockIn: json["StockIn"] ?? 0,
    stockOut: json["StockOut"] ?? 0,
    inHandQty: json["InHandQty"] ?? 0,
    model1: model1Values.map[json["Model1"]] ?? Model1.R_DIB,
    excelItemCode: json["ExcelItemCode"] ?? "",
    hsncode: json["Hsncode"] ?? "",
    model2: json["Model2"] ?? "",
    model3: json["Model3"] ?? "",
    maxQty: json["MaxQty"] ?? 0,
    minQty: json["MinQty"] ?? 0,
    size: json["Size"] ?? 0,
    weight: json["Weight"] ?? 0,
    length: json["Length"] ?? 0,
    width: json["Width"] ?? 0,
    thickness: json["Thickness"] ?? 0,
    density: json["Density"] ?? 0,
    specification: json["Specification"] ?? "",
    locationName: json["LocationName"] ?? "",
    binA: json["Bin_A"] ?? "",
    binB: json["Bin_B"] ?? "",
    binC: json["Bin_C"] ?? "",
    binD: json["Bin_D"] ?? "",
    binE: json["Bin_E"] ?? "",
    binF: json["Bin_F"] ?? "",
    binG: json["Bin_G"] ?? "",
    binH: json["Bin_H"] ?? "",
    status: json["Status"] ?? "",
    active: json["Active"] ?? 0,
    delFlag: json["DelFlag"] ?? 0,
    noQty: json["NoQty"] ?? 0,
    unitName: unitNameValues.map[json["UnitName"]] ?? UnitName.KG,
    unitId: json["UnitId"] ?? 0,
    grpName: json["GrpName"] ?? "",
    grpId: json["GrpId"] ?? 0,
    sbgrpName: json["SbgrpName"] ?? "",
    sbgrpId: json["SbgrpId"] ?? 0,
    categoryName: json["CategoryName"] ?? "",
    categoryId: json["CategoryId"] ?? 0,
    subCategoryId: json["SubCategoryId"] ?? 0,
    subCategoryName: json["SubCategoryName"] ?? "",
    vat: json["VAT"] ?? "",
    vatId: json["VatId"] ?? 0,
    vatPer: json["VatPer"] ?? 0.0,
    multiUnitId: json["MultiUnitId"] ?? 0,
    fraction: json["Fraction"] ?? 0,
    unitPrice: json["UnitPrice"] ?? 0,
    productMultiPriceId: json["ProductMultiPriceId"] ?? 0,
    multiPriceId: json["MultiPriceId"] ?? 0,
    price: json["Price"] ?? 0,
    itemRate: json["ItemRate"] ?? 0,
    locId: json["LocId"] ?? 0,
    deptId: json["DeptId"] ?? 0,
    stocktotloseqty: json["stocktotloseqty"] ?? 0,
    totQty: json["TotQty"] ?? 0,
    sumtotqty: json["Sumtotqty"] ?? 0,
    custlastsellingprice: json["Custlastsellingprice"] ?? 0,
    userId: json["UserId"] ?? 0,
    divId: json["DivId"] ?? 0,
    mrp: json["MRP"] ?? 0,
    sellingPrice1: json["SellingPrice1"] ?? 0,
    sellingPrice2: json["SellingPrice2"] ?? 0,
    custId: json["CustId"] ?? 0,
    condition: json["Condition"],
    condition1: json["Condition1"],
    condition2: json["Condition2"],
    serialNo: json["SerialNo"],
    otherdescription: json["Otherdescription"],
    differenceItemcode: json["DifferenceItemcode"],
    selectedvalue: json["selectedvalue"] ?? 0,
    quantityselected: json["Quantityselected"] ?? 0,
    bselected: json["Bselected"] ?? 0,
    priceselected: json["Priceselected"] ?? 0,
    differencemodel: json["Differencemodel"],
    differenceItemdesc: json["DifferenceItemdesc"],
    differencequantity: json["Differencequantity"] ?? 0,
    orderquantity: json["Orderquantity"] ?? 0,
    receivedquantity: json["Receivedquantity"] ?? 0,
    imeiNumber: json["IMEI_Number"],
    imeicount: json["imeicount"] ?? 0,
    invtype: json["invtype"] ?? 0,
    type: json["Type"],
    lotNo: json["LOTNo"],
    modelm1: json["modelm1"],
    modelm2: json["modelm2"],
    modelm3: json["modelm3"],
    modelm4: json["modelm4"],
    modelm5: json["modelm5"],
    fromDate: json["FromDate"],
    toDate: json["ToDate"],
    container: json["Container"],
    var1: json["Var1"],
    var2: json["Var2"],
    transferDate: json["TransferDate"],
    transferNo: json["TransferNo"],
    loadFrom: json["LoadFrom"],
    loadTo: json["LoadTo"],
    user: json["User"],
    productId: json["ProductId"] ?? 0,
    custName: json["CustName"],
    boqSubId: json["BOQSubId"],
    boqNo: json["BOQNo"],
    projectName: json["ProjectName"],
    startDate: json["StartDate"],
    endDate: json["EndDate"],
  );


  Map<String, dynamic> toJson() => {
    "BOQQty": boqQty,
    "BOQRate": boqRate,
    "JobNo": jobNo,
    "DocumentName": documentName,
    "Number": number,
    "Amount": amount,
    "Date": date,
    "Bank": bank,
    "Name": name,
    "TypeName": typeName,
    "CostCode": costCode,
    "SlNumber": slNumber,
    "ItemId": itemId,
    "DocumentId": documentId,
    "DocTypeId": docTypeId,
    "ReferenceNo": referenceNo,
    "Remarks": remarks,
    "DocumentType": documentType,
    "PendingName": pendingName,
    "PendingQty": pendingQty,
    "Filename": filename,
    "NewFilename": newFilename,
    "ItemCode": itemCode,
    "Description": description,
    "Unit": unit,
    "Rate": rate,
    "ExcelRate": excelRate,
    "Gridrate": gridrate,
    "DifferenceRate": differenceRate,
    "Group": group,
    "SubGroup": subGroup,
    "Category": category,
    "SubCategory": subCategory,
    "VatCode": vatCode,
    "VatPercentage": vatPercentage,
    "OpeningQty": openingQty,
    "OpeningCost": openingCost,
    "LPCost": lpCost,
    "AvgCost": avgCost,
    "SellingPrice": sellingPrice,
    "StockIn": stockIn,
    "StockOut": stockOut,
    "InHandQty": inHandQty,
    "Model1": model1Values.reverse[model1],
    "ExcelItemCode": excelItemCode,
    "Hsncode": hsncode,
    "Model2": model2,
    "Model3": model3,
    "MaxQty": maxQty,
    "MinQty": minQty,
    "Size": size,
    "Weight": weight,
    "Length": length,
    "Width": width,
    "Thickness": thickness,
    "Density": density,
    "Specification": specification,
    "LocationName": locationName,
    "Bin_A": binA,
    "Bin_B": binB,
    "Bin_C": binC,
    "Bin_D": binD,
    "Bin_E": binE,
    "Bin_F": binF,
    "Bin_G": binG,
    "Bin_H": binH,
    "Status": status,
    "Active": active,
    "DelFlag": delFlag,
    "NoQty": noQty,
    "UnitName": unitNameValues.reverse[unitName],
    "UnitId": unitId,
    "GrpName": grpName,
    "GrpId": grpId,
    "SbgrpName": sbgrpName,
    "SbgrpId": sbgrpId,
    "CategoryName": categoryName,
    "CategoryId": categoryId,
    "SubCategoryId": subCategoryId,
    "SubCategoryName": subCategoryName,
    "VAT": vat,
    "VatId": vatId,
    "VatPer": vatPer,
    "MultiUnitId": multiUnitId,
    "Fraction": fraction,
    "UnitPrice": unitPrice,
    "ProductMultiPriceId": productMultiPriceId,
    "MultiPriceId": multiPriceId,
    "Price": price,
    "ItemRate": itemRate,
    "LocId": locId,
    "DeptId": deptId,
    "stocktotloseqty": stocktotloseqty,
    "TotQty": totQty,
    "Sumtotqty": sumtotqty,
    "Custlastsellingprice": custlastsellingprice,
    "UserId": userId,
    "DivId": divId,
    "MRP": mrp,
    "SellingPrice1": sellingPrice1,
    "SellingPrice2": sellingPrice2,
    "CustId": custId,
    "Condition": condition,
    "Condition1": condition1,
    "Condition2": condition2,
    "SerialNo": serialNo,
    "Otherdescription": otherdescription,
    "DifferenceItemcode": differenceItemcode,
    "selectedvalue": selectedvalue,
    "Quantityselected": quantityselected,
    "Bselected": bselected,
    "Priceselected": priceselected,
    "Differencemodel": differencemodel,
    "DifferenceItemdesc": differenceItemdesc,
    "Differencequantity": differencequantity,
    "Orderquantity": orderquantity,
    "Receivedquantity": receivedquantity,
    "IMEI_Number": imeiNumber,
    "imeicount": imeicount,
    "invtype": invtype,
    "Type": type,
    "LOTNo": lotNo,
    "modelm1": modelm1,
    "modelm2": modelm2,
    "modelm3": modelm3,
    "modelm4": modelm4,
    "modelm5": modelm5,
    "FromDate": fromDate,
    "ToDate": toDate,
    "Container": container,
    "Var1": var1,
    "Var2": var2,
    "TransferDate": transferDate,
    "TransferNo": transferNo,
    "LoadFrom": loadFrom,
    "LoadTo": loadTo,
    "User": user,
    "ProductId": productId,
    "CustName": custName,
    "BOQSubId": boqSubId,
    "BOQNo": boqNo,
    "ProjectName": projectName,
    "StartDate": startDate,
    "EndDate": endDate,
  };
}

enum Model1 {
  R_DIB
}

final model1Values = EnumValues({
  "R-DIB": Model1.R_DIB
});

enum UnitName {
  KG,
  LTR,
  M_D,
  PR
}

final unitNameValues = EnumValues({
  "KG": UnitName.KG,
  "LTR": UnitName.LTR,
  "M-D": UnitName.M_D,
  "PR": UnitName.PR
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
