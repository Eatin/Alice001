<!doctype html public "-//w3c//dtd xhtml 1.0 transitional//en">
<html>
<head>
<title>录入信息</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />

<link href="../../static/inmsg/css/base.css" type="text/css" rel="stylesheet" />
<link href="../../static/inmsg/css/editTable.css" type="text/css" rel="stylesheet" />
	<link href="../../static/css/bootstrap.css" rel="stylesheet">

<script language="javascript" type="text/javascript" src="../../static/inmsg/js/jquery-1.7.2.min.js"></script>
<script language="javascript" type="text/javascript" src="../../static/inmsg/js/editTable.js"></script>

</head>
<body>
<div class="container">
	<div class="input-group input-group-lg">
		<span class="input-group-addon">@</span>
		<input type="text" class="form-control" placeholder="年度">
	</div>
<br>

<table class="edtitable">
	<thead>
		<tr>
			<th colspan="4">录入表格</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<th>学号</th>
			<th>姓名</th>
			<th>奖项</th>

			<th class="del-col">操作</th>
		</tr>
		<tr>
			<td>RSD12345678</td>
			<td>盛世花城</td>
			<td>SSR</td>
			<td class="del-col">
				<a href="javascript:void(0);" class="delBtn">删除</a>
			</td>
		</tr>

		<tr class="append-row">
			<td colspan="4" align="right">
				<input type="button" id="addBtn" value="添 加" />
			</td>
		</tr>
	</tbody>
</table>

</div>
<script src="../../static/js/jquery-3.3.1.slim.min.js"> </script>
<script>window.jQuery || document.write('<script src="../../static/js/jquery-slim.min.js"><\/script>')</script>
<script src="../../static/js/popper.min.js"></script>
<script src="../../static/js/bootstrap.js"></script>
<script src="../../static/js/holder.min.js"></script>
</body>
</html>
