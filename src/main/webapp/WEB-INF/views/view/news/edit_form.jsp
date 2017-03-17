<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<input type="hidden" name="id" value="${news.id }" />
<div class="form-group">
	<label class="col-sm-4 control-label" for="title">标题 <span class="text-danger">*</span></label>
	<div class="col-sm-8">
		<input type="text" id="title" name="title" placeholder="请输入标题" value="${news.title }" required class="form-control">
	</div>
</div>
<div class="form-group">
	<label class="col-sm-4 control-label" for="description">内容 <span class="text-danger">*</span></label>
	<div class="col-sm-8">
		<input type="text" id="description" name="description" placeholder="新输入内容" value="${news.description }" required class="form-control">
	</div>
</div>
<div class="form-group">
	<label class="col-sm-4 control-label" for="address">地址 <span class="text-danger">*</span></label>
	<div class="col-sm-8">
		<input type="text" id="address" name="address" placeholder="请输入地址" value="${news.address }" required class="form-control">
	</div>
</div>
<div class="form-group">
	<label class="col-sm-4 control-label" for="newsTime">新闻发生时间 <span class="text-danger">*</span></label>
	<div class="col-sm-8">
		<input type="text" id="newsTime" name="newsTime" placeholder="请选择新闻发生时间" value='<fmt:formatDate value="${news.newsTime}" pattern="yyyy-MM-dd" />' required class="form-control">
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
