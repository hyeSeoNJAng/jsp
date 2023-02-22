<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name ="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link 	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
		rel="stylesheet" 
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
		crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

<link rel="stylesheet" href="../../resources/css/common/header.css">
<link rel="stylesheet" href="../../resources/css/common/footer.css">
<link rel="stylesheet" href="../../resources/css/customer/login.css">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" 
		crossorigin="anonymous"></script>
<script src="../resources/js/customer/main.js" defer></script>

</head>
<body>
<div class="wrap">
	<!-- 헤더 시작 -->
	<%@ include file ="../../common/header.jsp" %>
	<!-- 헤더 끝 -->

	<!-- 컨텐츠 시작 -->
	<container>
		<div id = "contents">
			<div id = "title"> <!-- 타이틀 메뉴-->
				<h1 align = "center">LOGIN</h1>
			</div>
			<hr><br>
			<div id = "section">
				<div class = "login"> 
					<form name = "loginform" action = "loginAction.jsp" method="post">
						<script type ="text/javascript">
							alert('관리자 로그인');
							window.lacation = '../../admin/product/admin_productList.jsp';
						</script>
					</form>
				</div>
			</div>
		</div>
	</container>

	<!-- 컨텐츠 종료 -->

	<!-- 푸터 시작 -->
	<%@ include file ="../../common/footer.jsp" %>
	<!-- 푸터 끝 -->
</div>
</body>
</html>