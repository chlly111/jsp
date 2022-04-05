<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
	function checkForm()
	{
		if(document.joinForm.id.value == "")
		{
			alert("아이디는 필수 입력 사항입니다.");
			document.joinForm.id.focus();
			return false;
		}
		else if(document.joinForm.pw.value == "")
		{
			alert("비밀번호는 필수 입력 사항입니다.");
			document.joinForm.pw.focus();
			return false;
		}
		else return true;
		
	}
</script>
<title>폼만들기연습</title>
</head>
<body>
	<h2>회원가입</h2>
	<hr>
	<form action="join_ok.jsp" method="get">
		이름 : <input type="text" name="name" size="10"><br><br>
	<form action="join_ok.jsp" method="get" name="joinForm" onsubmit="return checkForm()">
		아이디 : <input type="text" name="id" size="10"><br><br>
		비밀번호 : <input type="text" name="pw" size="10"><br><br>
		성별 : <input type="radio" name="gender" value="남">남 <input type="radio" name="gender" value="여"> 여 <br><br>
		취미 : <input type="checkbox" name="hobby" value="영화감상">영화감상 
		<input type="checkbox" name="hobby" value="독서">독서 
		<input type="checkbox" name="hobby" value="운동">운동 <br><br>
		자기소개:
		<textarea rows="10" cols="30" name="intro">50자 이상</textarea><br><br>
		<hr>
		<input type="submit" value="가입하기"> &nbsp;&nbsp;&nbsp;&nbsp;
		<input type="reset"  value="취소하기">
	</form>
</body>
</html>
