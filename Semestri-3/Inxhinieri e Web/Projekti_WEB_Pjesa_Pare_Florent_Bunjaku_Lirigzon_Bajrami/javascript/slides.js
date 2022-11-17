const conatiner = document.querySelector('.silde-container');

let index = 0;

show();





function show(){
    const slides = document.querySelectorAll('.slide-show');
    for(let i = 0;i < slides.length;i++){
        slides[i].style.display = 'none';
    }

    
    if(index == slides.length){
        index = 0;
    }

    slides[index].style.display = 'flex';
    index++;

    

    setTimeout(show, 9000);
 }


