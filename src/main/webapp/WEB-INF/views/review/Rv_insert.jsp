<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>     
<c:url var='root' value='/'/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <!-- Webpage Title -->
        <title>책 리뷰공간</title>

        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">

        <!-- JS -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
                integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
                crossorigin="anonymous"></script>

        <!-- 구글폰트 -->
        <link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet">
        <style>
        body {
  font-family: Arial, Helvetica, sans-serif;
  padding: 20px;
}

.textarea-container {
  display: flex;
  align-items: center;
  justify-content: center;
}

textarea {
  border: 1px solid #999;
  border-radius: 4px;
  font-family: Arial, Helvetica, sans-serif;
  font-size: 18px;
  height: 60px;
  padding: 8px;
  width: 500px;
  text-align: center;
}

.btn1 {
  align-items: center;
  background: linear-gradient(90deg, #ff6f00, #ff9100);
  border: 1px solid #ccc;
  border-radius: 6px;
  color: white;
  cursor: pointer;
  display: flex;
  font-size: 14px;
  height: 32px;
  justify-content: cetner;
  margin-left: 4px;
  opacity: .9;
  padding: 2px 18px;
}

.btn1:hover {
  opacity: 1;
}

.result1 {
  margin-top: 6px;
  color: #888;
}
           
button{
  text-align:center;
  display:block;
  margin:auto;
  }
textarea{
  resize: none;
  }
        </style>
<script>
async function start() {
	  const textarea = document.querySelector("textarea");
	  const resultDiv = document.querySelector(".result");

	  // Load the TFLite model.
	  const model = await tfTask.NLClassification.CustomModel.TFLite.load({
	    model:
	      "https://storage.googleapis.com/tfweb/models/movie_review_sentiment_classification.tflite"
	  });

	  document.querySelector(".btn").addEventListener("click", async () => {
	    // Get the classification result for the entered text
	    const result = await model.predict(textarea.value);

	    // Show the results.
	    resultDiv.textContent = result.classes
	      .map((c) => `${c.className}: ${c.score.toFixed(3)}`)
	      .join(", ");
	  });
	}

	start();

</script>   
   </head>
<body>


	<form:form action="${root }Review/RvInsertPro" method="post" modelAttribute="insertRvBean">
		<div class="container" style="height:350px">
      <div class="info" style="margin-left:150px;width:900px">
     <h1 style="text-align:center">리뷰 등록</h1>
             <table class="table" style="width:1000px;">
                    <thead>
		<!-- enctype은 post방식일때만 쓰는 것으로 기본값인 application/x-www-form-urlencoded,
			 파일이나 이미지를 이용할 때 쓰는 multipart/form-data, 그리고 text/plain 방식이 있다.-->
		<!-- multipart/form-data는 함부로 쓰면 안된다. 전송할때 인코딩을 하여 보내는 방식이 아니고 이 인코딩 방식을
			  MultipartFile 기능이 관리를 해주기 때문에 같이 쓰는 경우가 아니면 그냥 enctype을 지워야 된다.-->
		<form:hidden path="bk_number"/>
		<!-- 기능 확인을 위한 임시 줄 -->
		<tr style="width:800px">  
				<th class="bi"scope="col" style="width:90px;">
					<form:label path="mb_id" class="input-group-text">작성자</form:label>
					<form:label path="rv_score" class="input-group-text">리뷰 평점</form:label>
					<form:label path="rv_content" class="input-group-text">리뷰 내용</form:label>
				</th>
        </tr>
                    </thead>
                    <tbody id="reviews-box">
                    <tr>
					<td class="bit" style="padding-top:18px; height:20px; align-items : center; width:210px; ">
						<form:input path="mb_id" readonly="true"/>
					</td>
					<td class="bit" style="padding-top:18px; height:20px; align-items : center; width:210px; ">
						<form:radiobutton path="rv_score" value="0" label="0점"/>
						<form:radiobutton path="rv_score" value="1" label="1점"/>
						<form:radiobutton path="rv_score" value="2" label="2점"/>
						<form:radiobutton path="rv_score" value="3" label="3점"/>
						<form:radiobutton path="rv_score" value="4" label="4점"/>
						<form:radiobutton path="rv_score" value="5" label="5점"/>
						<form:errors path="rv_score" style="color:red"></form:errors>
					</td>
					<td class="bit"style="padding-top:18px; height:20px;align-items : center; width:150px;">
						<div class="textarea-container">
							<form:textarea path="rv_content" class="form-control" id="bookReview" cols="30" rows="5" style="text-align:left; resize:none" placeholder="500자까지 입력할 수 있습니다."></form:textarea>
							<form:errors path="rv_content" style="color:red"></form:errors>
						</div>
					</td>
				<form:button style="float:right" class="btn btn-dark" type="submit">작성하기</form:button>	
				                        </tr>
                    </tbody>
                   </table>
				</div>
				</div>			
		</form:form>
					
</body>
</html>