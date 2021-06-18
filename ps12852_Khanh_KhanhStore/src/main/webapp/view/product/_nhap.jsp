<%@ page pageEncoding="utf-8" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

	<form:form action="/product/SaveOrUpdate" modelAttribute="item" method="post" enctype="multipart/form-data">
			<div class="card">
				<div class="card-body">

					<div class="row">
						<div class="col-3">
							<div class="p-3">
								<img src="/images/${item.image}" alt="" style="width: 250px; height: 2	50px;">
								<div class="form-group">
									<input type="file" name="image" class="form-control-file"
										id="image" onchange="chooseFile(this)" />

								</div>

							</div>
						</div>
						<div class="col-9">
							<div class="form-group">
								<label for="youtubeid">Product name</label>
								<form:input class="form-control" path="name" placeholder="Category name?" />
								<small id="youtubeIHid" class="form-text text-muted"></small>
							</div>
							<div class="form-group">
								<label for="videotitle">Product price</label>
								<form:input class="form-control" path="price" placeholder="Category price?" />
								<small id="videotHid" class="form-text text-muted"></small>
							</div>
							<div class="form-group">
								<label for="videotitle">Category</label>
								<form:input class="form-control" name="category" path="category.id" placeholder="Category ?" />
								<small id="videotHid" class="form-text text-muted"></small>
							</div>

						</div>
					</div>

				</div>
				<div class="card-footer text-muted">
					<button class="btn btn-primary" type="submit">Create</button>
					<button class="btn btn-info" type="reset">Reset</button>
				</div>
			</div>
			</form>
		</form:form>