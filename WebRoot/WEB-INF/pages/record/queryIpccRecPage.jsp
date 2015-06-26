<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<form id="pagerForm" method="post"
	action="${applicationScope.rootpath}listIpccRecord.action">
	<input type="hidden" name="pageNum" value="1" />
	<input type="hidden" name="numPerPage" value="${param.numPerPage}" />
	<input type="hidden" name="orderField" value="${param.orderField}" />
	<input type="hidden" name="orderDirection"
		value="${param.orderDirection}" />
	<!-- 查询条件 -->
	<input type="hidden" value="${queryAgentID}" id="queryAgentID"
		name="queryAgentID">
	<input type="hidden" value="${queryExtentionNO}" id="queryExtentionNO"
		name="queryExtentionNO">
	<input type="hidden" value="${queryAni}" id="queryAni" name="queryAni">
	<input type="hidden" value="${queryDnis}" id="queryDnis"
		name="queryDnis">
	<input type="hidden" value="${queryTimeBegain}" id="queryTimeBegain"
		name="queryTimeBegain">
	<input type="hidden" value="${queryTimeEnd}" id="queryTimeEnd"
		name="queryTimeEnd">
	<input type="hidden" value="${queryst}" id="queryst" name="queryst">
	<input type="hidden" value="${queryusername}" id="queryusername"
		name="queryusername">
	<input type="hidden" value="${queryCalldirection}"
		id="queryCalldirection" name="queryCalldirection">
</form>
<script language="JavaScript"
	src="${applicationScope.rootpath}scripts/formcheck.js"></script>
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);"
		action="listIpccRecord.action?search=true" method="post"
		name="ipccRecForm">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
					<td>
						坐席工号：
						<input type="text" name="queryAgentID" id="queryAgentID"
							value="${queryAgentID}" maxlength="20" size="15" />
					</td>
					<td>
						分机号码：
						<input type="text" name="queryExtentionNO" id="queryExtentionNO"
							value="${queryExtentionNO}" maxlength="20" size="15" />
					</td>
					<td>
						录音开始时间：
						<input name="queryTimeBegain" id="queryTimeBegain"
							value="${queryTimeBegain}" type="text" size="20" class="date"
							format="yyyy-MM-dd HH:mm:ss" />
						<span><s:text name="syslog.dao" /> </span>
						<input name="queryTimeEnd" id="queryTimeEnd"
							value="${queryTimeEnd}" type="text" size="20" class="date"
							format="yyyy-MM-dd HH:mm:ss" />
					</td>
				</tr>
				<tr>

					<td>
						主叫号码：
						<input type="text" name="queryAni" id="queryAni"
							value="${queryAni}" maxlength="20" size="15" />
					</td>
					<td>
						被叫号码：
						<input type="text" name="queryDnis" id="queryDnis"
							value="${queryDnis}" maxlength="20" size="15" />
					</td>
				</tr>
			</table>
			<div class="subBar">
				<ul>
					<li>
						<div id="play" />
					</li>
					<li>
						<div class="buttonActive">
							<div class="buttonContent">
								<button type="submit">
									<s:text name="common.search" />
								</button>
							</div>
						</div>
					</li>
					<li>
						<div class="buttonActive">
							<div class="buttonContent">
								<button type="button" onclick="javascript:getValue(document.forms['ipccRecForm']);">
									<s:text name="common.clean" />
								</button>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</form>
</div>
<div class="pageContent">
	<table class="table" layoutH="145" nowrapTD="false" width="100%"
		asc="asc" desc="desc" style="table-layout: fixed">
		<thead>
			<tr>
				<th width="5">
				</th>
				<th width="70">
					坐席工号
				</th>
				<th width="70">
					分机号码
				</th>
				<th width="100">
					主叫号码
				</th>
				<th width="100">
					被叫号码
				</th>
				<th width="70">
					呼叫方向
				</th>
				<th width="150">
					录音开始时间
				</th>
				<th width="70">
					录音时长
				</th>
				<th width="70">
					上传地址
				</th>
				
				<th width="70">
					<s:text name="common.operate" />
				</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${recordList}">
				<tr target="slt_uid" rel="">
					<td>
					</td>
					<td>
						${item.agentLoginID}
					</td>
					<td>
						${item.deviceType}
					</td>
					<td>
						${item.oriANI}
					</td>
					<td>
						${item.oridnis}
					</td>
					
					<td>
						<c:forEach
							items="${applicationScope.dictpara['REC_CALLDIRECTION']}"
							var="activeState">
							<c:if test="${item.callDirection == activeState.code}">
											${activeState.title}
									</c:if>
						</c:forEach>
					</td>
					<td>
						${item.startTime}
					</td>
					<td>
						${item.timeLength}
					</td>
					<td>
						${item.uploadadress}
					</td>
					<td>
						<a class="btnAttach"
							href="${applicationScope.rootpath}download.action?fileName=${item.fileName}&loadflag=recording"
							target="_black" title="下载"><span>下载</span> </a>
						<a class="btnMusic"
							href="javascript:Player('${applicationScope.rootpath}download.action?fileName=${item.fileName}');">播放</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<c:import url="/WEB-INF/pages/common/panelBar.jsp"></c:import>
</div>
