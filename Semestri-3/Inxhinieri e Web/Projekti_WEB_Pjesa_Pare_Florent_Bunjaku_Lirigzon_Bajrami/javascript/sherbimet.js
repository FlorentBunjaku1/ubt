// const sherbimetBtn = document.querySelectorAll('.navsh-items a');
// for(let i = 0;i < sherbimetBtn.length;i++){
//     sherbimetBtn[i].addEventListener('click', (e) => {
//         e.preventDefault();
//         sherbimetBtn[i].parentElement.style.backgroundColor='green';
//         sherbimetBtn[i].style.color='white';
//     })
// }

const sherbimetBtn = document.querySelectorAll('.navsh-items a');
const sherbimet = document.querySelectorAll('.sherbimi'); 

sherbimetBtn[0].addEventListener('click', (e) => {
        e.preventDefault();
       
        // paraqitja e boxeve te klikuara 
        sherbimetBtn[0].parentElement.classList.add('active');
        sherbimetBtn[0].parentElement.classList.remove('normal');
        sherbimet[0].classList.remove('hide')

        // Largimi i boxes dhe gjerav tjera
        sherbimetBtn[1].parentElement.classList.remove('active');
        sherbimetBtn[2].parentElement.classList.remove('active');
        sherbimet[1].classList.add('hide')
        sherbimet[2].classList.add('hide')
});

sherbimetBtn[1].addEventListener('click', (e) => {
    e.preventDefault();
    // paraqitja e boxeve te klikuara
    sherbimetBtn[1].parentElement.classList.add('active');
    sherbimetBtn[1].parentElement.classList.remove('normal');
    sherbimet[1].classList.remove('hide')

    // Largimi i boxes dhe gjerav tjera
    sherbimetBtn[0].parentElement.classList.remove('active');
    sherbimetBtn[2].parentElement.classList.remove('active');
    sherbimet[0].classList.add('hide')
    sherbimet[2].classList.add('hide')
});



sherbimetBtn[2].addEventListener('click', (e) => {
    e.preventDefault();
    // paraqitja e boxeve te klikuara
    sherbimetBtn[2].parentElement.classList.add('active');
    sherbimetBtn[2].parentElement.classList.remove('normal');
    sherbimet[2].classList.remove('hide')

    // Largimi i boxes dhe gjerav tjera
    sherbimetBtn[1].parentElement.classList.remove('active');
    sherbimetBtn[0].parentElement.classList.remove('active');
    sherbimet[1].classList.add('hide')
    sherbimet[0].classList.add('hide')
});



