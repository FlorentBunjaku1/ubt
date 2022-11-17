
// Console dir and log //
// console.dir(document);
// console.log(document.domain);
// console.log(document.URL);
// console.log(document.title);
// document.title = 'Hello';
// console.log(document.doctype);
// console.log(document.head);
// console.log(document.body);
// console.log(document.all);
// document.all[9].textContent = 'Hello';


// textContent , innerText, innerHTML//
// var paragrafet = document.getElementById('titulliLenda');
// console.log(paragrafet.innerText);
// paragrafet.textContent = 'Hello 1'
// paragrafet.innerText = 'Hello 2'
// paragrafet.innerHTML = '<p>Hello 3</p>'


//getElementById//
// var text = document.getElementById('p01');
// text.style.backgroundColor='red';

// getElementsByClassName HTMLKolleksion//
// var lista = document.getElementsByClassName('listTek');
// for(let i = 0; i < lista.length; i++){
//     if(i%2 == 0){
//     lista[i].style.backgroundColor='grey';
//     }
// }

// getElementsByTagName Kthen HTMLKolleksion//
// var paragrafet = document.getElementsByTagName('p');
// console.log(paragrafet);
// paragrafet[0].style.color='yellow';

//querySelector na kthen nje node//
// var titulli = document.querySelector('#titulliLenda');
// titulli.style.color = 'red';

//querySelectorAll na kthen nodeList//
var listat = document.querySelectorAll('li');
console.log(listat)