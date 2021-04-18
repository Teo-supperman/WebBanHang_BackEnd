const allproduct = document.getElementById('allproduct');
var request = new XMLHttpRequest();

request.open('GET','http://localhost:8080/product/', true);
request.onload = function () {
  // Begin accessing JSON data here
  var data = JSON.parse(this.response);
  if (request.status >= 200 && request.status < 400) {
    data.forEach(movie => {
      const col_lg = document.createElement('div');
      col_lg.setAttribute('class','col-lg-4 col-md-6 mb-4');
      const cardh_100 = document.createElement('div');
	  cardh_100.setAttribute('class', 'card h-100');
      const cardofallproduct = document.createElement('a');
      cardofallproduct.setAttribute('class', '#');
      const img = document.createElement('img');
      img.setAttribute('class','card-img-top');
      img.setAttribute('src','http://placehold.it/700x400');
      img.setAttribute('alt',"");
      const card_body = document.createElement('div');
      card_body.setAttribute('class','card-body');
      const card_title = document.createElement('h4');
      card_title.setAttribute('class','card-title');
      const product = document.createElement('a');
      product.setAttribute('href','#');
      product.textContent = movie.fullName;
      const price = document.createElement('h5');
      price.textContent = movie.price;
      const card_text = document.createElement('p');
      card_text.setAttribute('class','card-text');
      card_text.textContent = movie.description;
      const card_footer = document.createElement('div');
      card_footer.setAttribute('class','card-footer');
      const text_muted = document.createElement('small');
      text_muted.setAttribute('class','text-muted');
      text_muted.textContent = movie.amount;
      allproduct.appendChild(col_lg);
      col_lg.appendChild(cardh_100);
      cardh_100.appendChild(cardofallproduct);
      cardofallproduct.appendChild(img);
      cardh_100.appendChild(card_body);
      card_body.appendChild(card_title);
      card_title.appendChild(product);
      card_body.appendChild(price);
      card_body.appendChild(card_text);
      cardh_100.appendChild(card_footer);
      card_footer.appendChild(text_muted);
      //
      
    });
  } else {
    const errorMessage = document.createElement('marquee');
    errorMessage.textContent = `API product no working`;
    allproduct.appendChild(errorMessage);
  }
}
request.send();