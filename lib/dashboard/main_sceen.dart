import 'package:flutter/material.dart';
import 'package:flutter_testing_ui/model/transaction_model.dart';
import 'package:flutter_testing_ui/model/transaction_type_model.dart';

class DashboardScreen extends StatelessWidget {
  List<TransactionType> _transactionType = [
    TransactionType(value: 384.9, percentage: 65, type: "Expense"),
    TransactionType(value: 23.1, percentage: 45, type: "Income"),
    TransactionType(value: 412.4, percentage: 80, type: "Loan"),
    TransactionType(value: 384.9, percentage: 65, type: "Expense"),
    TransactionType(value: 23.1, percentage: 45, type: "Income"),
    TransactionType(value: 412.4, percentage: 80, type: "Loan"),
    TransactionType(value: 384.9, percentage: 65, type: "Expense"),
    TransactionType(value: 23.1, percentage: 45, type: "Income"),
    TransactionType(value: 412.4, percentage: 80, type: "Loan"),
  ];

  List<TransactionHistoryModel> _txList = [
    TransactionHistoryModel(
        name: "Connor Devi", paymentFrom: "Recieve", paymentPrice: 278),
    TransactionHistoryModel(
        name: "Airline", paymentFrom: "Visa 123", paymentPrice: 453),
    TransactionHistoryModel(
        name: "Connor Devi", paymentFrom: "Recieve", paymentPrice: 323),
    TransactionHistoryModel(
        name: "Connor Devi", paymentFrom: "Recieve", paymentPrice: 278),
    TransactionHistoryModel(
        name: "Airline", paymentFrom: "Visa 123", paymentPrice: 453),
    TransactionHistoryModel(
        name: "Connor Devi", paymentFrom: "Recieve", paymentPrice: 323),
    TransactionHistoryModel(
        name: "Connor Devi", paymentFrom: "Recieve", paymentPrice: 278),
    TransactionHistoryModel(
        name: "Airline", paymentFrom: "Visa 123", paymentPrice: 453),
    TransactionHistoryModel(
        name: "Connor Devi", paymentFrom: "Recieve", paymentPrice: 323),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F9FB),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * 0.45,
                color: Color(0xff002047),
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            child: Center(
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color: Colors.black26,
                                    ),
                                    hintText: 'Search',
                                    hintStyle: TextStyle(
                                        color: Colors.black26, fontSize: 18)),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white60,
                            ),
                            child: Icon(Icons.person),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'My Wallet',
                                style: TextStyle(
                                    fontSize: 24, color: Colors.white),
                              ),
                              Text(
                                '27 Nov 2018',
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                              )
                            ],
                          ),
                          const Text(
                            '\$ 385',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                        width: double.maxFinite,
                        height: 150,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            primary: true,
                            itemCount: _transactionType.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  width: 200,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: Colors.red, width: 10),
                                            ),
                                            child: Center(
                                              child: Text(
                                                "${_transactionType[index].percentage.toString()}",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "${_transactionType[index].type}",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.grey),
                                                ),
                                                Text(
                                                  "\$ ${_transactionType[index].value.toString()}",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.black87),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            })),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "TRANSACTION",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Show All",
                              style: TextStyle(color: Colors.red, fontSize: 22),
                            ),
                          ],
                        ),
                      ),
                      ListView.builder(
                          itemCount: _txList.length,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          primary: false,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ListTile(
                                    leading: Container(
                                      height: 60,
                                      width: 60,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey,
                                      ),
                                      child: Icon(Icons.person),
                                    ),
                                    title: Column(
                                      children: [
                                        Text(
                                          "${_txList[index].name}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          "${_txList[index].paymentFrom}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              color: Colors.grey,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    trailing: Text(
                                      "\$ ${_txList[index].paymentPrice}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.green,
                                          fontSize: 16),
                                    ),
                                  ),
                                ),
                                Divider(),
                              ],
                            );
                          })
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
