import 'package:flutter/material.dart';
import 'models/Product.dart';
import 'ProductDetail.dart';

class ListProduct extends StatefulWidget {
  //List<Product> _lstproducts;

  ListProduct();

  @override
  ListProductState createState() => ListProductState();
}

//------------------------------

class ListProductState extends State<ListProduct> {
  List<Product> lstproducts = products;
  @override
  void initState() {
    super.initState();
    lstproducts = products;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tiêu đề"),
        ),
        body: Container(
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Color(0xffcf83a9),
          ),
          child: GridView.builder(
              itemCount: lstproducts.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Số cột là 2
                childAspectRatio: 0.75, // Tỷ lệ chiều cao / chiều rộng
                crossAxisSpacing: 10.0, // Khoảng cách giữa các cột
                mainAxisSpacing: 10.0, // Khoảng cách giữa các hàng
              ),
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 5.0, // Hiệu ứng đổ bóng cho sản phẩm
                  child: Column(
                    children: [
                      //Vung cua anh
                      //

                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Hero(
                            tag: "${lstproducts[index].id}",
                            child: GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => ProductDetail(
                                            product: lstproducts[index]))),
                                child: Image.asset(
                                  lstproducts[index].image.toString(),
                                  fit: BoxFit
                                      .cover, // Đảm bảo hình ảnh phủ kín vùng
                                )),
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          lstproducts[index].title.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                          maxLines: 1,
                          overflow:
                              TextOverflow.ellipsis, // Cắt bớt text nếu quá dài
                        ),
                        subtitle: Text(
                          "\$${lstproducts[index].price.toString()}",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: Icon(Icons
                            .shopping_cart_outlined), // Biểu tượng giỏ hàng
                      ),
                    ],
                  ),
                );
              }),
        ));
  }
}
