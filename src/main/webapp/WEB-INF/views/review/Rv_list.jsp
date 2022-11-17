<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<c:url var='root' value='/'/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>

<!-- 게시글 리스트 -->
<div style="margin-top:100px">
		
			<table>
				<thead>
					<tr>
						<td colspan="5"></td>
						<td><a href='${root}Review/RvInsert?rv_id=${rv_id}&rv_bknumber=${rv_bknumber}'>댓글작성</a></td>
					</tr>
					<tr>
						<th>리뷰번호</th>
						<th>리뷰책번호</th>
						<th>작성아이디</th>
						<th>작성날짜</th>
						<th>리뷰점수</th>
						<th>리뷰내용</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="rvl" items="${reviewlist }">
					<tr>
						<td>${rvl.rv_number }</td>
						<td>${rvl.rv_bknumber }</td>
						<td>${rvl.rv_id } </td>
						<td>${rvl.rv_date } </td>
						<td>${rvl.rv_score }</td>
						<td>${rvl.rv_content }</td>				
					</tr>
					<tr>
						<td colspan="4"></td>
						<td><a href='${root }Review/RvUpdate?rv_number=${rvl.rv_number }&rv_id=${rvl.rv_id }&rv_bknumber=${rvl.rv_bknumber}'>댓글수정</a></td>
						<td><a href="${root }Review/RvDeletePro?rv_number=${rvl.rv_number }&rv_id=${rvl.rv_id }&rv_bknumber=${rvl.rv_bknumber}">댓글삭제</a></td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			
			<!-- 페이지네이션 -->
    		<div>
				<ul>
													
					<c:forEach var="idx" begin="${pageCountBean.minPage }" end="${pageCountBean.maxPage }">
						<c:choose>
							<c:when test="$idx == pageCountBean.currentPage">
							<li class="page-item active">
								<a href="${root}wish/wish_info?wi_mbid=admin&page=${idx}" >${idx}</a>
							</li>		
						</c:when>
						
						<c:otherwise>
							<li class="page-item">
								<a href="${root}wish/wish_info?wi_mbid=admin&page=${idx}" >${idx}</a>
							</li>						
						</c:otherwise>						
						</c:choose>									
					</c:forEach>					
					
					<c:choose>
						<c:when test="${pageCountBean.max >= pageCountBean.pageCnt}">
							<li class="page-item disabled">
								<a href="#" class="page-link">다음</a>
							</li>
						</c:when>
					
					<c:otherwise>
						<li class="page-item">
							<a href="${root}wish/wish_info?wi_mbid=admin&page=${pageCountBean.nextPage}" class="page-link">다음</a>
						</li>
					</c:otherwise>
					</c:choose>
				</ul>
			</div>		

			
		</div>

</body>
</html>