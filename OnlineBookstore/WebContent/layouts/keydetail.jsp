<%@page import="com.chicken.util.C"%>
<%@page import="com.chicken.model.BookDetailBean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	BookDetailBean bookDetailBean=(BookDetailBean)request.getAttribute("bookDetailBean");
%>  	
	
<!-- 书图片 -->
<div class="picture">
	<img src=<%=bookDetailBean.getBimage() %>>
</div>

<!-- 基本信息-->
<div class="detailinfo grayfont" >
	<div class="childdiv">
		
		<!-- 书籍概要部分 -->
		<img src="css/images/summary.png">
		<hr>
		<div class="partbg" style="height:170px;">
			<div><font class="bookname"><%=bookDetailBean.getBname() %></font></div>
			<div>作者:&nbsp;&nbsp;<a href="SearchClServlet?dowhat=searchByKey&way=byPageFirst&key=<%=bookDetailBean.getBauthor() %>&refer=Bid&pageCount=1&pageNow=1&pageFrom=1&pageTo=1"><%=bookDetailBean.getBauthor() %></a> 著</div>
			<div>出版社:&nbsp;&nbsp;<a href="SearchClServlet?dowhat=searchByKey&way=byPageFirst&key=<%=bookDetailBean.getBpublisher() %>&refer=Bid&pageCount=1&pageNow=1&pageFrom=1&pageTo=1"><%=bookDetailBean.getBpublisher() %></a></div>
			<div>出版日期:&nbsp;&nbsp;<%=bookDetailBean.getBpublishdate() %></div>
		</div>
		
		<!-- 评价部分 -->
		<img src="css/images/comment.png">
		<hr>
		<div class="partbg" style="height:102px;">
			<div class="commentbar">
				成交量&nbsp;&nbsp;<a href="#traderecord_tab" id="traderecord_a"><%=bookDetailBean.getBsalednum() %></a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
				累计评价&nbsp;&nbsp;<a href="#comment_tab" id="comment_a"><%=bookDetailBean.getBcommentnum() %></a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
				
				<!-- 星星 -->
				<%
					int fulstarNum=bookDetailBean.getTmark_AVG();
					int emstarNum=5-fulstarNum;
					for(int i=1;i<=fulstarNum;i++)
					{
						%>
						<span class="fulstar"></span>
						<%
					}
					for(int i=1;i<=emstarNum;i++)
					{
						%>
						<span class="emstar"></span>
						<%		
					}
				%>
			</div>
			
			<div>店家:&nbsp;&nbsp;<img src="<%=bookDetailBean.getSicon()%>" style="width:30px;height:30px;position:relative;top:8px;"><a href="SearchClServlet?dowhat=searchByKey&way=byPageFirst&key=<%=bookDetailBean.getSname() %>&refer=Bid&pageCount=1&pageNow=1&pageFrom=1&pageTo=1"><%=bookDetailBean.getSname() %></a></div>	
		</div>
	</div>
	
	<div class="childdiv">
	
		<!-- 价格部分 -->
		<img src="css/images/price.png">
		<hr>
		<div class="partbg" style="height:170px;">
			<div>定&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<del>￥<%=bookDetailBean.getBoriprice() %></del></div>
			<div>促&nbsp;&nbsp;销&nbsp;&nbsp;价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font class="atsale">￥<%=bookDetailBean.getBprice() %></font>（<%=String.format("%.2f", 10*bookDetailBean.getBprice()/bookDetailBean.getBoriprice())%>折）</div>
			<div>运&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;费&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;￥<%=bookDetailBean.getStransprice() %></div>
			<div>本店活动&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font class="activity"><%=bookDetailBean.getSactivity() %></font></div>
		</div>
		
		<!-- 购买部分 -->
		<img src="css/images/buy.png">
		<hr>
		<div class="partbg" style="height:102px;">
			<a href="OrderClServlet?dowhat=buyatonce&Bid=<%=bookDetailBean.getBid()%>&Bimage=<%=bookDetailBean.getBimage() %>&Bprice=<%=bookDetailBean.getBprice()%>&Bname=<%=bookDetailBean.getBname()%>&Boriprice=<%=bookDetailBean.getBoriprice()%>&Sid=<%=bookDetailBean.getSid()%>&Sname=<%=bookDetailBean.getSname()%>&Sicon=<%=bookDetailBean.getSicon()%>&Tboughtnum=1" class="buyatoncebtn">立即购买</a>
			<a href="CartClServlet?dowhat=addBookIntoCart&Bid=<%=bookDetailBean.getBid()%>&Bimage=<%=bookDetailBean.getBimage() %>&Bprice=<%=bookDetailBean.getBprice()%>&Bname=<%=bookDetailBean.getBname()%>&Boriprice=<%=bookDetailBean.getBoriprice()%>&Sid=<%=bookDetailBean.getSid()%>&Sname=<%=bookDetailBean.getSname()%>&Sicon=<%=bookDetailBean.getSicon()%>&Tboughtnum=1" class="buyatoncebtn">加入购物车</a>
		</div>
	</div>
</div>