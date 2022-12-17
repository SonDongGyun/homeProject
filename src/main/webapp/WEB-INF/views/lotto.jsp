<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
            //로또 한게임생성
		var numTest = 0;
		var numNext = 0;
       
            //10  = 1초  = 1000
           var interval = setInterval(function(){
        	      numTest ++
            var lotto = []; //6개로 값이 나열될것이기 때문에 배열처리 - 값은 담지 않음
            	
           
            //1. 로또 번호는 6개

            //6번처리 - 반복문
            for(var i=0;i<6;i++){
                //새로 추가될 숫자 : 1~45사이의 숫자가 랜덤하게 처리
                //random() : 0~1사이의 랜덤한 소수
                //floor() : 내림처리해서 정수로 변경
                var num = Math.floor(Math.random() * 44) + 1;


                //현재 상태는 같은 숫자가 나올수 있음
                //lotto라는 배열에 담긴 숫자와 같이 같으면 안됨
                for(var j in lotto){
                    while(num == lotto[j]){ //현재 새로나온 숫자가 기존 숫자와 같으면
                        num = Math.floor(Math.random() * 44) + 1;
                    }
                }


                //push() - 배열에 마지막에 값추가메서드
                lotto.push(num);
            }

            //오름차순으로 숫자 정렬
            lotto.sort(function(a,b){
                return a - b;
            });

            //문서에 출력
            /* if(lotto[0] == 12){
            	document.write('첫번째 번호가 !!!!!!!!: ' + lotto[0] +'<br />');
            	clearInterval(interval);
            } */
            if(lotto[0] == 7 && lotto[1] == 16  && lotto[2] == 25
            		 && lotto[3] == 29  && lotto[4] == 35  && lotto[5] == 36){
	            document.getElementById('test2').innerText =  '저번주 로또 번호 : ' + lotto;
	            numNext++;
	            if(numNext >0){
	            	  var lotto = []; //6개로 값이 나열될것이기 때문에 배열처리 - 값은 담지 않음
	                  for(var i=0;i<6;i++){
	                      var num = Math.floor(Math.random() * 44) + 1;
	                      for(var j in lotto){
	                          while(num == lotto[j]){ //현재 새로나온 숫자가 기존 숫자와 같으면
	                              num = Math.floor(Math.random() * 44) + 1;
	                          }
	                      }
	                      lotto.push(num);
	                  }

	                  lotto.sort(function(a,b){
	                      return a - b;
	                  });
		            document.getElementById('test3').innerText =  '이번주 로또 번호 : ' + lotto;
		            clearInterval(interval);
		            window.open('/app/main');
	            	
	            }
            }
            document.getElementById('test1').innerText = numTest;
             
            },100);
            
        </script>
</head>
<body>
	<div id='test1'></div>
	<div id='test2'></div>
	<div id='test3'></div>
	
</body>
