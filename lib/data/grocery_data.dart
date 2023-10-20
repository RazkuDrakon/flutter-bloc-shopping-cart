class GroceryData{

  static List<Map<String, dynamic>> groceryProducts = [
    {
      'id':1,
      'name':'Bananas',
      'description':'Fresh bananas',
      'price':0.48,
      'imageUrl':'https://media.istockphoto.com/id/173242750/es/foto/racimo-de-pl%C3%A1tanos.jpg?s=612x612&w=0&k=20&c=-RqILbvnZIp5YZRm3BGc-i5n_e2VsJCUu9GU9OqVAbk=',
    },
    {
      'id':2,
      'name': 'Apples',
      'description':'Local apples',
      'price': 1.50,
      'imageUrl': 'https://www.thespruceeats.com/thmb/DANGagJ_-rTrdXHFEY6UOmM_wCE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/MirageC-e4b1bcd4d81d4f9b8d2cd45a06f83d36.jpg',
    },
    {
      'id': 3,
      'name': 'Milk',
      'description': 'Whole milk from local dairy',
      'price': 2.36,
      'imageUrl': 'https://www.southernliving.com/thmb/zCKBQZG85v0gxUpn5Nm_8elGJaA=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-1413944242-79c406e0bbe4435596bc671f95a949cb.jpg',
    },
    {
      'id':4,
      'name': 'Eggs',
      'description': 'Farm-fresh brown eggs',
      'price': 3.99,
      'imageUrl': 'data:image/jpeg;base64,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',
    },
    {
      'id':5,
      'name':'Bread',
      'description':'Fresh handmade bread',
      'price':0.25,
      'imageUrl': 'https://www.gastronomiavasca.net/uploads/image/file/4326/pan.jpg',
    },
    {
      'id':6,
      'name':'Pasta',
      'description':'Classic pasta',
      'price':0.62,
      'imageUrl': 'https://www.lavanguardia.com/files/article_gallery_microformat/uploads/2017/01/27/5e997978a5304.jpeg',
    },
  ];
}