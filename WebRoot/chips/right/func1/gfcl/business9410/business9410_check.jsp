<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
         contentType="text/html; charset=utf-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<script charset="utf-8" type="text/javascript" language="javascript"
        src="${ctx}/chips/right/func1/gfcl/business9410/js/business9410_check.js"></script>
<script type="text/javascript" language="javascript"
        src="<%=request.getContextPath()%>/js/My97DatePicker/WdatePicker.js"></script>
<style>
    .checkbox label:first-child {
        margin-right: 30px;
    }

    .modal-dialog {
        width: 85%;
    }

    .col-md-1 {
        width: 6.333333%;
    }
</style>
<div class="modal-body modal-dialog">
    <c:if test="${sessionScope.business.status eq 1 || sessionScope.business.status eq 3}">
        <div class="panel-heading">查看固废处理-基本信息</div>
    </c:if>
    <c:if test="${sessionScope.business.status eq 0 || sessionScope.business.status eq 2}">
        <div class="panel-heading">修改固废处理-基本信息</div>
    </c:if>
    <button type="button" class="close" data-dismiss="modal"
            aria-hidden="true">&times;
    </button>

    <form class="form-horizontal" id="modifybusiness9410from" role="form"
          method="post" onsubmit="javascript:return false;" ref="${requestScope.business9410.id}">
        <ul class="list-group">
            <li class=" ">
                <!-- 添加元素1 -->
                <div class="form-group">
                    <div class="col-md-6">
                        <label class="col-md-4 control-label input_on "><em class="required_em">*</em>设备编号：
                        </label>
                        <div class="col-md-8">
                            <input name="tbEquipId" id="tbEquipId" type="text" maxlength="200"
                                   class="form_input" title="请填写设备编号。" required style="width:100%;"
                                   data-toggle="tooltip" data-placement="bottom" value="${business9410.tbEquipId}">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label class="col-md-4 control-label input_on "><em class="required_em">*</em>所属排放源：
                        </label>
                        <div class="col-md-8 box">
                            <select name="tbLabel" id="tbLabel" data-toggle="tooltip"
                                    data-placement="bottom" title="请选择所属排放源。" required style="width:100%;"
                                    class="form_input">
                                <option value="" selected="selected">请选择</option>
                                <option
                                        <c:if test="${business9410.tbLabel eq '固废处理'}">selected="selected"</c:if>
                                        value="固废处理">固废处理
                                </option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-6">
                        <label class="col-md-4 control-label input_on "><em class="required_em">*</em>活动水平类型：
                        </label>
                        <div class="col-md-8 box">
                            <select name="tbProductType" id="tbProductType" data-toggle="tooltip"
                                    data-placement="bottom" title="请选择活动水平类型。" required style="width:100%;"
                                    class="form_input">
                                <option value="" selected="selected">请选择</option>
                                <option
                                        <c:if test="${business9410.tbProductType eq '固体废弃物'}">selected="selected"</c:if>
                                        value="固体废弃物">固体废弃物
                                </option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label class="col-md-4 control-label input_on "><em class="required_em">*</em>处理方式：
                        </label>
                        <div class="col-md-8 box">
                            <select name="tbEquipType" id="tbEquipType" data-toggle="tooltip"
                                    data-placement="bottom" title="请选择处理方式。" required style="width:100%;"
                                    class="form_input">
                                <option value="" selected="selected">请选择</option>
                                <option
                                        <c:if test="${business9410.tbEquipType eq '固废填埋'}">selected="selected"</c:if>
                                        value="固废填埋">固废填埋
                                </option>
                                <option
                                        <c:if test="${business9410.tbEquipType eq '固废堆肥'}">selected="selected"</c:if>
                                        value="固废堆肥">固废堆肥
                                </option>
                                <option
                                        <c:if test="${business9410.tbEquipType eq '固废焚烧'}">selected="selected"</c:if>
                                        value="固废焚烧">固废焚烧
                                </option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-6">
                        <label class="col-md-4 control-label input_on "> <!-- <em class="required_em">*</em> -->
                            投运时间(年/月/日)：
                        </label>
                        <div class="col-md-8">
                            <fmt:formatDate value="${business9410.tbStartDate }" var="tbStartDate"
                                            pattern="yyyy-MM-dd"/>
                            <input class="form-control" id="tbStartDate" name="tbStartDate" readonly="readonly"
                                   onClick="WdatePicker({dateFmt:'yyyy-MM-dd'})" value="${tbStartDate}"/>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label class="col-md-4 control-label input_on "> <!-- <em class="required_em">*</em> -->
                            关停时间(年/月/日)：
                        </label>
                        <div class="col-md-8">
                            <fmt:formatDate value="${business9410.tbEndDate }" var="tbEndDate" pattern="yyyy-MM-dd"/>
                            <input class="form-control" id="tbEndDate" name="tbEndDate" readonly="readonly"
                                   onClick="WdatePicker({dateFmt:'yyyy-MM-dd'})" value="${tbEndDate}"/>
                        </div>
                    </div>
                </div>

                <div>
                    <div class="panel-heading">固废信息</div>
                    <div class="row">
                        <table class="table gridtable">
                            <tr>
                                <td class="tdrq" width="10%"><font color="red">*</font>固废单位</td>
                                <td class="col-md-1">
                                    <select class="form-control" id="tbProductUnit" name="tbProductUnit" required>
                                        <option value="">请选择</option>
                                        <option
                                                <c:if test="${business9410.tbProductUnit eq '吨'}">selected="selected"</c:if>
                                                value="吨">吨
                                        </option>
                                    </select>
                                <td>
                                <td colspan="11"></td>
                            </tr>
                            <tr>
                                <td rowspan="2">固废全年处理量</td>

                                <td class="tdrq" width="10%"><font color="red">*</font>全年</td>
                                <td>1月</td>
                                <td>2月</td>
                                <td>3月</td>
                                <td>4月</td>
                                <td>5月</td>
                                <td>6月</td>
                                <td>7月</td>
                                <td>8月</td>
                                <td>9月</td>
                                <td>10月</td>
                                <td>11月</td>
                                <td>12月</td>
                            </tr>
                            <tr>
                                <td class="col-md-1">
                                    <input class="form-control" value="${business9410.tbProductAmountTotal}"
                                           id="tbProductAmountTotal" name="tbProductAmountTotal" required="required"
                                           onblur="check(this)" type="number" min="0" max="100000000" step="0.1"
                                           onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')"/></td>
                                <td class="col-md-1"><input class="form-control"
                                                            value="${business9410.tbProductAmount1Month}"
                                                            id="tbProductAmount1Month" name="tbProductAmount1Month"
                                                            type="number" min="0" max="100000000" step="0.1"
                                                            onblur="check(this)"
                                                            onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')"/>
                                </td>
                                <td class="col-md-1"><input class="form-control"
                                                            value="${business9410.tbProductAmount2Month}"
                                                            id="tbProductAmount2Month" name="tbProductAmount2Month"
                                                            onblur="check(this)" type="number" min="0" max="100000000"
                                                            step="0.1"
                                                            onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')"/>
                                </td>
                                <td class="col-md-1"><input class="form-control"
                                                            value="${business9410.tbProductAmount3Month}"
                                                            id="tbProductAmount3Month" name="tbProductAmount3Month"
                                                            onblur="check(this)" type="number" min="0" max="100000000"
                                                            step="0.1"
                                                            onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')"
                                /></td>
                                <td class="col-md-1"><input class="form-control"
                                                            value="${business9410.tbProductAmount4Month}"
                                                            id="tbProductAmount4Month" name="tbProductAmount4Month"
                                                            onblur="check(this)" type="number" min="0" max="100000000"
                                                            step="0.1"
                                                            onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')"
                                /></td>
                                <td class="col-md-1"><input class="form-control"
                                                            value="${business9410.tbProductAmount5Month}"
                                                            id="tbProductAmount5Month" name="tbProductAmount5Month"
                                                            onblur="check(this)" type="number" min="0" max="100000000"
                                                            step="0.1"
                                                            onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')"
                                /></td>
                                <td class="col-md-1"><input class="form-control"
                                                            value="${business9410.tbProductAmount6Month}"
                                                            id="tbProductAmount6Month" name="tbProductAmount6Month"
                                                            onblur="check(this)" type="number" min="0" max="100000000"
                                                            step="0.1"
                                                            onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')"
                                /></td>
                                <td class="col-md-1"><input class="form-control"
                                                            value="${business9410.tbProductAmount7Month}"
                                                            id="tbProductAmount7Month" name="tbProductAmount7Month"
                                                            onblur="check(this)" type="number" min="0" max="100000000"
                                                            step="0.1"
                                                            onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')"
                                /></td>
                                <td class="col-md-1"><input class="form-control"
                                                            value="${business9410.tbProductAmount8Month}"
                                                            id="tbProductAmount8Month" name="tbProductAmount8Month"
                                                            onblur="check(this)" type="number" min="0" max="100000000"
                                                            step="0.1"
                                                            onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')"
                                /></td>
                                <td class="col-md-1"><input class="form-control"
                                                            value="${business9410.tbProductAmount9Month}"
                                                            id="tbProductAmount9Month" name="tbProductAmount9Month"
                                                            onblur="check(this)" type="number" min="0" max="100000000"
                                                            step="0.1"
                                                            onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')"
                                /></td>
                                <td class="col-md-1"><input class="form-control"
                                                            value="${business9410.tbProductAmount10Month}"
                                                            id="tbProductAmount10Month" name="tbProductAmount10Month"
                                                            onblur="check(this)" type="number" min="0" max="100000000"
                                                            step="0.1"
                                                            onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')"
                                /></td>
                                <td class="col-md-1"><input class="form-control"
                                                            value="${business9410.tbProductAmount11Month}"
                                                            id="tbProductAmount11Month" name="tbProductAmount11Month"
                                                            onblur="check(this)" type="number" min="0" max="100000000"
                                                            step="0.1"
                                                            onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')"
                                /></td>
                                <td class="col-md-1"><input class="form-control"
                                                            value="${business9410.tbProductAmount12Month}"
                                                            id="tbProductAmount12Month" name="tbProductAmount12Month"
                                                            onblur="check(this)" type="number" min="0" max="100000000"
                                                            step="0.1"
                                                            onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')"
                                /></td>
                            </tr>
                        </table>
                    </div>
                </div>

                <div>
                    <div class="panel-heading">在线监测信息</div>
                    <div class="form-group">
                        <div class="col-md-6">
                            <label class="col-md-4 control-label input_on ">排放口高度(米)：
                            </label>
                            <div class="col-md-8">
                                <input name="tbPfkHeight" id="tbPfkHeight" type="number" maxlength="1000"
                                       step="0.01" class="form_input" title="请填写排放口高度，单位米。"
                                       required="required" style="width:100%;"
                                       min="0" onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')"
                                       data-toggle="tooltip" data-placement="bottom"
                                       value="${business9410.tbPfkHeight}">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label class="col-md-4 control-label input_on ">排放口直径(米)：
                            </label>
                            <div class="col-md-8">
                                <input name="tbPfkDiameter" id="tbPfkDiameter" type="number" maxlength="1000"
                                       step="0.01" class="form_input" title="请填写排放口直径，单位米。"
                                       required="required" style="width:100%;"
                                       min="0" onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')"
                                       data-toggle="tooltip" data-placement="bottom"
                                       value="${business9410.tbPfkDiameter}">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">

                        <div class="col-md-6">
                            <label class="col-md-4 control-label input_on ">排放口经度：
                            </label>
                            <div class="col-md-8">
                                <input name="tbPfkOutletLongitude" id="tbPfkOutletLongitude" type="number" maxlength="1000"
                                       step="0.01" class="form_input" title="请填写排放口经度,单位度。"
                                       style="width:100%;"
                                       min="0" onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')"
                                       data-toggle="tooltip" data-placement="bottom">
                            </div>
                        </div>


                        <div class="col-md-6">
                            <label class="col-md-4 control-label input_on ">排放口纬度：
                            </label>
                            <div class="col-md-8">
                                <input name="tbPfkOutletLatitude" id="tbPfkOutletLatitude" type="number" maxlength="1000"
                                       step="0.01" class="form_input" title="请填写排放口纬度,单位度。"
                                       style="width:100%;"
                                       min="0" onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')"
                                       data-toggle="tooltip" data-placement="bottom">
                            </div>
                        </div>

                    </div>


                </div>
                <div class="form-group">
                    <div class="col-md-6">
                        <label class="col-md-4 control-label input_on ">排放出口废气流速(米/秒)：
                        </label>
                        <div class="col-md-8">
                            <input name="tbPfkSpeed" id="tbPfkSpeed" type="number" maxlength="1000"
                                   step="0.01" class="form_input" title="请填写排放出口废气流速，单位米/秒。"
                                   min="0" onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')" style="width:100%;"
                                   data-toggle="tooltip" data-placement="bottom" value="${business9410.tbPfkSpeed}">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label class="col-md-4 control-label input_on ">废气排放流量(标准立方米/小时)：
                        </label>
                        <div class="col-md-8">
                            <input name="tbPfkVolume" id="tbPfkVolume" type="number" maxlength="1000"
                                   step="0.01" class="form_input" title="请填写废气排放流量，单位立方米/小时。"
                                   min="0" onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')" style="width:100%;"
                                   data-toggle="tooltip" data-placement="bottom" value="${business9410.tbPfkVolume}">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-6">
                        <label class="col-md-4 control-label input_on ">废气温度(摄氏度)：
                        </label>
                        <div class="col-md-8">
                            <input name="tbPfkTemperature" id="tbPfkTemperature" type="number" maxlength="1000"
                                   step="0.01" class="form_input" title="请填写废气温度，单位摄氏度。"
                                   min="0" onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')" style="width:100%;"
                                   data-toggle="tooltip" data-placement="bottom"
                                   value="${business9410.tbPfkTemperature}">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label class="col-md-4 control-label input_on ">废气含氧量(％)：
                        </label>
                        <div class="col-md-8">
                            <input name="tbPfkORatio" id="tbPfkORatio" type="number" maxlength="1000"
                                   step="0.01" class="form_input" title="请填写废气含氧量，单位 %。"
                                   min="0" onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')" style="width:100%;"
                                   data-toggle="tooltip" data-placement="bottom" value="${business9410.tbPfkORatio}">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-6">
                        <label class="col-md-4 control-label input_on ">年均SO2排放浓度(毫克/立方米)：
                        </label>
                        <div class="col-md-8">
                            <input name="tbSo2ConAnual" id="tbSo2ConAnual" type="number" maxlength="1000"
                                   step="0.01" class="form_input" title="请填写SO2排放浓度，单位毫克/立方米。"
                                   min="0" onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')" style="width:100%;"
                                   data-toggle="tooltip" data-placement="bottom" value="${business9410.tbSo2ConAnual}">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label class="col-md-4 control-label input_on ">年均NOx排放浓度(毫克/立方米)：
                        </label>
                        <div class="col-md-8">
                            <input name="tbNoxConAnual" id="tbNoxConAnual" type="number" maxlength="1000"
                                   step="0.01" class="form_input" title="请填写年均NOx排放浓度，单位 毫克/立方米。"
                                   min="0" onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')" style="width:100%;"
                                   data-toggle="tooltip" data-placement="bottom" value="${business9410.tbNoxConAnual}">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-6">
                        <label class="col-md-4 control-label input_on ">年均烟粉尘浓度(毫克/立方米)：
                        </label>
                        <div class="col-md-8">
                            <input name="tbPmConAnual" id="tbPmConAnual" type="number" maxlength="1000"
                                   step="0.01" class="form_input" title="请填写年均烟粉尘浓度，单位毫克/立方米。"
                                   min="0" onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')" style="width:100%;"
                                   data-toggle="tooltip" data-placement="bottom" value="${business9410.tbPmConAnual}">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label class="col-md-4 control-label input_on "> <em class="required_em">*</em>是否国控重点污染源：
                        </label>
                        <div class="col-md-8 box">
                            <div class="checkbox">
                                <label> <input type="radio" name="tbCountrykOrNot"
                                        <c:if test="${fn:contains(business9410.tbCountrykOrNot,'是')}"> checked="checked" </c:if>
                                               value="是"/>&nbsp;&nbsp;是</label>
                                <label> <input type="radio" name="tbCountrykOrNot"
                                        <c:if test="${fn:contains(business9410.tbCountrykOrNot,'否')}"> checked="checked" </c:if>
                                               value="否 "/>&nbsp;&nbsp; 否</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-6">
                        <label class="col-md-4 control-label input_on "> <em class="required_em">*</em>是否省控重点污染源：
                        </label>
                        <div class="col-md-8 box">
                            <div class="checkbox">
                                <label> <input type="radio" name="tbProvKOrNot"
                                        <c:if test="${fn:contains(business9410.tbProvKOrNot,'是')}"> checked="checked" </c:if>
                                               value="是"/>&nbsp;&nbsp;是</label>
                                <label> <input type="radio" name="tbProvKOrNot"
                                        <c:if test="${fn:contains(business9410.tbProvKOrNot,'否')}"> checked="checked" </c:if>
                                               value="否 "/>&nbsp;&nbsp; 否</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label class="col-md-4 control-label input_on "> <em class="required_em">*</em>是否市控重点污染源：
                        </label>
                        <div class="col-md-8 box">
                            <div class="checkbox">
                                <label> <input type="radio" name="tbCityKOrNot"
                                        <c:if test="${fn:contains(business9410.tbCityKOrNot,'是')}"> checked="checked" </c:if>
                                               value="是"/>&nbsp;&nbsp;是</label>
                                <label> <input type="radio" name="tbCityKOrNot"
                                        <c:if test="${fn:contains(business9410.tbCityKOrNot,'否')}"> checked="checked" </c:if>
                                               value="否 "/>&nbsp;&nbsp; 否</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-6">
                        <label class="col-md-4 control-label input_on "> <em class="required_em">*</em>是否安装在线监测：
                        </label>
                        <div class="col-md-8 box">
                            <div class="checkbox">
                                <label> <input type="radio" name="tbInstallOrNot"
                                        <c:if test="${fn:contains(business9410.tbInstallOrNot,'是')}"> checked="checked" </c:if>
                                               value="是"/>&nbsp;&nbsp;是</label>
                                <label> <input type="radio" name="tbInstallOrNot"
                                        <c:if test="${fn:contains(business9410.tbInstallOrNot,'否')}"> checked="checked" </c:if>
                                               value="否 "/>&nbsp;&nbsp; 否</label>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="form_buttons">
                    <button id="save" type="submit" class="button">提交</button>
                </div>
            </li>
        </ul>
    </form>
</div>
