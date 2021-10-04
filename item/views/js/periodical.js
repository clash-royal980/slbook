var periodical_new = document.getElementById('periodical_new');
var periodical_hot = document.getElementById('periodical_hot');
var new_rank = document.getElementById('new_rank');
var hot_rank =document.getElementById('hot_rank');
// console.log(periodical_new.innerHTML);
// console.log(periodical_hot.innerHTML);
periodical_new.onmouseover = function (){
    periodical_new.classList.add('active');
    periodical_hot.classList.remove('active');
    new_rank.style =`display:block`;
    hot_rank.style =`display:none`;
}
periodical_hot.onmouseover = function (){
    periodical_hot.classList.add('active');
    periodical_new.classList.remove('active');
    hot_rank.style =`display:block`;
    new_rank.style =`display:none`;
}