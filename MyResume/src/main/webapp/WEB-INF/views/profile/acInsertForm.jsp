<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<!-- LISTs -->
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>Jquery DataTable | Bootstrap Based Admin Template - Material Design</title>
<jsp:include page="/resources/resource.jsp"></jsp:include>
</head>

<body class="theme-red">
<!-- nav -->
<jsp:include page="/resources/nav.jsp"></jsp:include>  
<!-- nav./ -->
 
    <section class="content">
        <div class="container-fluid">
        
   <!-- Advanced Validation -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>AWARD & CERTIFICATIONS</h2>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <form action="acInsert.do" id="form_advanced_validation" method="POST" novalidate>
                                <div class="form-group form-float">
                                    <div class="form-line">
                                    	<input type="hidden" name="id" value="${id}" />
                                        <input placeholder="수상-자격증명" type="text" class="form-control" name="ac_nm" maxlength="50" minlength="3" required>
                                    </div>
                                    <div class="help-info">* 필수 작성</div>
                                </div>
                                <div class="form-group form-float">
                                    <div class="form-line">
                                    	<input placeholder="설명" type="text" class="form-control" name="ac_exp" maxlength="500" minlength="3" required>
                                    </div>
                                    <div class="help-info">* 필수 작성</div>
                                </div>
                                <div class="form-group form-float">
                                    <div class="form-line">	
                                    	<input id="inputMsg" placeholder="수상일('YYYY-MM-DD'형식으로 작성해주세요)" type="text" class="form-control" name="ac_date" maxlength="50" minlength="3" required>
                                    </div>
                                    <div class="help-info">* 필수 작성</div>
                                </div>
                                <button id="myBtn" class="btn btn-primary waves-effect" type="button">SUBMIT</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# Advanced Validation -->
        </div> 
    </section>

	<script>
	$("#form_advanced_validation").validate();

	 $("#myBtn").click(function(){
			var str= $("#inputMsg").val();

			var reg=/[0-9]{4}-[0-9]{2}-[0-3]{2}$/;

			var isOk2=reg.test(str);

			if(isOk2){	
				$('#form_advanced_validation').submit();
			}
			else {
				alert(str+"날짜형식x");
				$("#inputMsg").focus();
				return false;
			}	
		});	
	</script>
    
</body>

</html>