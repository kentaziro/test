<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="../common/common.css"/>		<!-- footer, title css -->
		<link rel="stylesheet" type="text/css" href="../common/category.css" />		<!-- category css -->
		<link rel="stylesheet" type="text/css" href="../main/main.css"/>			<!-- main css -->
		<link rel="stylesheet" type="text/css" href="../member/member.css"/>
		
		<script type="text/javascript" src="../jquery-2.1.1.js"></script>
	</head>
	<body style="min-width:1260px;">
		<c:set var="root" value="${pageContext.request.contextPath}"/>
		
		<div>
			<jsp:include page="../common/title.jsp"/>			<!-- title -->
		</div>
		
		<script type="text/javascript" src="../jQueryWeb.js"></script> 
		<script type="text/javascript" src="../jQueryWeb2.js"></script>
		
		<div class="content">									<!-- content -->
			<div class="myPage_content">
				<div class="myPage_box">
					<div class="result_title">					<!-- login title -->
						<img src="./../images/modify.png" height="55">
					</div>
					<ul class="content_box">
						<li class="myProfile">					<!-- user의 프로필사진과 닉네임 받아오는 부분 -->
							<div class="myPhoto">
								<img src="./../images/profile.png" width="150px">
							</div>
							<div class="modify_myphoto">		<!-- 프로필 사진 변경 부분 -->
								<a href="" onclick="">
									<img src="./../images/modify_submit.png" height="25">
								</a>
							</div>
							<div class="myNick">				<!-- user의 닉네임 미리 뿌려줘야함 -->
								<input type="text" class="profile_input error"  style="width:50px;"value="level" name="level" readonly>
								<input type="text" class="profile_input error" value="나영이" name="level" readonly>
							</div>
						</li>
						<li>
							<div class="profile_content">		<!-- user정보 : 순서대로 level, email, 우편번호, 남긴 리뷰갯수  -->
								
								<p>
									<img src="./../images/pick.png" height="25"><b class="label" >아이디</b>
									<input type="text" class="profile_input error" style="width:170px;" value="e-mail" name="e-mail" readonly>
								</p>
								<p>								<!-- user의 기본 우편번호를 미리 뿌려줘야함 -->
									<img src="./../images/pick.png" height="25"><b class="label">우편번호</b>
									<input type="text" id="zip1" name="zip1" class="profile_update error" style="ime-mode: active;">
									- <input type="text" id="zip2" name="zip2" class="profile_update error" style="ime-mode: active;">
									<a id="zipcode" name="zipcode" type="button" onclick="openDaumPostcode()"> 
										<img src="./../images/zipcode.png" height="25">
									</a>
									<label id="postCheck" name="postCheck" for="zip2" generated="true" class="error"> <br/></label>
								</p>
								<p>
									<img src="./../images/pick.png" height="25"><b class="label" >비밀번호</b>
									<input type="password" class="profile_update error" style="ime-mode: active; width:100px;" id="password" name="password"
									placeholder="" onfocus="this.placeholder=''" onblur="this.placeholder=''">
									<label for="password" generated="true" class="error"> <br/></label>
								</p>
								<p>
									<img src="./../images/pick.png" height="25"><b class="label" >비밀번호 확인</b>
									<input type="password" class="profile_update error" style="ime-mode: active; width:100px;" id="pwchk" name="pwchk"
									placeholder="" onfocus="this.placeholder=''" onblur="this.placeholder=''">
									<label for="pwchk" generated="true" class="error"> <br/></label>
								</p>
							</div>
						</li>
					</ul>
					
					<div class="bottom_Btn">
						<a href="" onclick="">
							<img src="./../images/ok.png" height="30">
						</a>
						<a href="" onclick="">
							<img src="./../images/cancel.png" height="30">
						</a>
					</div>
				</div>
			</div>
		</div>
		
		<div>
			<jsp:include page="../common/footer.jsp"/>			<!-- footer -->
		</div>
	</body>
</html>