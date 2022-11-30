<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
        <!-- Webpage Title -->
        <title>책 리뷰공간</title>
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
        
           <style>
           
           
           
      
       
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
     <div class="container" style="height:350px">
      <div class="info" style="margin-left:150px;width:900px">
     <h1 style="text-align:center">리뷰 작성</h1>
             <table class="table" style="width:1000px;">
                    <thead>
                    <tr style="width:800px">
                        <th class="bi"scope="col" style="width:90px;">이름</th>
                        <th class="bi" scope="col"style="width:90px;">작성일</th>
                        <th class="bi" scope="col"style="width:90px;">내용</th>
                        <th></th>
                        <th></th>
                        </tr>
                    </thead>
                    <tbody id="reviews-box">
                    <tr>
                        <td class="bit"style="padding-top:18px; height:20px; align-items : center; width:210px; ">석롱이</td>
                        <td class="bit"style="padding-top:18px; height:20px;align-items : center; width:210px;">2022-11-22</td>
                        <td class="bit"style="padding-top:18px; height:20px;align-items : center; width:150px;"> <div class="textarea-container">
  <textarea style="text-align:left; resize:none" placeholder="리뷰를 작성해 주세요."></textarea>
 
</div>	</td>
						
					
						
						
                        <th class="bi" style="padding-top:25px"><button style="float:right;" class="btn btn-secondary" type="submit">입력</button></th>
                      
                        </tr>
                    </tbody>
                   </table>
</div></div></body>

</html>
