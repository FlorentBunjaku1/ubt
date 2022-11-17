let respoNav = document.querySelector('.respo-nav');
let dropDownBtn = document.querySelector('.drop-down  .button');
// ------------------------//
let listBtn = document.querySelectorAll('.respo-nav .button');
let respoList = document.querySelectorAll('.respo-nav > div > ul');


let counter = 0;

dropDownBtn.addEventListener('click', (e) => {
    e.preventDefault();
    if(counter == 0){
         respoNav.style.display = 'block';
        counter = 1;
    }else {
        respoNav.style.display = 'none';    
        counter = 0;
    }

});


for(let i = 0; i < listBtn.length;i++){
    let counter2 = 0;
    listBtn[i].addEventListener('click', (e) => {
        e.preventDefault();
        if(counter2 == 0){
            respoList[i].classList.remove('hide');
            counter2 = 1;
        }else {
            respoList[i].classList.add('hide');
            counter2 = 0;
        }
    
    });
}