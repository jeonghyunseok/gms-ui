<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="../common/common_head.jsp"/>

<div id="container">
	<table id="member_list_tab">
		<tr>
		<th style="width: 5%;">NO</th>
		<th style="width: 10%;">아이디</th>
		<th style="width: 10%;">이름</th>
		<th style="width: 15%;">이메일</th>
		<th style="width: 15%;">전 공</th>
		<th style="width: 10%;">학 점</th>
		<th style="width: 15%;">전 화</th>
		<th style="width: 10%;">등록일</th>
		<th style="width: 10%;">수정/삭제</th>
		</tr>
	
		<tr >
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td><a href="${ctx}/member/member_detail.jsp?id=null">수정</a>/<a href="<%= request.getContextPath()%>/member/service_delete.jsp?id=null">삭제</a></td>
		</tr>

	</table>
</div>
<jsp:include page="../common/footer.jsp"></jsp:include>