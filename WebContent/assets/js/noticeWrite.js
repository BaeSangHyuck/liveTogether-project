         	function send(){
         		if(!writeForm.boardTitle){
         			alert("제목을 작성해주세요.");
         			return;
         		}
         		
         		if(!writeForm.boardContent){
         			alert("내용을 작성해주세요.");
         			return;
         		}
         		
         		writeForm.submit();
         		setTimeout(function(){
         			console.log("들어옴");
         		}, 3000);
         	}
         	
         	$(".file-wrap").change(function(e){
                var file = e.target.files[0];
                var img = $(this).find("img");
                var reader = new FileReader();
                reader.readAsDataURL(file);
                
                 reader.onload = function(e){
                    if(e.target.result.indexOf("image") != -1){
                       img.attr("src", e.target.result)
                    }else{
                       img.attr("src", contextPath+"/images/no_img.jpg");
                    }
                 }
              });
             
             function cancelFile(fileName){
                $("input#" + fileName).val("");
                $("img#" + fileName + "Img").attr("src", contextPath+"/images/파일첨부.png");
             }