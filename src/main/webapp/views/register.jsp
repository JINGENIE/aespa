<%--@@include('header.htm')--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
  let register_form = {
    init:function(){
      $('#register_btn').addClass('disabled');

      $('#register_btn').click(function(){
        register_form.send();
      });
      $('#user_name').keyup(function(){
        let id = $('#user_id').val();
        let pwd = $('#user_pwd').val();
        let name = $('#user_name').val();
        let gender = $('#user_gender').val();
        if(id != '' && pwd != '' && name != ''){
          $('#register_btn').removeClass('disabled');
        }
      });
      $('#user_id').keyup(function(){
        let txt_id = $(this).val();
        if(txt_id.length <= 3){
          return;
        }
        $.ajax({
          url:'/checkid',
          data:{'id':txt_id},
          dataType:'json',
          type:'POST',
          success:function(data){
            if(data.result == true){
              $('#id_check').html('<i class="fa fa-check" aria-hidden="true"></i> 사용 가능한 아이디입니다.').css('color', 'green');
            }
            else{
              $('#id_check').html('<i class="fa fa-times" aria-hidden="true"></i> 중복된 아이디입니다.').css('color', 'red');
            }
          },
          error:function(err){
            console.log(err);
          }
        });
      });
    },
    send:function(){
      let id = $('#user_id').val();
      let pwd = $('#user_pwd').val();
      let name = $('#user_name').val();
      let gender = $('#user_gender').val();
      let birthday = $('#user_birthday').val();
      let address = $('#user_address').val();
      $.ajax({
        url:'/register',
        data:{'user_id':id,
              'user_pwd':pwd,
              'user_name':name,
              'user_gender':gender,
              'user_birthday':birthday,
              'user_address':address },
        dataType:'json',
        type:'POST',
        success:function(data){
          if(data.result == true){
            alert('회원가입이 완료되었습니다.');
            location.href = '/';
          }
          else{
            alert('회원가입에 실패하였습니다.');
          }
        },
        error:function(err){
          console.log(err);
        }
      });
    }
  };
  $(function(){
    register_form.init();
  });
</script>

<div class="container">
  <div class="row">
    <div class="col-sm-6 col-sm-offset-3">
      <form class="form-horizontal">
        <fieldset>
          <legend>회원가입</legend>
          <div class="form-group">
            <label for="user_id" class="col-lg-2 control-label">아이디</label>
            <div class="col-lg-10">
              <input type="text" class="form-control" id="user_id" placeholder="아이디를 입력하세요." required>
            </div>
            <div class="col-sm-10">
              <span id="check_id" class="bg-danger"></span>
            </div>
          </div>
          <div class="form-group">
            <label for="user_pwd" class="col-lg-2 control-label">비밀번호</label>
            <div class="col-lg-10">
              <input type="password" class="form-control" id="user_pwd" placeholder="비밀번호를 입력하세요." required>
            </div>
          </div>
          <div class="form-group">
            <label for="user_name" class="col-lg-2 control-label">이름</label>
            <div class="col-lg-10">
              <input type="text" class="form-control" id="user_name" placeholder="이름을 입력하세요." required>
            </div>
          </div>

          <div class="form-group">
            <label for="user_contact" class="col-lg-2 control-label">전화번호</label>
            <div class="col-lg-10">
              <input type="text" class="form-control" id="user_contact" placeholder="전화번호를 입력하세요." required>
            </div>
          </div>
          <div class="form-group">
            <label for="user_address" class="col-lg-2 control-label">주소</label>
            <div class="col-lg-10">
              <input type="text" class="form-control" id="user_address" placeholder="주소를 입력하세요." required>
            </div>
          </div>
          <div class="form-group">
            <label for="user_birthday" class="col-lg-2 control-label">생년월일</label>
            <div class="col-lg-10">
              <input type="date" id="user_birthday" name="userBirth"/>
            </div>
          </div>

          <div class="form-group">
            <label for="user_gender" class="col-lg-2 control-label">성별</label>
            <div class="col-lg-10">
              <select class="form-control" id="user_gender" required>
                <option value="" disabled selected>성별을 선택하세요.</option>
                <option value="male">남성</option>
                <option value="female">여성</option>
              </select>
            </div>
          </div>
          <div class="form-group">
            <div class="col-lg-10 col-lg-offset-2">
              <button type="button" id="register_btn" class="btn btn-primary">회원가입</button>
            </div>
          </div>
        </fieldset>
      </form>
    </div>
  </div>




