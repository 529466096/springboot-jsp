<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link href="${ctx}/static/css/plugins/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
<input type="hidden" name="id" value="${news.id }" />
<div class="form-group">
	<label class="col-sm-4 control-label" for="title">标题 <span class="text-danger">*</span></label>
	<div class="col-sm-8">
		<input type="text" id="title" name="title" value="${news.title }" required class="form-control">
	</div>
</div>
<div class="form-group">
	<label class="col-sm-4 control-label" for="description">内容 <span class="text-danger">*</span></label>
	<div class="col-sm-8">
		<input type="text" id="description" name="description" value="${news.description }" required class="form-control">
	</div>
</div>
<div class="form-group">
	<label class="col-sm-4 control-label" for="address">地址 <span class="text-danger">*</span></label>
	<div class="col-sm-8">
		<input type="text" id="address" name="address" value="${news.address }" required class="form-control">
	</div>
</div>
<div class="form-group">
	<label class="col-sm-4 control-label" for="newsTime">新闻发生时间 <span class="text-danger">*</span></label>
	<div class="col-sm-8">
		<input type="text" id="newsTime" name="newsTime" data-date-format="yyyy-mm-dd hh:ii" value='<fmt:formatDate value="${news.newsTime}" pattern="yyyy-MM-dd hh:mm" />' required class="form-control">
	</div>
</div>
<div class="form-group m-t-sm">
	<div class="col-sm-6 col-sm-push-4">
		<button class="btn btn-md btn-primary " type="submit">
			<strong>保存，重新发布</strong>
		</button>
		<button type="button" class="btn btn-white m-l-sm" data-dismiss="modal">取消</button>
	</div>
</div>
<!--date style-->
	<script src="${ctx}/static/js/plugins/datetimepicker/bootstrap-datetimepicker.min.js"></script>
	<script src="${ctx}/static/js/plugins/datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script>
//   $('#newsTime').datetimepicker({
//     language: 'zh-CN'
//   });
</script>