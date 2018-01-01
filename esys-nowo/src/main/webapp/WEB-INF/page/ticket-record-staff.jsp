<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div style="padding: 5px 5px">
	<!-- 1.列表 http://www.jeasyui.com/documentation/index.php# datagrid -->
	<table id="dg-record" class="easyui-datagrid"
		style="width: 700px; height: 500px" url="sys/record/list"
		toolbar="#toolbar-record" pagination="true" rownumbers="true"
		fitColumns="true" singleSelect="true">
		<thead>
			<tr>
				<th field="id" width="100">ID</th>
				<th field="price" width="30">价格</th>
				<th field="sellTime" width="50">售出时间</th>
				<th field="total" width="50">售出总量</th>
			</tr>
		</thead>
	</table>


	<!-- 列表上的按钮 linkbutton -->
	<div id="toolbar-record">
		<form id="fm-search-record">
			<table>
				<tr>
					<a class="easyui-linkbutton" iconCls="icon-add" plain="true"
						onclick="loadCreateRecordForm()">创建</a>
					<a class="easyui-linkbutton" iconCls="icon-edit" plain="true"
						onclick="loadUpdateRecordForm()">修改</a>
					<a class="easyui-linkbutton" iconCls="icon-remove" plain="true"
						onclick="deleteRecord()">删除</a>
					<input name="searchContent" class="easyui-textbox"
						iconCls='icon-search' />
				</tr>
			</table>
		</form>
	</div>

	<!-- 2.加载创建表单的对话框 dialog -->
	<div id="dlg-create-record" class="easyui-dialog" title="创建用户"
		style="width: 450px; height: 280px; padding: 10px 20px" closed="true"
		buttons="#dlg-buttons-create-record">
		<div class="ftitle">请输入售票记录</div>
		<!-- 创建表单 textbox、filebox、combogrid -->
		<form id="fm-create-record" method="post"
			enctype="multipart/form-data">
			<div class="fitem">
				<label>类型:</label>
				<select class="easyui-combogrid" name="ticket" style="width:200px;"
			        data-options="
						multiple:true,
						pagination:true,
			            panelWidth:450,
			            idField:'id',
			            textField:'name',
			            url:'sys/ticket/list',
			            columns:[[
			                {field:'id',title:'ID',width:100},
			                {field:'name',title:'Name',width:150},
			            ]]
			        ">
				</select>
			</div>
			<div class="fitem">
				<label>售票总量:</label> <input name="total" class="easyui-textbox"
					required="true" />
			</div>
		</form>
	</div>
	
	
	<!-- 创建表单的按钮 linkbutton -->
	<div id="dlg-buttons-create-record">
		<a href="javascript:void(0)" class="easyui-linkbutton c6"
			iconCls="icon-ok" onclick="createrecord()" style="width: 90px">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-cancel"
			onclick="javascript:$('#dlg-create-record').dialog('close')"
			style="width: 90px">取消</a>
	</div>

	<!-- 3.加载修改表单的对话框 -->
	<div id="dlg-update-record" class="easyui-dialog" title="修改用户"
		style="width: 550px; height: 320px; padding: 10px 20px" closed="true"
		buttons="#dlg-buttons-update-record">
		<div class="ftitle">请输入用户信息</div>
		<!-- 修改表单 -->
		<form id="fm-update-record" method="post" novalidate>
			<table>
				<tr>
					<td>
						<div class="fitem">
							<label>ID:</label> <input name="id" class="easyui-textbox"
								readonly="true" />
						</div>
						<div class="fitem">
							<label>价格:</label> <input name="price" class="easyui-textbox"
								required="true" />
						</div>
						<div class="fitem">
							<label>售票时间：</label> <input name="sellTime"
								class="easyui-textbox" readonly="true" />
						</div>
						<div class="fitem">
							<label>售票总量:</label> <input name="total" class="easyui-textbox"
								required="true" />
						</div>
					</td>
				</tr>
			</table>
		</form>
	</div>


	<!-- 修改表单的按钮 -->
	<div id="dlg-buttons-update-record">
		<a href="javascript:void(0)" class="easyui-linkbutton c6"
			iconCls="icon-ok" onclick="updateRecord()" style="width: 90px">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-cancel"
			onclick="javascript:$('#dlg-update-record').dialog('close')"
			style="width: 90px">取消</a>
	</div>
</div>



<!-- 4.所有按钮的点击响应事件 -->
<script type="text/javascript">
	// 为datagrid增加onBeforeLoad事件
	$('#dg-record').datagrid({
		onBeforeLoad : function(param) {// onBeforeLoad在datagrid请求列表数据之前被调用，param是请求的参数对象
			var t = $('#fm-search-record').serializeArray();
			$.each(t, function() {
				if (this.value != '' && this.value != undefined) {
					// 使用form中的name和value设置param属性值
					param[this.name] = this.value;
				}
			});
			return true;
		}
	});

	// 响应列表上的创建按钮点击事件
	function loadCreateRecordForm() {
		// 弹出修改对话框
		$('#dlg-create-record').dialog('open');
		// 清除form数据
		$('#fm-create-record').form('clear');
	}

	// 响应列表上的修改按钮点击事件
	function loadUpdateRecordForm() {
		// 获取列表上选中的行数据对象
		var row = $('#dg-record').datagrid('getSelected');
		if (row) {
			// 弹出修改对话框
			$('#dlg-update-record').dialog('open');
			// 加载form数据
			$('#fm-update-record').form('load', row);
			// 设置头像src的值
			$('#worecordUpdateFormImage').attr('src', row.headImage);
		} else {
			$.messager.alert({
				icon : 'warning',
				title : '警告',
				msg : '请选择一行记录！'
			});
		}
	}

	// 响应创建表单的保存按钮点击事件 form
	function createRecord() {
		$('#fm-create-record').form('submit', {
			url : 'sys/record/create',
			onSubmit : function() {
				return $(this).form('validate');
			},
			success : function(result) {
				var result = eval('(' + result + ')');
				if (result.success == false) {
					$.messager.alert({ // show error message
						title : '错误',
						icon : 'error',
						msg : result.message
					});
				} else {
					$('#dlg-create-record').dialog('close'); // close the dialog
					$('#dg-record').datagrid('reload'); // reload the grid data
				}
			}
		});
	}

	// 响应修改表单的保存按钮点击事件 form
	function updateRecord() {
		$('#fm-update-record').form('submit', {
			url : 'sys/record/update',
			onSubmit : function() {
				return $(this).form('validate');
			},
			success : function(result) {
				var result = eval('(' + result + ')');
				if (result.success == false) {
					$.messager.alert({ // show error message
						title : '错误',
						icon : 'error',
						msg : result.message
					});
				} else {
					$('#dlg-update-record').dialog('close'); // close the dialog
					$('#dg-record').datagrid('reload'); // reload the grid data
				}
			}
		});
	}

	// 响应列表上的删除按钮点击事件
	function deleteRecord() {
		// 获取列表中的选中行数据对象
		var row = $('#dg-record').datagrid('getSelected');
		if (row) {
			$.messager.confirm('请确认', '您确定要删除选中的用户吗？', function(r) {
				// r为true表示点击了确定按钮，否则表示点击了取消按钮
				if (r) {
					$.post('sys/record/delete', {
						woSelectedIds : row.id
					}, function(result) {
						if (result.success) {
							$('#dg-record').datagrid('reload'); // reload grid data
						} else {
							$.messager.alert({ // show error message
								title : '错误',
								icon : 'error',
								msg : result.message
							});
						}
					});
				}
			});
		}
	}
</script>