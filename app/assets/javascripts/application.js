// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

document.addEventListener("turbolinks:load", function() {
    $('.info').prop("disabled",false);
    var count = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0];
    var countJoker = [0,0,0,0,0,0,0,0,0,0,0,0,0];
    $(document).ready(function() {
      
        $(".num").click(function() {
             var recup = this.id.replace('but',"");
             console.log(recup);
            if (count[recup] % 2 == 0) {
                $(this).css('background-image', "url('assets/etat2-but.png')");
            } else {
                $(this).css('background-image', "url('assets/etat1-but.png')");
            }
            count[recup]+=1;  
         });
          $(".exp").click(function() {
             var recup = this.id.replace('but-exp',"");
             console.log(recup);
            if (countJoker[recup] % 2 == 0) {
                 $(this).css('background-image', "url('assets/gold2-but.png')");
            } else {
                $(this).css('background-image', "url('assets/gold1-but.png')");
            }
            countJoker[recup]+=1;  
         });
    });

    function getRandomInt(max) {
        return Math.floor(Math.random() * Math.floor(max));
    }

    $("#trash").click(function() {
        for (var i = 0; i < 49; i++) {
            $("#but" + i).css('background-color', '#85d7e5').css('border-color', '#1f155b').css('color', '#000');
        }
        var count = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0];
        console.log(count);
    });


    $("#aleatoire").click(function() {

        for (var i = 0; i < 49; i++) {
            $("#but" + i).css('background-color', '#85d7e5').css('border-color', '#1f155b').css('color', '#000');
        }
        var count = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0];
        var temp =0;
        var check = true;
        var proposit = new Array(5);
        proposit[0] = getRandomInt(49);
        for (var i = 1; i < 5; i++) {
            var inst = i - 1;
            do {
                check = true;
               temp = getRandomInt(49);
                for (var u = inst; u >= 0; u--) {
                    if (proposit[u] == temp) {
                        check = false;
                    }
                }
            } while (check == false);
            proposit[i] = temp;
        }
        count[proposit[0]] += 1;
        count[proposit[1]] += 1;
        count[proposit[2]] += 1;
        count[proposit[3]] += 1;
        count[proposit[4]] += 1;
        $("#but" + proposit[0]).css('background-color', '#1f155b').css('border-color', '#fff').css('color', '#fff');
        $("#but" + proposit[1]).css('background-color', '#1f155b').css('border-color', '#fff').css('color', '#fff');
        $("#but" + proposit[2]).css('background-color', '#1f155b').css('border-color', '#fff').css('color', '#fff');
        $("#but" + proposit[3]).css('background-color', '#1f155b').css('border-color', '#fff').css('color', '#fff');
        $("#but" + proposit[4]).css('background-color', '#1f155b').css('border-color', '#fff').css('color', '#fff');
        console.log(proposit);
        temp =0;
    });

    
    var nbChoix = 0;
    $(".num").click(function() {
        var sendGrille = [];
        count.forEach(function(element,i) {
            if (element % 2 == 1) {
                nbChoix += 1;
                sendGrille.push(i);
            }
        });
        if (nbChoix != 5) {
            $('.num').prop("disabled",true);
            $('.num').prop("disabled",false);
        } else {
           document.getElementById('num1').value =" " + sendGrille[0];
           document.getElementById('num2').value =" " + sendGrille[1];
           document.getElementById('num3').value =" " + sendGrille[2];
           document.getElementById('num4').value =" " + sendGrille[3];
           document.getElementById('num5').value =" " + sendGrille[4];
          
           $('.num').prop("disabled",true);
           $('#but'+ sendGrille[0]).prop("disabled",false);
           $('#but'+ sendGrille[1]).prop("disabled",false);
           $('#but'+ sendGrille[2]).prop("disabled",false);
           $('#but'+ sendGrille[3]).prop("disabled",false);
           $('#but'+ sendGrille[4]).prop("disabled",false);
        }
        nbChoix = 0;
    });
    
    var nbChoixetoile = 0;
    $(".exp").click(function() {
        var sendGrille = [];
        countJoker.forEach(function(element,i) {
            if (element % 2 == 1) {
                nbChoixetoile += 1;
                sendGrille.push(i);
            }
        });
        if (nbChoixetoile != 2) {
            $('.exp').prop("disabled",false);
        } else {
           document.getElementById('exp1').value =" " + sendGrille[0];
           document.getElementById('exp2').value =" " + sendGrille[1];
           $('.exp').prop("disabled",true);
           $('#but-exp'+ sendGrille[0]).prop("disabled",false);
           $('#but-exp'+ sendGrille[1]).prop("disabled",false);

        }
        nbChoixetoile = 0;
    });
    
    
    
    $(document).ready(function() {
  $(".title").lettering();
  $(".button").lettering();
});

$(document).ready(function() {
  animation();
}, 1000);




function animation() {
  var title1 = new TimelineMax();
  
  title1.to(".button", 0, { visibility: 'hidden', opacity: 0})
  title1.staggerFromTo(".title span", 0.5, 
  {ease: Back.easeOut.config(1.7), opacity: 0, bottom: -80},
  {ease: Back.easeOut.config(1.7), opacity: 1, bottom: 0}, 0.05);
  
}

    
    
    
    
})


