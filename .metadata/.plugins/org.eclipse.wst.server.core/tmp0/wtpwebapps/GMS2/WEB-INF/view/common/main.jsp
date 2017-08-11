<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  
<jsp:include page="common_head.jsp"/>
<div class="container">
	<div class="row">
		<div class="col-sm-4">
		<h3>학생관리</h3>
		 <ul class="list-group">
            <li class="list-group-item"><a onclick="moveTo('member','member_add')">학생정보 추가</a></li>
            <li class="list-group-item"><a onclick="moveTo('member','member_list')">학생정보 목록</a></li>
            <li class="list-group-item"><a onclick="moveTo('member','member_search')">학생정보 검색</a></li>
            <li class="list-group-item"><a onclick="moveTo('member','member_update')">학생정보 수정</a></li>
            <li class="list-group-item"><a onclick="deleteTo('member')">학생정보 삭제</a></li>
            </ul>
	    </div>
		<div class="col-sm-4">
		 	<h3>성적관리</h3>
		 	 <ul class="list-group">
	               <li class="list-group-item"><a onclick="moveTo('grade','grade_add')">성적 입력</a></li>
	               <li class="list-group-item"><a onclick="moveTo('grade','grade_list')">성적 목록</a></li>
	               <li class="list-group-item"><a onclick="moveTo('grade','grade_detail')">성적 상세</a></li>
	               <li class="list-group-item"><a onclick="moveTo('grade','grade_update')">성적 수정</a></li>
	               <li class="list-group-item"><a onclick="deleteTo('grade')">성적 삭제</a></li>
	            </ul>   
		</div>
		<div class="col-sm-4">
	    <h3>게시글 관리</h3>
	     <ul class="list-group">
	               <li class="list-group-item"><a onclick="moveTo('board','board_add')">게시글쓰기</a></li>
	               <li class="list-group-item"><a onclick="moveTo('board','board_list')">게시글목록</a></li>
	               <li class="list-group-item"><a onclick="moveTo('board','board_update')">게시글수정</a></li>
	              <li class="list-group-item"><a onclick="deleteTo('board')">게시글삭제</a></li>
	            </ul>
		</div>
		</div>
	</div>

<jsp:include page="footer.jsp"></jsp:include>