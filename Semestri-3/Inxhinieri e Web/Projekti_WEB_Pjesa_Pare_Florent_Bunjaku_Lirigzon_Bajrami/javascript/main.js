
//Efekti ne drop down listat 
const list = document.querySelectorAll('.nav-menu  ul > li');
for(let i = 0; i < list.length;i++){
    const link = list[i].querySelector('a');
    list[i].addEventListener('mouseover',function (){
        list[i].style.backgroundColor='rgb(0,146,63)';
        link.style.color='white';
    });
    list[i].addEventListener('mouseout',function (){
        list[i].style.backgroundColor='white';
        link.style.color='black';
    })
}
//Efekti ne drop down listat 


//Kodi qe mundeson hapjen dhe mbylljen e drop down listave
const dropDown = document.querySelectorAll('.nav-menu ul');
const main = document.querySelector('main');
const btn = document.querySelectorAll('.nav-menu button');

for(let i = 0; i < dropDown.length;i++){
    main.addEventListener('mouseover',(e) => dropDown[i].style.display='none');
    btn[i].addEventListener('click', (e) => dropDown[i].style.display='flex');
}
//Kodi qe mundeson hapjen dhe mbylljen e drop down listave

// const btnAll = document.querySelector('.te-gjitha button');
// const moreBoxes = document.querySelectorAll('.more');
// for(let i = 0; i < moreBoxes.length;i++){
//     btnAll.addEventListener('click', function(){
//         moreBoxes[i].style.display='flex';
//         btnAll.style.display='none';
//     });
// }

