<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>\

<jsp:include page="../common/common_head.jsp"/>

		<div id="container">
		<form id="member_search_box" action="<%=request.getContextPath()%>/member/service_search.jsp" method="get">
		검색조건 <select name="option">
				<option value="id">id</option>
				<option value="name">name</option>
			</select><br />
           <input type="text" name="search" />
		<input type="submit" />
		</form>
		
		</div>
<jsp:include page="../common/footer.jsp"></jsp:include>
























































































































































="../common/footer.jsp" %>