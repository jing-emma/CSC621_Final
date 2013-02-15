	var assign_xhr;

	String.prototype.trim = function() {
        return this.replace(/^\s+/,"").replace(/\s+$/,"");
    }
	
	function assignRequest(obj)
	{
		var tr = obj.parentNode.parentNode;
		var td;
		
		for(i=0;i<tr.childNodes.length;i++)
		{
			if(tr.childNodes[i].nodeName.toLowerCase()=='td')
			{
				td = tr.childNodes[i];
				break;
			}
		}
		
		var link;
		
		for(i=0;i<td.childNodes.length;i++)
		{
			if(td.childNodes[i].nodeName.toLowerCase()=='a')
			{
				link = td.childNodes[i];
				break;
			}
		}
		
		var rid = link.innerHTML;
		
		var select = document.getElementsByName("assign_to_employee")[tr.rowIndex-1];
		var index = select.selectedIndex;
		var username = select.options[index].value;
		
		location.href="server/assignRequest.jsp?rid="+rid+"&username="+username;
		
		
	}
	
	function evaluateRequest(obj)
	{
		var tr = obj.parentNode.parentNode;
		var td;
		
		for(i=0;i<tr.childNodes.length;i++)
		{
			if(tr.childNodes[i].nodeName.toLowerCase()=='td')
			{
				td = tr.childNodes[i];
				break;
			}
		}
		
		var link;
		
		for(i=0;i<td.childNodes.length;i++)
		{
			if(td.childNodes[i].nodeName.toLowerCase()=='a')
			{
				link = td.childNodes[i];
				break;
			}
		}
		
		var rid = link.innerHTML;
		location.href="evaluate.jsp?rid="+rid;
	}
	
	function confirmEvaluate()
	{
		var eDay = document.getElementById("days").value;
		var eCost = document.getElementById("cost").value;
		var eComment = document.getElementById("comment").value;
		
		
		var expr1 = /^\d{1,}$/;
		var expr2 = /^\d{1,}(\.\d{1,})?$/;
		if(eDay.search(expr1) == -1)
		{
			document.getElementById("error").innerHTML = "Please enter an integer for the days";
			return;
		}
		else if(eCost.search(expr2) == -1)
		{
			document.getElementById("error").innerHTML = "Please enter the cost with a number";
			return;
		}
		
		
		
		var content = {
				rid:		document.getElementById("rid").innerHTML,
				days:		eDay,
				cost:		eCost,
				comment:	eComment
		};
		var json_string = "content="+JSON.stringify(content);

		location.href = "server/evaluateRequest.jsp?"+json_string;
	}
	
	function cancelEvaluate()
	{
		location.href="myJobs.jsp";
	}