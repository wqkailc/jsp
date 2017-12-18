<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

    //setCharacterEncoding("UTF-8")方法是将字符编码全部转换成UTF-8
	request.setCharacterEncoding("UTF-8");
	/**
		jsp页面传递的loginname： <input name="loginname"> 
		request是请求对象，该对象由服务器创建，开发者直接使用
		parameter是参数的意思，该方法根据名称返回值
		request.getParameter(String name)
	*/
	String loginname = request.getParameter("loginname");
	String password = request.getParameter("password");
	String username = request.getParameter("username");
	String sex = request.getParameter("sex");
	String age = request.getParameter("age");
	String address = request.getParameter("address");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");
	
	// Java中的控制台输出
	System.out.println("jsp传递的loginname = " + loginname);
	System.out.println("jsp传递的password = " + password);
	System.out.println("jsp传递的username = " + username);
	System.out.println("jsp传递的sex = " + sex);
	System.out.println("jsp传递的age = " + age);
	System.out.println("jsp传递的address = " + address);
	System.out.println("jsp传递的phone = " + phone);
	System.out.println("jsp传递的email = " + email);
	
	/**
		插入数据库
		步骤：
		1. 加载MySQL驱动
		   -- 所有数据库的驱动都是数据库厂商提供的
		   -- 下载MySQL驱动加入WEB-INF/lib目录
		2. 获取连接 Connction
		3. 获取发送sql语句的对象 PreparedStatement
		4. 执行sql
		5. 关闭资源
	*/
	// 处理异常
	try{
		// 1 
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://127.0.0.1:3306/jsj152";
		Connection con = DriverManager.getConnection(url, "root", "123456");
		String sql = "INSERT INTO tb_user(loginname,PASSWORD,username,sex,age,address,phone,email) values(?,?,?,?,?,?,?,?)";
		System.out.println(sql);
		PreparedStatement pstm = con.prepareStatement(sql);
		// 设置参数  setObject
		pstm.setObject(1, loginname);
		pstm.setObject(2, password);
		pstm.setObject(3, username);
		pstm.setObject(4, sex);
		// 将字符串age转成整型
		pstm.setObject(5, Integer.parseInt(age));
		pstm.setObject(6, address);
		pstm.setObject(7, phone);
		pstm.setObject(8, email);
		pstm.executeUpdate();	
		pstm.close();
		con.close();
		System.out.println("数据插入成功!");
	}catch(Exception e){
		e.printStackTrace();
	}
		

%>
</body>
</html>