<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>채용공고를 입력해주세요.</title>
<jsp:include page="/resources/resource.jsp"></jsp:include>
<style>
	/* SmartEditer를 위한 texarea에 적용할 css */
	#content{
		display : none;
		height : 400px;
		width : 100%;
	}
</style>
<!-- SmartEditor 관련 javascript 로딩 -->
<script src="${pageContext.request.contextPath }/SmartEditor/js/HuskyEZCreator.js"></script>
</head>
<body>

<div class="theme-red">
<!-- nav -->
<jsp:include page="/resources/nav.jsp"></jsp:include>
<!-- /nav -->

	<section class="content">
		<div class="container-fluid">
			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h3>채용공고 입력폼입니다.</h3>
						</div>
						
						<div class="body table-responsive">
							<!-- 새글 작성 form -->
							<form action="insert.do" method="post">
								<div class="form-group">
									<label for="writer">작성자</label>
									<c:if test="${id eq 'admin' }">
										<input class="form-control" type="text" id="writer" value="관리자" disabled />
									</c:if>
								</div> 
								<div class="form-group">
									<label for="title">제목</label>
									<input class="form-control" type="text" name="title" id="title" placeholder="제목을 입력해주세요"/>
								</div>
								<div class="form-group">
									<label for="content">내용</label>
									<textarea name="content" id="content" cols="30" rows="10" placeholder="내용을 입력해주세요"></textarea>
								</div>
								<button onclick="submitContents(this)" class="btn btn-success" type="submit">확인</button>
							</form> 
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
</div>
<script>
	var oEditors = [];
	
	//추가 글꼴 목록
	//var aAdditionalFontSet = [["MS UI Gothic", "MS UI Gothic"], ["Comic Sans MS", "Comic Sans MS"],["TEST","TEST"]];
	
	nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors,
		elPlaceHolder: "content",
		sSkinURI: "${pageContext.request.contextPath}/SmartEditor/SmartEditor2Skin.html",	
		htParams : {
			bUseToolbar : true,				// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
			bUseVerticalResizer : true,		// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
			bUseModeChanger : true,			// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
			//aAdditionalFontList : aAdditionalFontSet,		// 추가 글꼴 목록
			fOnBeforeUnload : function(){
				//alert("완료!");
			}
		}, //boolean
		fOnAppLoad : function(){
			//예제 코드
			//oEditors.getById["content"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
		},
		fCreator: "createSEditor2"
	});
	
	function pasteHTML() {
		var sHTML = "<span style='color:#FF0000;'>이미지도 같은 방식으로 삽입합니다.<\/span>";
		oEditors.getById["content"].exec("PASTE_HTML", [sHTML]);
	}
	
	function showHTML() {
		var sHTML = oEditors.getById["content"].getIR();
		alert(sHTML);
	}
		
	function submitContents(elClickedObj) {
		oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);	// 에디터의 내용이 textarea에 적용됩니다.
		
		// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("content").value를 이용해서 처리하면 됩니다.
		
		//검증후 폼의 전송을 막고 싶으면 return false; 
		
		try {
			elClickedObj.form.submit();//폼전송
		} catch(e) {}
	}
	
	function setDefaultFont() {
		var sDefaultFont = '궁서';
		var nFontSize = 24;
		oEditors.getById["content"].setDefaultFont(sDefaultFont, nFontSize);
	}
</script>
</body>
</html>


