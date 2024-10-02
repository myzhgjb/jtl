$(function() {
  // 添加提示框
  $.tooltipStart();
  var $business9410 = $("#business9410Add");
  
  // 返回按钮
  $business9410.closeAdd(function() {
	$('#addbusiness9410from').formValidation('disableSubmitButtons', false)
	    .formValidation('resetForm', true);
  });
  
  
  // addbusiness9410form
  $business9410.find("#addbusiness9410from").formValidationExtend(
	  {
	    'data' : {
		  validators : {
		    callback : {
		      message : '请输入最多6位小数',
		      callback : function(value, validator) {
			    return parseFloat(value).decimal(6);
		      }
		    }
		  }
	    }
	  },
	  function() {
	    var tbEquipId = $.trim($business9410.find("#tbEquipId").val());
	    var tbLabel = $.trim($business9410.find("#tbLabel").val());
	    var tbProductType = $.trim($business9410.find("#tbProductType").val());
	    var tbEquipType = $.trim($business9410.find("#tbEquipType").val());
	    var tbStartDate = $.trim($business9410.find("#tbStartDate").val());
	    var tbEndDate = $.trim($business9410.find("#tbEndDate").val());
	    var tbProductUnit = $.trim($business9410.find("#tbProductUnit").val());
	    var tbProductAmountTotal = $.trim($business9410.find("#tbProductAmountTotal").val());
	    var tbProductAmount1Month = $.trim($business9410.find("#tbProductAmount1Month").val());
	    var tbProductAmount2Month = $.trim($business9410.find("#tbProductAmount2Month").val());
	    var tbProductAmount3Month = $.trim($business9410.find("#tbProductAmount3Month").val());
	    var tbProductAmount4Month = $.trim($business9410.find("#tbProductAmount4Month").val());
	    var tbProductAmount5Month = $.trim($business9410.find("#tbProductAmount5Month").val());
	    var tbProductAmount6Month = $.trim($business9410.find("#tbProductAmount6Month").val());
	    var tbProductAmount7Month = $.trim($business9410.find("#tbProductAmount7Month").val());
	    var tbProductAmount8Month = $.trim($business9410.find("#tbProductAmount8Month").val());
	    var tbProductAmount9Month = $.trim($business9410.find("#tbProductAmount9Month").val());
	    var tbProductAmount10Month = $.trim($business9410.find("#tbProductAmount10Month").val());
	    var tbProductAmount11Month = $.trim($business9410.find("#tbProductAmount11Month").val());
	    var tbProductAmount12Month = $.trim($business9410.find("#tbProductAmount12Month").val());
	    var tbPfkHeight = $.trim($business9410.find("#tbPfkHeight").val());
	    var tbPfkDiameter = $.trim($business9410.find("#tbPfkDiameter").val());
		var tbPfkOutletLongitude = $.trim($business9410.find("#tb_pfk_OutletLongitude").val());
	    var tbPfkOutletLatitude = $.trim($business9410.find("#tbPfkOutletLatitude").val());
	    var tbPfkSpeed = $.trim($business9410.find("#tbPfkSpeed").val());
	    var tbPfkVolume = $.trim($business9410.find("#tbPfkVolume").val());
	    var tbPfkTemperature = $.trim($business9410.find("#tbPfkTemperature").val());
	    var tbPfkORatio = $.trim($business9410.find("#tbPfkORatio").val());
	    var tbSo2ConAnual = $.trim($business9410.find("#tbSo2ConAnual").val());
	    var tbNoxConAnual = $.trim($business9410.find("#tbNoxConAnual").val());
	    var tbPmConAnual = $.trim($business9410.find("#tbPmConAnual").val());
	    var tbCountrykOrNot = $.trim($business9410.find("input[name='tbCountrykOrNot']:checked").val());
	    var tbProvKOrNot = $.trim($business9410.find("input[name='tbProvKOrNot']:checked").val());
	    var tbCityKOrNot = $.trim($business9410.find("input[name='tbCityKOrNot']:checked").val());
	    var tbInstallOrNot = $.trim($business9410.find("input[name='tbInstallOrNot']:checked").val());
	    
	    $.post(contextpath + "/rest/business9410/addbusiness9410", {
	    	"tbEquipId" : tbEquipId,
	    	"tbLabel" : tbLabel,
	    	"tbProductType" : tbProductType,
	    	"tbEquipType" : tbEquipType,
	    	"tbStartDate" : tbStartDate,
	    	"tbEndDate" : tbEndDate,
	    	"tbProductUnit" : tbProductUnit,
	    	"tbProductAmountTotal" : tbProductAmountTotal,
	     	"tbProductAmount1Month" : tbProductAmount1Month,
	     	"tbProductAmount2Month" : tbProductAmount2Month,
	     	"tbProductAmount3Month" : tbProductAmount3Month,
	     	"tbProductAmount4Month" : tbProductAmount4Month,
	     	"tbProductAmount5Month" : tbProductAmount5Month,
	     	"tbProductAmount6Month" : tbProductAmount6Month,
	     	"tbProductAmount7Month" : tbProductAmount7Month,
	     	"tbProductAmount8Month" : tbProductAmount8Month,
	     	"tbProductAmount9Month" : tbProductAmount9Month,
	     	"tbProductAmount10Month" : tbProductAmount10Month,
	     	"tbProductAmount11Month" : tbProductAmount11Month,
	     	"tbProductAmount12Month" : tbProductAmount12Month,
	     	"tbPfkHeight" : tbPfkHeight,
	     	"tbPfkDiameter" : tbPfkDiameter,
			"tbPfkOutletLongitude" : tbPfkOutletLongitude,
			"tbPfkOutletLatitude" : tbPfkOutletLatitude,
	     	"tbPfkSpeed" : tbPfkSpeed,
	     	"tbPfkVolume" : tbPfkVolume,
	     	"tbPfkTemperature" : tbPfkTemperature,
	     	"tbPfkORatio" : tbPfkORatio,
	     	"tbSo2ConAnual" : tbSo2ConAnual,
	     	"tbNoxConAnual" : tbNoxConAnual,
	     	"tbPmConAnual" : tbPmConAnual,
	     	"tbCountrykOrNot" : tbCountrykOrNot,
	     	"tbProvKOrNot" : tbProvKOrNot,
	     	"tbCityKOrNot" : tbCityKOrNot,
	     	"tbInstallOrNot" : tbInstallOrNot,
	     	"currentBusinessId":jQuery('#currentBusinessIdInput').val()
	    }, function(res) {
		  if (res.success) {
		    MyConfirm("添加成功！是否返回列表？", function() {
			  $business9410.find(".close").trigger("click");
			  $("#total").load(contextpath + "/rest/business/getBusiness?" + Math.random(),{
					currentBusinessId :jQuery('#currentBusinessIdInput').val()  });
		    }, function() {
			  $business9410.find("#addbusiness9410from").formValidation(
			      'disableSubmitButtons', false).formValidation('resetForm',
			      true);
		    });
		  } else {
		    MyAlert(res.message);
		  }
	    }, "json");
	    
	  });
});