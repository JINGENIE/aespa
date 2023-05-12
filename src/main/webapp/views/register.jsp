<%--@@include('header.htm')--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
          success:function(result){
            if(result == 0){
              $('#check_id').text('사용가능합니다.');
              $('#user_pwd').focus();
            }else{
              $('#check_id').text('사용불가능합니다.');
            }
          }
        });
      });
    },
    send:function(){
      let id = $('#user_id').val();
      let pwd = $('#user_pwd').val();
      let name = $('#user_name').val();
      let gender =$('#user_gender').val();
      if(id.length <= 3){
        $('#check_id').text('4자리 이상이어야 합니다.');
        $('#user_id').focus();
        return;
      }

      if(user_pwd == ''){
        $('#user_pwd').focus();
        return;
      }
      if(user_name == ''){
        $('#user_name').focus();
        return;
      }

      $('#register_form').attr({
        'action':'/registerimpl',
        'method':'post'
      });
      $('#register_form').submit();
    }
  };

  $(function(){
    register_form.init();
  });
</script>
<section class="register-page account">
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-md-offset-3">
        <div class="block text-center">
          <a class="logo" href="index.html">
            <img src="images/logo.png" alt="" width="100px">
          </a>
          <h2 class="text-center">회원가입</h2>
          <form class="text-left clearfix" action="index.html" method="post">
            <div class="form-group">
              <input type="text" class="form-control" name="user_id" placeholder="아이디를 입력하세요">
            </div>
            <div class="form-group">
              <input type="password" class="form-control"  name="user_pwd"   placeholder="비밀번호를 입력하세요">
            </div>
            <div class="form-group">
              <input type="text" class="form-control" name="user_name" placeholder="이름을 입력하세요">
            </div>
            <div class="form-group">
              <input type="email" class="form-control" name="user_email" placeholder="Email을 입력하세요">
            </div>
            <div class="form-group">
              성별 : <select name ="gender" >
              <option value = "male" name = "male">남자</option>
              <option value = "female" name = "female">여자</option>

            </select>
            </div>
            <div class="form-group">
              <input type="text" class="form-control" name="user_contact" placeholder="전화번호를 입력하세요">
            </div>
            <div class="form-group">
              <!--카카오 주소로 입력하기 -->
              <input type="text" class="form-control"  name="user_address"   placeholder="주소를 입력하세요">
            </div>
            <div class="form-group">
              <!--생년월일입력하기 -->
              <input type="date" class="form-control"  name="user_birthday"  >
            </div>

            <div class="text-center">
              <button type="submit" class="btn btn-main text-center" id="register_btn" name="register_btn">register</button>
            </div>
          </form>
          <p class="mt-20">Already hava an account ?<a href="login.html"> Login</a></p>
          <p><a href="forget-password.html"> Forgot your password?</a></p>
        </div>
      </div>
    </div>
  </div>
</section>

<%--@@include('footer.htm')--%>