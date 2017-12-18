<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
注册页面<br><br>

<!-- form表单 method表示传递的方式  action表示要传递的页面 -->
<form action="register.jsp" method="post">
	<table>
		<tr>
			<td>登录名：</td>
			<!-- name属性是传递到后台的名称 -->
			<td><input name="loginname"></td>
		</tr>
		<tr>
			<td>密码：</td>
			<td><input type="text" name="password"></td>
		</tr>
		<tr>
			<td>真实姓名：</td>
			<td><input type="text" name="username"></td>
		</tr>
		<tr>
			<td>性别：</td>
			<td>
				<input type="radio" name="sex" value="男" checked="checked">男&nbsp;&nbsp;
				<input type="radio" name="sex" value="女">女
			</td>
		</tr>
		<tr>
			<td>年龄：</td>
			<td><input type="text" name="age"></td>
		</tr>
		<tr>
			<td>地址：</td>
			<td><input type="text" name="address"></td>
		</tr>
		<tr>
			<td>电话：</td>
			<td><input type="text" name="phone"></td>
		</tr>
		<tr>
			<td>邮箱：</td>
			<td><input type="text" name="email"></td>
		</tr>
		<tr>
			<!-- 点“注册”按钮，页面的数据会被提交到 register.jsp -->
			<td><input type="submit" value="注册"></td>
		</tr>
	</table>
</form>
</body>
</html>