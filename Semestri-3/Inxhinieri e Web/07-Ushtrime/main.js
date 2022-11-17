const loginBtn = document.querySelector('#firstA');
const registerBtn = document.querySelector('#secondA');


const login = document.querySelector('.login');
const register = document.querySelector('.register');

loginBtn.addEventListener('click', (e) =>{
    login.classList.add('form-style');
    login.classList.remove('hidden');

    register.classList.remove('form-style');
    register.classList.add('hidden');
});

registerBtn.addEventListener('click', (e) =>{
    register.classList.add('form-style');
    register.classList.remove('hidden');

    login.classList.remove('form-style');
    login.classList.add('hidden');
});


const inputs = document.querySelectorAll('input');

for(let i = 0; i < inputs.length;i++){
    inputs[i].addEventListener('keyup', function(e){
        e.preventDefault();
        LoginObj = {
            ...LoginObj,
            [e.target.name]: e.target.value
        }
     
        console.log(LoginObj);
        // if(e.target.name == 'username'){
        //     usernameValue = e.target.value;
        // }else if ( e.target.name == 'password'){
        //     passwordValue = e.target.value;
        // }
        // console.log('username is ' + usernameValue + ' password is ' + passwordValue);

    });
}

var usernameValue = "";
var passwordValue = "";
var LoginObj = {
    username: "",
    password: ""
}