<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div style="padding:20px 20px">
		<div class="ftitle">请输入人员信息</div>
		<!-- 创建表单 textbox、filebox、combogrid -->
		<form id="fm-update-staff" method="post" enctype="multipart/form-data">
			<div class="fitem">
				<label>用户名:</label>
				<input name="loginName" class="easyui-textbox" required="true" />
			</div>
			<div class="fitem">
				<label>密码:</label>
				<input name="password" class="easyui-textbox" required="true" />
			</div>
			<div class="fitem">
				<label>头像:</label>
				<input name="headImageFile" class="easyui-filebox" buttonText="选择图片" />
			</div>
			<a href="javascript:void(0)" class="easyui-linkbutton c6" iconCls="icon-ok" 
			onclick="saveStaff()" style="width: 90px">保存</a>
		</form>
</div>
<script type="text/javascript">
</script>