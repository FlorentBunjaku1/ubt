// Login - Register change
// const form = document.querySelectorAll('form');
// const btn = document.querySelectorAll('.btn');



// btn[0].addEventListener('click',(e) => {
//     e.preventDefault();
//     form[0].classList.add('hidden');
//     form[1].classList.remove('hidden')});
// btn[1].addEventListener('click',(e) =>{
//     e.preventDefault();
//     form[1].classList.add('hidden');
//     form[0].classList.remove('hidden');
// });


// Login - Register change

// Login Validation 

const Btn = document.querySelector('button');
const email = document.querySelector('#email');
const password = document.querySelector('#password');
const emailLabel = document.querySelector('.emailLabel');
const passwordLabel = document.querySelector('.passwordLabel');


let validate = (e) =>{
    const emailValue = email.value;
    const passwordValue = password.value;
    
    if(emailValue === ''){
        e.preventDefault();
        emailLabel.style.backgroundColor = 'red';
    }else{
        emailLabel.style.backgroundColor = '#00923f';
    }

    if(passwordValue === ''){
        e.preventDefault();
        passwordLabel.style.backgroundColor = 'red';
    }else{
        passwordLabel.style.backgroundColor = '#00923f';    
    }

    if(!validEmail(emailValue)){
        e.preventDefault();
        emailLabel.style.backgroundColor = 'red';
    }else{
        emailLabel.style.backgroundColor = '#00923f';
    }
    
}
Btn.addEventListener('click',validate);


// Login Validation 
