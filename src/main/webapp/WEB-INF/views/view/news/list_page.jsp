<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" />
<div class="ibox-content">
	<div class="table-responsive ">
		<table class="table table-centerbody table-striped table-condensed text-nowrap" id="editable-sample">
			<thead>
				<tr>
					<th>标题</th>
					<th>内容</th>
					<th>地址</th>
					<th>发生时间</th>
					<th>创建时间</th>
					<th class="text-right">操作</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${page!=null && (page.list)!= null && fn:length(page.list) > 0 }">
					<c:forEach var="n" items="${page.list }">
						<tr>
							<td>${n.title }</td>
							<td>${n.description }</td>
							<td>${n.address }</td>
							<td><fmt:formatDate value="${n.newsTime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
							<td><fmt:formatDate value="${n.createTime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
							<td class="text-right text-nowrap">
								<div class="btn-group ">
									<button class="btn btn-white btn-sm edit" data-id="${n.id }" data-toggle="modal" data-target="#edit">
										<i class="fa fa-pencil"></i> 编辑
									</button>
								</div>
							</td>
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>
	</div>
	<div class="pages border-top">
		<div class="row">
			<div class="col-md-4">
				<div class="m-t-md">当前显示 ${page.startRow } 到 ${page.endRow } 条，共 ${page.total } 条</div>
			</div>
			<div class="col-md-8 footable-visible">
				<ul class="pagination pull-right">
					<li class="footable-page-arrow disabled"><a data-page="first" href="#first">«</a></li>
					<li class="footable-page-arrow disabled"><a data-page="prev" href="#prev">‹</a></li>
					<li class="footable-page active"><a data-page="0" href="#">1</a></li>
					<li class="footable-page"><a data-page="1" href="#">2</a></li>
					<li class="footable-page"><a data-page="1" href="#">3</a></li>
					<li class="footable-page"><a data-page="1" href="#">4</a></li>
					<li class="footable-page"><a data-page="1" href="#">5</a></li>
					<li class="footable-page"><a data-page="1" href="#">6</a></li>
					<li class="footable-page-arrow"><a data-page="next" href="#next">›</a></li>
					<li class="footable-page-arrow"><a data-page="last" href="#last">»</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>