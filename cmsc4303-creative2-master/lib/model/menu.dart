class MenuItem {
  String name;
  String price;
  String imageURL;
  String description;

  MenuItem({
    this.name,
    this.price,
    this.imageURL,
    this.description,
  });
}

var menuItemList = [
  MenuItem(
    name: 'Hamburger',
    price: '3.50',
    imageURL:
        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.KOhOyx3HEt6lvKTBNyDVFwHaE8%26pid%3DApi&f=1',
    description: 'Delicious hamburger patty served on a bun. Condiments cost extra.',
  ),
  MenuItem(
    name: 'Salad',
    price: '5.00',
    imageURL:
        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.7wvoEOll0u-K3lYrrwhJUgHaE8%26pid%3DApi&f=1',
    description:
        'Healthy salad served with grilled or crispy chicken. Croutons and chees cost extra',
  ),
  MenuItem(
    name: 'Chicken Sandwich',
    price: '3.25',
    imageURL:
        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.cUwqpEmsp2C5m_ViKnnyqgHaFV%26pid%3DApi&f=1',
    description: 'Grilled or crispy chicken served on a bun. Condiments cost extra.',
  ),
  MenuItem(
    name: 'French Fries',
    price: '1.50',
    imageURL:
        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.2v7uDL8M-SmwVqtps6jF1wHaE8%26pid%3DApi&f=1',
    description: 'Traditional potato cut fries, generously salted.',
  ),
  MenuItem(
    name: 'Onion Rings',
    price: '2.00',
    imageURL:
        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.i-XqCkzHu21K5oy0TAFc_gHaLH%26pid%3DApi&f=1',
    description: 'Battered and deep friend onion slices.',
  ),
  MenuItem(
    name: 'Sweet Potato Fries',
    price: '1.50',
    imageURL:
        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.tYDUGrITXplB3YIk_O_FuwHaJo%26pid%3DApi&f=1',
    description: 'Cut sweet potatoes fried and generously salted.',
  ),
  MenuItem(
    name: 'Brownie',
    price: '2.00',
    imageURL:
        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.Vha2GuMpvQFvyffWm_lwawHaF0%26pid%3DApi&f=1',
    description: 'Sweet chocolate brownie served with a side of caramel and hazelnuts',
  ),
];
var orderList = menuItemList[7];
