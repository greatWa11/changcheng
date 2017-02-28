<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>userInfo</title>
<link type="text/css" rel="stylesheet" href="/demo/css/table.css" />
<script type="text/javascript" src="/demo/js/common/jquery.min.js"></script>
<script type="text/javascript" src="/demo/js/common/template.js"></script>
<script type="text/javascript">
$(function(){
	var data = {
			title:[],
			footercontent:{"content":"填报说明：<br/>"
				    +"1.此表由各市对应相关内容进行统计填报，每季度结束后的次月5日前汇总上报。<br/>" 
					+"2.普法读物是指普法读本、口袋书、小册子、折页等。<br/>" 
					+"3.普法用品指购物袋、围裙、扑克、雨伞、u盘、宣传画、台历、书签等法治宣传品。<br/>" 
					+"4.本季度小计是指当季度的数据小计，需每个季度统计填报；半年度累计一栏的数据为每年第二季度末统计填报；全年度累计一栏的数据为每年第四季度末统计填报。<br/>" 
					+"5.审核人一项由市司法局分管领导签字"},
			list:[{"title":"本季度小计","bzhong":"120","bce":"130","fzhong":"140","fce":"150","zz":"160","fj":"170"},
				  {"title":"半年度累计","bzhong":"220","bce":"230","fzhong":"240","fce":"250","zz":"260","fj":"270"},
			      {"title":"全年度累计","bzhong":"520","bce":"530","fzhong":"540","fce":"550","zz":"560","fj":"570"}]
		};
    var html = template("test",data);
    var foot = template("test2",data.footercontent);
    
    document.getElementById("t1").innerHTML=html;
    console.info(foot);
	document.getElementById("footer").innerHTML=foot;
	
    /*
    for(var i=0;i<data.list.length;i++){
    	if(i==0){
    		html1+="<ul>";
    	}
    	var html0=template('tmpPfGz', data.list[i]);
    	html1+=html0;
    	//list里面五个一组
    	if((i+1)%5==0){
    		html1+="</ul>";
    		html1+="<ul>";
    	}
    }
    html1+="</ul>";
    $("#showTmpPfGz").html(html1); 
    */


});
</script>
</head>
<body>
	<table class="gridtable">
			<tr>
				<th rowspan="3">项目</th>
				<th colspan="4">普法读物</th>
				<th colspan="2">普法用品</th>
			</tr>
			<tr>
				<th colspan="2">编印</th>
				<th colspan="2">发放</th>
				<th>种类</th>
				<th>发放</th>
			</tr>
			<tr>
				<th>种</th>
				<th>册</th>
				<th>种</th>
				<th>册</th>
				<th>种</th>
				<th>件</th>
			</tr>
			<tbody id="t1"></tbody>
			<tfoot id="footer"></tfoot>
		</table>
</body>
<html>
<script id="test" type="text/html">
    {{each list as value i}}
	<tr>
		<th>{{value.title}}</th>
		<td>{{value.bzhong}}</td>
		<td>{{value.bce}}</td>
		<td>{{value.fzhong}}</td>
		<td>{{value.fce}}</td>
		<td>{{value.zz}}</td>
		<td>{{value.fj}}</td>
    </tr>
   {{/each}}
</script>
<script id="test2" type="text/html">
   <tr> 
     <td colspan="7">{{#content}}</td>
   </tr>
</script>

</html>