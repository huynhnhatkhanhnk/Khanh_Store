<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<table class="table table-stripe" style="text-align: center;">
	<tr>
		<th scope="col">Category ID</th>
		<th scope="col">Category name</th>
		<th>&nbsp;</th>
	</tr>
	<c:forEach var="item" items="${items}">
		<tr>
			<td class="align-middle">${item.id}</td>
			<td class="align-middle">${item.name}</td>
			<td class="align-middle">
				<a href="/category/edit/${item.id}">Edit</a>
			</td>
		</tr>
	</c:forEach>
</table>