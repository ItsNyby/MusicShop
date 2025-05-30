function loadProducts(category = '', selling_type = '') {
  let url = '/api/products';
  const params = [];

  if (category) params.push(`category=${category}`);
  if (selling_type) params.push(`selling_type=${selling_type}`);
  if (params.length > 0) url += '?' + params.join('&');

  fetch(url)
    .then(res => res.json())
    .then(products => {
      const grid = document.getElementById('product-grid');
      grid.innerHTML = '';
      products.forEach(product => {
        const card = document.createElement('div');
        card.className = 'product-card';
        card.innerHTML = `
          <img src="/images/${product.image}" alt="${product.name}" />
          <h2>${product.name}</h2>
          <p>Harga: Rp ${product.price.toLocaleString()}</p>
          <p>Kategori: ${product.category}</p>
          <p>Type: ${product.selling_type}</p>
          <a href="/product.html?id=${product.id}">Lihat Detail</a>
        `;
        grid.appendChild(card);
      });
    });
}

document.getElementById('filter-form').addEventListener('submit', function (e) {
  e.preventDefault();
  const category = document.getElementById('category').value;
  const selling_type = document.getElementById('selling_type').value;
  loadProducts(category, selling_type);
});

loadProducts();
