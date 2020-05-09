/*查询别人的VA号*/
	  function select_VA(name){
		  console.log("开始执行111");
//		  var load = layer.load(1, {shade: [0.1,'#fff']});
		  $.ajax({
				type : "POST",
				url : "main/selectVaNo.do",
				data :{name:name},
				dataType : "json",
				success : function(data) {
				 	$("#type option:first").prop("selected", 'selected'); 
					$("select#type").attr("disabled", false);
					$("select#type").trigger("change");
					$("#part_no").val("").attr("disabled", false);
					$("#bm_no").val("").attr("disabled", false);
					$("#work_center").val("").attr("disabled", false);
					$("#customer_project").val("").attr("disabled", false);
					$("#disId").val("0");
					 $("#kb_no").empty();
						$("#kb_no").append('<option value="-1">请选择KB No</option>')
//					layer.close(load);
					if(data.list==-1){
							//刷新VO的下拉选
						$("#va_no").empty();
						$("#va_no").append('<option value="-1">请选择VA No</option>')
					}else{
						$("#va_no").empty();
						$("#va_no").append('<option value="-1">请选择VA No</option>')
						$.each(data.list, function(i, li) {
							var trs1 = '<option value="'+li.va_no+'">'+li.va_no+'</option>';
							$("#va_no").append(trs1);
						}); 
					}
				}
			});
	  }