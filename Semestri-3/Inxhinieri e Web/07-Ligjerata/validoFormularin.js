

const btnSubmit = document.getElementById('Btn-submit');

const validoFormen = (ngjarje) => {

    const perdoruesi = document.getElementById('userid');
    const fjalkalimi = document.getElementById('pass');
    const emriPlote = document.getElementById('emri');
    const adresa = document.getElementById('adresaEmailit');
    
    
    if (perdoruesi.value === ""){
        alert('Ju Lutem shtoni perdoruesin');
        perdoruesi.focus();
        return false;
    }
    if (emriPlote.value === ""){
        alert('Ju Lutem shtoni fjalekalimin');
        emriPlote.focus();
        return false;
    }
    if (fjalkalimi.value === ""){
        alert('Ju Lutem shtoni Emrin e plote');
        fjalkalimi.focus();
        return false;
    }
    if (adresa.value === ""){
        alert('Ju Lutem shtoni emailAdresen');
        adresa.focus();
        return false;
    }
    return true;
};

btnSubmit.addEventListener('click',validoFormen);