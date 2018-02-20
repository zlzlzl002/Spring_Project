<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate var="year" value="${now}" pattern="yyyy" />
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Myresume - Individual Customized Resume Platform</title>
<style>
.text-muted.services-font {
	font-size: 0.9rem;
	text-align: left;
}

#pn {
	text-align: center;	
}

.pagination {
    display: inline-block;
}

.pagination a {
    color: black;
    float: left;
    padding: 8px 16px;
    text-decoration: none;
}
.pagination li.active a{
	color: #fed136;

}


</style>

<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom fonts for this template -->
<link
	href="${pageContext.request.contextPath}/resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'
	rel='stylesheet' type='text/css'>

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/resources/css/agency.css"
	rel="stylesheet">

</head>

<body id="page-top">



	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="${pageContext.request.contextPath}/home.do">My
				Resume</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fa fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav text-uppercase ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#resume"></a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#services"></a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#contact"></a></li>
					<li class="nav-item"><c:choose>
							<c:when test="${empty id }">
								<li class="nav-item"><a class="nav-link js-scroll-trigger"
									href="users/loginform.do">로그인</a></li>
								<li class="nav-item"><a class="nav-link js-scroll-trigger"
									href="users/signup_form.do">회원가입</a></li>
							</c:when>
							<c:otherwise>
								<li class="nav-item"><a class="nav-link js-scroll-trigger"
									href="profile/detail.do"><strong>${id }</strong>님</a></li>
								<li class="nav-item"><a class="nav-link js-scroll-trigger"
									href="users/logout.do">로그아웃</a></li>
							</c:otherwise>
						</c:choose></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Header -->
	<header class="masthead">
			<div class="intro-text">
				<div class="row">
				<div class="col-lg-12 text-center">
					<div class="intro-heading text-uppercase">My Resume People</div>
					<div class="intro-lead-in">My Resume에 등록된 인재들을
						찾아보세요.</div>
				</div>
			</div>
			<br />
			<br />
			<!-- 검색창 -->
<div class="container">
			<form action="search.do" method="post">
				<div class="row">
					<div class="col-lg-8 container">
						<div class="input-group">

							<div class="input-group-btn search-panel">
								<button type="button"
									class="btn btn-default btn-xl text-uppercase dropdown-toggle"
									data-toggle="dropdown">
									<span id="search_concept">${search_param }</span> <span class="caret"></span>
								</button>
								<ul class="dropdown-menu" role="menu">
									<li><a style="color: black;" href="#all">전체</a></li>
									<li><a style="color: black;" href="#skill">기술</a></li>
									<li><a style="color: black;" href="#edu">교육</a></li>
								</ul>
							</div>
       							<c:if test="${exp eq 'expAll' }">
							    <span class="input-group-addon">
       							<label class="radio-inline">
  									<input type="radio" name="exp" id="inlineRadio1" value="expAll" checked> 전체 
       							
								</label>
								<label class="radio-inline">
  									<input type="radio" name="exp" id="inlineRadio2" value="expNew"> 신입 
								</label>
								<label class="radio-inline">
  									<input type="radio" name="exp" id="inlineRadio3" value="expOld"> 경력 
								</label>
      							</span>
      							</c:if>
      							<c:if test="${exp eq 'expNew' }">
							    <span class="input-group-addon">
       							<label class="radio-inline">
  									<input type="radio" name="exp" id="inlineRadio1" value="expAll" > 전체 
       							
								</label>
								<label class="radio-inline">
  									<input type="radio" name="exp" id="inlineRadio2" value="expNew" checked> 신입 
								</label>
								<label class="radio-inline">
  									<input type="radio" name="exp" id="inlineRadio3" value="expOld"> 경력 
								</label>
      							</span>
      							</c:if>
      							<c:if test="${exp eq 'expOld' }">
							    <span class="input-group-addon">
       							<label class="radio-inline">
  									<input type="radio" name="exp" id="inlineRadio1" value="expAll" > 전체 
       							
								</label>
								<label class="radio-inline">
  									<input type="radio" name="exp" id="inlineRadio2" value="expNew"> 신입 
								</label>
								<label class="radio-inline">
  									<input type="radio" name="exp" id="inlineRadio3" value="expOld" checked> 경력 
								</label>
      							</span>
      							</c:if>
							<input type="hidden" name="search_param" value="${search_param }" id="search_param">
							<input type="text" class="form-control" name="keyword" placeholder="검색키워드를 입력하세요" value="${keyword }" required>
							<span class="input-group-btn">
								<button class="btn btn-primary btn-xl text-uppercase"
									id="searchBtn" type="submit">검색</button>
							</span>
						</div>
					</div>
				</div>
			</form>


			<!-- 검색창 끝. -->
			</div>
			
		</div>
	</header>
	

	<!-- Resume -->
	<section class="bg-light" id="resume">
