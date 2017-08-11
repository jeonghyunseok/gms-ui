<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
  	  <ul class="nav navbar-nav">
  	   <li class="active"><a onclick="moveTo('common','main')"><span class="glyphicon glyphicon-piggy-bank"></span> &nbsp; Home</a></li>
     
		<li class="dropdown">
      <a href="#" class="dropdown-toggle"
      	data-toggle="dropdown" role="button"
      	aria-haspopup="true"
      	aria-expanded="false">회원관리 <span class="caret">
      	</span></a>
      	<ul class="dropdown-menu">
   		<li><a onclick="moveTo('member','member_add')">학생추가</a></li>
   		<li><a onclick="moveTo('member','member_list')">학생목록</a></li>
   		<li><a onclick="moveTo('member','member_search')">학생조회</a></li>
   		<li role="separator" class="divider"></li>
   		<li><a onclick="deleteTo('member')">학생삭제</a></li>
      	</ul>
      	</li>
      
      	<li class="dropdown">
      <a href="#" class="dropdown-toggle"
      	data-toggle="dropdown" role="button"
      	aria-haspopup="true"
      	aria-expanded="false">성적관리 <span class="caret">
      	</span></a>
      	<ul class="dropdown-menu">
   		<li><a onclick="moveTo('grade','grade_add')">성적추가</a></li>
   		<li><a onclick="moveTo('grade','grade_list')">성적목록</a></li>
   		<li><a onclick="moveTo('grade','grade_detail')">성적조회</a></li>
   		<li role="separator" class="divider"></li>
   		<li><a onclick="deleteTo('grade')">성적 삭제</a></li>
      	</ul>
      	</li>
      	
      		<li class="dropdown">
      <a href="#" class="dropdown-toggle"
      	data-toggle="dropdown" role="button"
      	aria-haspopup="true"
      	aria-expanded="false">게시글관리 <span class="caret">
      	</span></a>
      	<ul class="dropdown-menu">
   		<li><a onclick="moveTo('board','board_add')">게시글추가</a></li>
   		<li><a onclick="moveTo('board','board_list')">게시글목록</a></li>
   		<li><a onclick="moveTo('board','board_update')">게시글조회</a></li>
   		<li role="separator" class="divider"></li>
   		<li><a onclick="deleteTo('board')">게시글 삭제</a></li>
      	</ul>
      	</li>
   	 </ul>
   		<span class="gms-float-right" style="color:white"> ${sessionScope.user.name} &nbsp;
   		 <a  id="logout" onclick="logout()">로그아웃</a></span>
	</div>
</nav>
	<script>
	function logout(){	
		location.href="${ctx}/common.do?action=move&page=index";
		return true;}
		
		function moveTo(dir,page){
			location.href="${ctx}/"+dir+".do?action=move&page="+page;
			}
		
		function deleteTo(dir){
			prompt(dir+"의id");
		}
	</script>