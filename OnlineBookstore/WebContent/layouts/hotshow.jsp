<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.chicken.model.BookSnapshotBean"%>
	
<%
	ArrayList<BookSnapshotBean> bookSnapshotList=(ArrayList<BookSnapshotBean>)request.getAttribute("bookSnapshotList");
%>	
	
<div class="maindiv2">

     <div class="slider" style="margin-bottom:10px;">
        <div id="lofslidecontent45" class="lof-slidecontent">
            <div class="preload"><div></div></div>
            <!-- MAIN CONTENT --> 
            <div class="lof-main-outer">
                <ul class="lof-main-wapper">
                    <li><img src="images/advers/adver1.jpg"/></li> 
                   <li><img src="images/advers/adver2.jpg"/></li> 
                   <li><img src="images/advers/adver3.jpg"/></li> 
                   <li><img src="images/advers/adver4.jpg"/></li> 
                </ul>     
            </div>
            <div class="lof-navigator-wapper">
                <div class="lof-navigator-outer">
                    <ul class="lof-navigator">
                       <li><span>1</span></li>
                       <li><span>2</span></li>   
                       <li><span>3</span></li>
                       <li><span>4</span></li>           
                    </ul>
                </div>
            </div> 
         </div> 
    </div><!--slider-->

	<img src="css/images/hot.png">
	<hr>
	
	
	<ul class="mainul">
		<!-- 8本热销书缩略图 -->
		<%
			for (int i = 0; i < bookSnapshotList.size(); i++) {
				
				//将该次的书籍信息记录传递临时变量bookSnapshotBean，用html显示
				BookSnapshotBean bookSnapshotBean=bookSnapshotList.get(i);
		%>
			<!----------------- 生成1本热销书缩略图 ----------------------->
			<li>
				<div>
					<a href="DetailClServlet?dowhat=findDetail&Bid=<%=bookSnapshotBean.getBid()%>" target="_blank"><img src=<%=bookSnapshotBean.getBimage()%>></a>
				</div>
				<div>
					<font class="price1">￥<%=bookSnapshotBean.getBprice()%></font><br> 
					<font class="bookname1"><%=bookSnapshotBean.getBname()%></font><br>
					<a href="SearchClServlet?dowhat=searchByKey&way=byPageFirst&key=<%=bookSnapshotBean.getSname() %>&refer=Bid&pageCount=1&pageNow=1&pageFrom=1&pageTo=1" class="shopname1"><%=bookSnapshotBean.getSname()%></a>
				</div>
				<div>
					<div>
						<span class="tradenum1">成交&nbsp;&nbsp;<font
							class="font_bold_pink"><%=bookSnapshotBean.getBsalednum()%>笔</font></span>
					</div>
					<div>
						<span class="commentnum1">评价&nbsp;&nbsp;
						<font class="font_bold_blue"><%=bookSnapshotBean.getBcommentnum()%></font></span>
					</div>
				</div>
			</li>
		<%
			}
		%>
	</ul>
</div>