<div class="container">
			<div class="row">
			<br />
			<br />
			<c:if test="${not empty searchList}">
				<c:forEach var="tmp" items="${searchList}">
					<div class="col-sm-4">
						<div class="team-member">
							<c:if test="${not empty tmp.saveFileName }">
								<img class="mx-auto rounded-circle"
									src="${pageContext.request.contextPath}/upload/${tmp.saveFileName }"
									alt="">
							</c:if>
							<c:if test="${empty tmp.saveFileName }">
								<img class="mx-auto rounded-circle"
									src="${pageContext.request.contextPath}/resources/img/team/2.jpg"
									alt="">
							</c:if>
							<h4 class="h4">
								<a href="profile/resume.do?id=${tmp.id }">${tmp.name }</a>
							</h4>
							<p class="text-muted">${tmp.email }</p>
						</div>
					</div>
				</c:forEach>
				</div>
		<div class="row">
		<ul class="pagination" style="margin:0 auto; display: inline-block;">
			<c:choose>
			<c:when test="${startPageNum ne 1 }">
				
					<a href="search.do?pageNum=${startPageNum-1 }&search_param=${search_param}&keyword=${keyword}&exp=${exp}"><li>&laquo;</li></a>
				
			</c:when>
			<c:otherwise>
				
					<a href="javascript:"><li class="disabled">&laquo;</li></a>
				
			</c:otherwise>
			</c:choose>
			<c:forEach var="i" begin="${startPageNum }" 
					end="${endPageNum }">	
				<c:choose>
					<c:when test="${i eq pageNum }">
						<a href="search.do?pageNum=${i }&search_param=${search_param}&keyword=${keyword}&exp=${exp}"><li class="active">${i }</li></a>
					</c:when>
					<c:otherwise>
						<a href="search.do?pageNum=${i }&search_param=${search_param}&keyword=${keyword}&exp=${exp}"><li>${i }</li></a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:choose>
				<c:when test="${endPageNum lt totalPageCount }">
					
						<a href="search.do?pageNum=${endPageNum+1 }&search_param=${search_param}&keyword=${keyword}&exp=${exp}"><li>&raquo;</li></a>
					
				</c:when>
				<c:otherwise>
					
						<a href="javascript:"><li class="disabled">&raquo;</li></a>
					
				</c:otherwise>
			</c:choose>
		</ul>
			
		</div>			
		</c:if>
				<c:if test="${empty searchList}">
				<div class="container">
				<p class="bg-warning" align="center">검색 조건에 해당하는 결과가 없습니다.</p>
				</div>
				</c:if>
			</div>

	</section>
	<!-- Footer -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<span class="copyright">Copyright &copy; Myresume ${year}</span>
				</div>
			</div>
		</div>
	</footer>
	


	<!-- Bootstrap core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Contact form JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jqBootstrapValidation.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/contact_me.js"></script>

	<!-- Custom scripts for this template -->
	<script
		src="${pageContext.request.contextPath}/resources/js/agency.min.js"></script>

	<script>
		$(document).ready(function(e) {
			$('.search-panel .dropdown-menu').find('a').click(function(e) {
				e.preventDefault();
				var param = $(this).attr("href").replace("#", "");
				var concept = $(this).text();
				$('.search-panel span#search_concept').text(concept);
				$('.input-group #search_param').val(param);
			});
		});

		$("#searchBtn").click(function() {

		});
	</script>
</body>
</html>
