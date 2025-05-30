const params = new URLSearchParams(window.location.search);
const id = params.get('id');

fetch(`/api/products/${id}`)
  .then(res => res.json())
  .then(product => {
    const detailDiv = document.getElementById('product-detail');
    if (product) {
      detailDiv.innerHTML = `
        <h1>${product.name}</h1>
        <img src="/images/${product.image}" alt="${product.name}" />
        <p>Harga: Rp ${product.price.toLocaleString()}</p>
        <p>Kategori: ${product.category}</p>
        <p>Type: ${product.selling_type}</p>
        <a href="/">Kembali ke Home</a>
      `;
    } else {
      detailDiv.innerHTML = '<p>Produk tidak ditemukan</p>';
    }
  })
  .catch(() => {
    document.getElementById('product-detail').innerHTML = '<p>Error mengambil data produk.</p>';
  });
