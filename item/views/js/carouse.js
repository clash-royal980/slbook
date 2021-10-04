var timer = setInterval(lunbo,2000);
var index=1;
function lunbo(){
    var lb_list = document.querySelectorAll('.carousebar-part .lunbo-img img');
    var lb_index = document.querySelectorAll('.carousebar-part .lunbo-img ul li');
    var lb_pic = document.getElementById('lb_pic');
    var lb_left =document.getElementById('lb_left');
    var lb_right =document.getElementById('lb_right');
    // console.log(index);
    lb_pic.style=`transform: translateX(${-(index)*600}px);`;
    for(var k of lb_index){
        k.className = k.className.replace(/active/,'');
    }
    lb_index[index].className+='active';
    
    for(var key of lb_index){
        key.onmouseover = function(){
            clearInterval(timer);
            timer = null;
            index--;
            for(var k of lb_index){
                k.classList.remove('active');
            }
            this.classList.add('active');
            // console.log(this.innerHTML-1);  
            lb_pic.style=`transform: translateX(${-(this.innerHTML-1)*600}px);`;
            index = this.innerHTML;
        }
        key.onmouseout = function(){
            timer = setInterval(lunbo,2000);
        }
    }
    for(var list_key of lb_list){
        list_key.onmouseover = function(){
            clearInterval(timer);
            timer = null;
        }
        list_key.onmouseout = function(){
            timer = setInterval(lunbo,2000);
        }
    }
    lb_left.onmouseover = function(){
        clearInterval(timer);
        timer = null;
    }
    lb_right.onmouseover = function(){
        clearInterval(timer);
        timer = null;
    }
    lb_left.onmouseout = function(){
        timer = setInterval(lunbo,2000);
    }
    lb_right.onmouseout = function(){
        timer = setInterval(lunbo,2000);
    }
    index++;
    if(index>=lb_index.length) index=0;
}
function lb_left(){
    var lb_index = document.querySelectorAll('.carousebar-part .lunbo-img ul li');
    var lb_pic = document.getElementById('lb_pic');
    console.log(index);
    if(index-2<0) index=lb_index.length+1;
    lb_pic.style=`transform: translateX(${-(index-2)*600}px);`;
    for(var k of lb_index){
        k.classList.remove('active');
    }
    lb_index[index-2].classList.add('active');
    index--; 
}
function lb_right(){
    // var lb_index = document.querySelectorAll('.carousebar-part .lunbo-img ul li');
    // var lb_pic = document.getElementById('lb_pic');
    // if(index>=lb_index.length) index=0;
    // console.log(index);
    // if(index>=lb_index.length) index=0;
    // lb_pic.style=`transform: translateX(${-(index)*600}px);`;
    // for(var k of lb_index){
    //     k.classList.remove('active');
    // }
    // lb_index[index].classList.add('active');
    // index++;
    lunbo();
}
// lunbo();