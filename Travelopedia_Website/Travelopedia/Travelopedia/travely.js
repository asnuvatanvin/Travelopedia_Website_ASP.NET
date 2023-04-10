let navbar = document.querySelector('.navbar')

document.querySelector('#Label1').onclick = () =>{
    navbar.classList.toggle('active');
    loginForm.classList.remove('active');
    searchForm.classList.remove('active');
}

// let loginForm = document.querySelector('.login-form')

// document.querySelector('#login-btn').onclick = () =>{
//     loginForm.classList.toggle('active');
//     navbar.classList.remove('active');
//     searchForm.classList.remove('active');
// }

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
    document.getElementById("Hidden").value=vehicle;
    
}

function closeForm() {
   document.getElementById("myForm").style.display = "none";
} 

function closeForm1() {
   document.getElementById("myForm1").style.display = "none";
} 
