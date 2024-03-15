void main() {
  List fruits = [
    {'Name': 'Apple', 'Color': 'Red', 'Price': 2.50},
    {'Name': 'Banana', 'Color': 'Yellow', 'Price': 1.20},
    {'Name': 'Orange', 'Color': 'Orange', 'Price': 1.80}];

  print('Original Fruit Details before Discount:');
  displayFruitDetails(fruits);

  applyPriceDiscount(fruits, 10);

  print('\nFruit Details After Applying 10% Discount:');
  displayFruitDetails(fruits);
}

//user defined functions
void displayFruitDetails(List fruits) {
  for (var fruit in fruits) {
    print('Name: ${fruit['Name']}, Color: ${fruit['Color']}, Price: ${fruit['Price'].toString()} Taka ');
  }
}

void applyPriceDiscount(List fruits, double discountPercentage) {
  for (var fruit in fruits) {
    double currentPrice = fruit['Price'];
    double discountedPrice = currentPrice - (currentPrice * (discountPercentage / 100));
    fruit['Price'] = discountedPrice;
  }
}

