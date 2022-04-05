<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가입성공</title>
</head>
<body>
    <%
     request.setCharacterEncoding("UTF-8");
    
     String pid = request.getParameter("id");//이름
     String ppw = request.getParameter("pw");//비밀번호
     String pgender= request.getParameter("gender");//성별
     String[]phobby = request.getParameterValues("hobby");//취미->배열
     String pintro = request.getParameter("intro");
     
     
     
     //System.out.println(pname);
     //System.out.println(ppw);
    
    //out.println(pname +"님 반갑습니다.<br>");
    //out.println("비밀번호는" + ppw +"입니다.");
    //out.println("당신의 성별은 [" + pgender +"]입니다.<br>");
    //out.println("당신의 취미는 :");
    //if(phobby != null){
    //for(int i=0;i<phobby.length;i++){
    	// out.println(" " + phobby[i]);
     //   }  
    //}else {
    	//out.println("취미를 선택하지 않으셨습니다.");
    //}
       //  out.println("<br>");
         //out.println("자기소개 : " + pintro);
         
     %>
    
   <%= pid %>님 반갑습니다.<br>
    비밀번호는 <%= ppw  %><br>
    당신의 성별은[<%= pgender %>]입니다.<br>
    당신의 취미는 :
    <%
    if(phobby != null){
	    for(int i=0;i<phobby.length;i++){
	    	 out.println(" " + phobby[i]);
	      }  
	    }else {
	    	out.println("취미를 선택하지 않으셨습니다.");
	    } 
	  %>
	   <br>
	   자기소개 :<%=pintro %>

</body>
</html>