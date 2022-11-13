// appBar: AppBar(
//         centerTitle: true,
//         title: Text(
//           "Catalogue App",
//           style: TextStyle(color: Colors.black),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: (CatalogueModel.items != null && CatalogueModel.items.isNotEmpty)
//             ? GridView.builder(
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   mainAxisSpacing: 16,
//                   crossAxisSpacing: 16,
//                 ),
//                 itemBuilder: (context, index) {
//                   final item = CatalogueModel.items[index];
//                   return Card(
//                       clipBehavior: Clip.antiAlias,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10)),
//                       child: GridTile(
//                           header: Container(
//                             padding: EdgeInsets.all(12),
//                             decoration: BoxDecoration(
//                               color: Colors.blueAccent,
//                             ),
//                             child: Text(
//                               item.name,
//                               style: TextStyle(
//                                   wordSpacing: 2,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white),
//                             ),
//                           ),
//                           footer: Container(
//                             padding: EdgeInsets.all(12),
//                             decoration: BoxDecoration(
//                               color: Colors.blueAccent,
//                             ),
//                             child: Text(
//                               item.price.toString(),
//                               style: TextStyle(
//                                   wordSpacing: 2,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white),
//                             ),
//                           ),
//                           child: Image.network(item.image)));
//                 },
//                 itemCount: CatalogueModel.items.length)
//             : Center(
//                 child: CircularProgressIndicator(),
//               ),
//       ),
//       drawer: mydrawer(),



// Catalogue.dart 
// factory Item.fromMap(Map<String, dynamic> map) {
//     Item(id: map["id"],
//     name: map["name"],
//     desc: map["desc"],
//     price: map["price"],
//     image: map["image"]);
//   }
//   toMap()=> {
//     "id"=id,
//     "name"=name,
//     "desc"=desc,
//     "price"=price,
//     "image"=image,
//   };