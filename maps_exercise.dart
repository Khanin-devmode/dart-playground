//Pizza ordering

void main() {
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegeterian': 6.5,
  };

  const order = ['margherita', 'pepperoni', 'hawaiian'];

  double total = 0;

  for (var item in order) {
    if (pizzaPrices.keys.contains(item)) {
      total += pizzaPrices[item] as double;
    } else {
      print('${item} is not on the menu');
    }
  }

  print('Total: \$${total}');

  var restaurants = [
    {
      'name': 'Pizza Mario',
      'cuisine': 'Italian',
      'ratings': [4.0, 3.5, 4.5]
    },
    {
      'name': 'Chez Anne',
      'cuisine': 'French',
      'ratings': [5.0, 4.5, 4.0]
    },
    {
      'name': 'Navaratna',
      'cuisine': 'Indian',
      'ratings': [4.0, 4.5, 4.0]
    }
  ];

  for (var restaurant in restaurants) {
    var ratings = restaurant['ratings'] as List<double>;
    double sumRating = 0.0;
    for (double rating in ratings) {
      sumRating += rating;
    }
    double avgRating = sumRating / ratings.length;

    restaurant['avgRaging'] = avgRating;
  }

  print(restaurants);
}
