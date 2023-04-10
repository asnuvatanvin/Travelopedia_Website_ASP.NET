let navbar = document.querySelector('.navbar')

document.querySelector('#login-btn').onclick = () =>{
    navbar.classList.toggle('active');
    loginForm.classList.remove('active');
    searchForm.classList.remove('active');
}


let searchForm = document.querySelector('.search-form')

document.querySelector('#search-btn').onclick = () =>{
    searchForm.classList.toggle('active');
    navbar.classList.remove('active');
    loginForm.classList.remove('active');
}
window.onscroll = () =>{
    navbar.classList.remove('active');
    loginForm.classList.remove('active');
    searchForm.classList.remove('active');
}


function openForm() {
    document.getElementById("myForm").style.display = "block";
    document.getElementById("myForm1").style.display = "none";
}


function openForm1(vehicle) {
    document.getElementById("myForm1").style.display = "block";
    document.getElementById("myForm").style.display = "none";
    if(vehicle=='plane')
    {
        window.alert("plane");
    }
    else if(vehicle=='car')
    {
        window.alert("car");
    }
    else
    {
        window.alert("bus");
    }
}
  
function closeForm() {
    document.getElementById("myForm").style.display = "none";
} 

function closeForm1() {
    document.getElementById("myForm1").style.display = "none";
} 


