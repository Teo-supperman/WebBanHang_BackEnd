const category = document.getElementById('root');
const container = document.createElement('div');
container.setAttribute('class', 'container');
category.appendChild(container);
var request = new XMLHttpRequest();
request.open('GET', 'http://localhost:8080/category/', true);
request.onload = function () {
  // Begin accessing JSON data here
  var data = JSON.parse(this.response);
  
    data.forEach(movie => {
      const card = document.createElement('a');
      card.setAttribute('class', 'list-group-item');
      card.setAttribute('href', "");
      card.textContent = movie.fullNameCategory;
      container.appendChild(card);
    });
  
}
request.send();