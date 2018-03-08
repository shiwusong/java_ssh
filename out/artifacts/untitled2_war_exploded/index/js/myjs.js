// 显示弹出框 添加病人
$('#btn_addPatient').click(function(){
    $('#modal_addPatient').modal('show')
})

// 显示弹出框 修改病人信息
function updatePatient(patientID)
{
    var id = patientID;
    $('#modal_updatePatient').modal('show');

}

//添加病人信息
$('#btn_form_add').click(function(){
    $('#form_addP').submit();
})