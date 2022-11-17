// Submit Button
const RegisterBtn = document.querySelector('#register');
// All input fields
const firstName = document.querySelector('#f_name');
const lastName = document.querySelector('#l_name');
const RegisterEmail = document.querySelector('#r_email');
const address = document.querySelector('#address'); 
const phone = document.querySelector('#phone'); 
const username = document.querySelector('#username'); 
const RegisterPassword = document.querySelector('#r_password');
const confirmPassword = document.querySelector('#confirm_password');

// All labels
const register = document.querySelector('.register');
const labels = register.querySelectorAll('label');

let registerValidate = (e) => {
    const FirstNameValue = firstName.value; 
    const LastNameValue = lastName.value;
    const EmailValue = RegisterEmail.value;
    const AddressValue = address.value;
    const PhoneValue = phone.value;
    const UsernameValue = username.value;
    const PasswordValue = RegisterPassword.value;
    const ConfirmPasswordValue = confirmPassword.value;

    if(FirstNameValue === ''){
      e.preventDefault();
      labels[0].style.backgroundColor = 'red';
    }else{
      labels[0].style.backgroundColor = '#00923f';
    }
    if(LastNameValue === ''){
      e.preventDefault();
      labels[1].style.backgroundColor = 'red';
    }else{
      labels[1].style.backgroundColor = '#00923f';    
    }
    if(EmailValue === ''){
      e.preventDefault();
      labels[2].style.backgroundColor = 'red';
    }else{
      labels[2].style.backgroundColor = '#00923f';
    }
    if(AddressValue === ''){
      e.preventDefault();
      labels[3].style.backgroundColor = 'red';
    }else{
      labels[3].style.backgroundColor = '#00923f';    
    }if(PhoneValue === ''){
      e.preventDefault();
      labels[4].style.backgroundColor = 'red';
    }else{
      labels[4].style.backgroundColor = '#00923f';
    }
    if(UsernameValue === ''){
      e.preventDefault();
      labels[5].style.backgroundColor = 'red';
    }else{
      labels[5].style.backgroundColor = '#00923f';    
    }if(PasswordValue === ''){
      e.preventDefault();
      labels[6].style.backgroundColor = 'red';
      console.log(PasswordValue);
    }else{
      labels[6].style.backgroundColor = '#00923f';
    }

  // Validimi me redex i email,emrit, numrit , paswordit dhe confirm passwordit

  //  validim per email
    if(!validEmail(EmailValue)){
      e.preventDefault();
      labels[2].style.backgroundColor = 'red';
    }else{
      labels[2].style.backgroundColor = '#00923f';
    }

  if(ConfirmPasswordValue == '' || !passwordConf(PasswordValue,ConfirmPasswordValue)){
    e.preventDefault();
      labels[7].style.backgroundColor = 'red';
    }else{
      labels[7].style.backgroundColor = '#00923f';    
    }
}

const validEmail = (email) =>{
  const Emailregex = /^([A-Za-z0-9_\-.])+@([A-Za-z0-9_\-.])+\.([A-Za-z]{2,4})$/;
  return Emailregex.test(email.toLowerCase()); 
} 

const passwordConf = (pass, pass2) => {
  return pass === pass2
}


RegisterBtn.addEventListener('click', registerValidate);