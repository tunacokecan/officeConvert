<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>쉬운 우리말 공문서 수정기</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function(){
    $("#simplify").click(function(){
        var text = $("#inputText").val(); // 입력된 문장을 가져옵니다.
        $.ajax({
            url: 'API_ENDPOINT', // API 엔드포인트로 변경해야 합니다.
            type: 'get',
            data: {sentence: text},
            success: function(data) {
                // 성공적으로 응답을 받으면 화면에 출력합니다.
                $("#outputText").val(data);
            },
            error: function(err) {
                // 에러가 발생하면 콘솔에 에러를 출력합니다.
                console.error(err);
            }
        });
    });
});
</script>
</head>
<body>
<div>
    <h1>쉬운 우리말 공문서 수정기</h1>
    <textarea id="inputText" rows="6" cols="50" placeholder="공문서 문장을 입력하세요."></textarea><br>
    <button id="simplify">간소화하기</button><br>
    <textarea id="outputText" rows="6" cols="50" placeholder="간소화된 결과가 여기에 표시됩니다."></textarea>
</div>
</body>
</html>
