<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<table class="table table-stripe" style="text-align: center;">
	<tr>
		<th scope="col">Product ID</th>
		<th scope="col">Product name</th>
		<th scope="col">Product price</th>
		<th scope="col">Product image</th>	
		<th scope="col">Category</th>
		<th>&nbsp;</th>
	</tr>
	<c:forEach var="item" items="${items}">
		<tr>
			<td class="align-middle">${item.id}</td>
			<td class="align-middle">${item.name}</td>
			<td class="align-middle">${item.price}</td>
			<td class="align-middle">${item.image}</td>
			<td class="align-middle">${item.category.id}</td>
			<td class="align-middle">
				<a class="btn btn-warning btn-sm" href="/product/edit/${item.id}">Edit</a>
				<a class="btn btn-danger btn-sm" href="/product/delete/${item.id}">Delete</a>
			</td>
		</tr>
	</c:forEach>
</table>