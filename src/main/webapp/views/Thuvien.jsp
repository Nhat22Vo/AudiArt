
<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trang chủ</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">
<style>
.body {
	min-width: 100%;
	min-height: 100%;
}
</style>
</head>

<body>
	<div class="fixed-header">
		<!-- chức năng -->
		<jsp:include page="Chuc_nang.jsp" />
	</div>
	<div class="container" style="margin-left: 150px">
		
<!-- Xu hướng âm nhạc -->
		<div class="comm"><jsp:include page="Tong_quat.jsp" /></div>
		       <jsp:include page="Xu_huong.jsp"/>
		
	</div>
	 
	<footer>
		<div class="fixed-footer bg-secondary">
			<h6><jsp:include page="Am_nhac.jsp" /></h6>
			<!-- Âm nhạc -->
		</div>
	</footer>
</body>

</html>
