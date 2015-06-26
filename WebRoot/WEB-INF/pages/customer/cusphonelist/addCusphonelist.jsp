<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<div class="pageContent">
	<form method="post"
		action="${applicationScope.rootpath}saveCusphonelist.action?navTabId=cusphonelistCardNav&callbackType=closeCurrent"
		class="required-validate pageForm"
		onsubmit="return validateCallback(this,dialogAjaxDone);">
		<div class="pageFormContent" layoutH="56">
			<fieldset>
				<p>
					<label>
						联系人姓名 ：
					</label>
					<input name="cusphonelistForm.custlinkname"
						id="cusphonelistForm.custlinkname"
						value="${cusphonelistForm.custlinkname}" maxlength="30"
						type="text" size="30" class="required" />
					<input type="hidden" value="${cusphonelistKey}"
						id="cusphonelistKey" name="cusphonelistKey">
					<input type="hidden" value="${customerKey}"
						id="customerKey" name="customerKey">
				</p>
				<p>
					<label>
						电话号码 ：
					</label>
					<input name="cusphonelistForm.phoneno"
						id="cusphonelistForm.phoneno" value="${cusphonelistForm.phoneno}"
						maxlength="30" type="text" size="30" class="required" />
				</p>
				<p>
					<label>
						号码优先级 ：
					</label>
					<input name="cusphonelistForm.nolevel"
						id="cusphonelistForm.nolevel" value="${cusphonelistForm.nolevel}"
						maxlength="10" type="text" size="30" class="" />
				</p>
			</fieldset>
		</div>

		<div class="formBar">
			<ul>
				<li>
					<div class="buttonActive">
						<div class="buttonContent">
							<button type="submit">
								保存
							</button>
						</div>
					</div>
				</li>
				<li>
					<div class="buttonActive">
						<div class="buttonContent">
							<button type="button" class="close">
								取消
							</button>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</form>
</div>