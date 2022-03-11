<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입 창</title>
    <link href="<c:url value='/css/join.css'/>" rel="stylesheet" type="text/css">

    <script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>

    <script src="<c:url value='/js/join.js'/>"></script>
    <script src="<c:url value='/js/memIdCheck.js'/>"></script>

</head>
<body>
    <section>
        <div id="joinBox" class="joinForm">
            <form name="joinForm" id="joinForm"  method="post">
                <table>
                    <tr>
                        <td class="title">
                        <h1> 회원가입 </h1>
                        <h4>회원정보입력</h4>
                        <span class="point-color">
                            <small>
                                <em style="margin-left: 30px;">*</em> 는 필수 입력 항목입니다.
                            </small>
                        </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="Cn">
                            <em class="point-color">*</em>
                            <label for="memId">아이디</label>
                        </td>
                        <td class="Cn2">
                            <input type="text" name="memId" id="memId" class="int_id" placeholder="아이디를 입력해주세요."
                                onfocus="this.placeholder=''" onblur="this.placeholder='아이디를 입력해주세요.'">
                            <input class="IdCheckBtu" type="button" value="ID중복체크" id="idCheck">
                            <div id="idError" class="error"></div>
                        </td>
                    </tr>
                    <tr>
                        <td class="Cn">
                            <em class="point-color">*</em>
                            <label for="password">비밀번호</label>
                            <dic class="tooltip"><i class="fas fa-exclamation-triangle"></i>
                                <div class="tooltip-text">
                                    <b>
                                        비밀번호 입력 시 아래 규칙을 참고해주세요!
                                    </b>
                                    <p>
                                        1. 아이디와 비밀번호가 같을 수 없습니다.
                                    </p>
                                    <p>
                                        2. 비밀번호는 영문자,숫자,특수기호의 조합으로
                                        <b>8~15자리</b>를 사용해야합니다.
                                    </p>
                                    <p>
                                        3. 특수기호는 <b>! @ # $ % ^ * ? _ ~</b>만 사용 가능합니다.
                                    </p>
                                </div>
                            </dic>
                        </td>
                        <td class="Cn2">
                            <input type="password" name="password" id="password" class="int" placeholder="비밀번호를 입력해주세요."
                                onfocus="this.placeholder=''" onblur="this.placeholder='비밀번호를 입력해주세요.'">
                            <div id="pwdError" class="error"></div>
                            <span class="point-color">
                                <small>
                                    8~15자리의 영문/숫자/특수문자를 함께 입력해주세요.
                                </small>
                            </span>
                            <input type="password" name="passwordCheck" id="passwordCheck" class="int"
                                placeholder="비밀번호를 다시 입력해주세요." onfocus="this.placeholder=''"
                                onblur="this.placeholder='비밀번호를 다시 입력해주세요.'">
                            <div id="pwdCkError" class="error"></div>
                        </td>
                    </tr>
                    <tr>
                        <td class="Cn">
                            <em class="point-color">*</em>
                            <label for="name">이름</label>
                        </td>
                        <td class="Cn2">
                            <input type="text" name="name" id="name" class="int" size="35"
                                placeholder="한글 또는 영문으로 입력해주세요." onfocus="this.placeholder=''"
                                onblur="this.placeholder='한글 또는 영문으로 입력해주세요.'">
                            <div id="nameError" class="error"></div>
                        </td>
                    </tr>
                    <tr>
                        <td class="Cn">
                            <em class="point-color">*</em>
                            <label for="email1">이메일</label>
                        </td>
                        <td class="Cn2">
                            <input type="text" name="email1" id="email1" class="int_email_input" size="6">
                            <select name="email" class="int_email" id="email2">
                                <option value="naver.com" selected>naver.com
                                <option value="gmail.com">gmail.com
                                <option value="nate.com">nate.com
                                <option value="hanmail.net">hanmail.net
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="Cn"><label for="address">주소</label></td>
                        <td class="Cn2">
                            <input type="text" name="address1" id="address1" class="int" size="35"
                            placeholder="도로명 주소를 입력해주세요." onfocus="this.placeholder=''"
                                onblur="this.placeholder='도로명 주소를 입력해주세요.'">
                            <div id="address1Error" class="error"></div>
                            <input type="text" name="address2" id="address2" class="int" size="18"
                            placeholder="상세 주소를 입력해주세요." onfocus="this.placeholder=''"
                                onblur="this.placeholder='상세 주소를 입력해주세요.'">
                            <div id="address2Error" class="error"></div>
                            <input type="text" name="zipcode" id="zipcode" class="int" size="13"
                            placeholder="우편번호를 입력해주세요." onfocus="this.placeholder=''"
                                onblur="this.placeholder='우편번호를 입력해주세요.'">
                            <div id="zipcodeError" class="error"></div>
                        </td>
                    </tr>
                    <tr>
                        <td class="Cn"><label for="phone">연락처</label></td>
                        <td class="Cn2">
                            <input type="text" name="phone" id="phone" class="int" size="35"
                            placeholder="- 없이 입력해주세요" onfocus="this.placeholder=''"
                                onblur="this.placeholder='- 없이 입력해주세요'">
                            <div id="phoneError" class="error"></div>
                        </td>
                    </tr>
                    <tr>
                        <td class="Cn"><label for="allergyInfo">알러지</label></td>
                        <td class="Cn2">
                            <input type="text" name="allergyInfo" id="allergyInfo" class="int" size="35"
                            placeholder="알러지 정보를 기입해 주세요" onfocus="this.placeholder=''"
                                onblur="this.placeholder='알러지 정보를 기입해 주세요'">
                            <div id="allergyInfoError" class="error"></div>
                        </td>
                    </tr>
                    <tr>
                        <td class="create" colspan="2">
                            <input class="CelBtu" type="button" value="취    소" onclick="cancel()">
                            <input class="CreBtu" type="button" value="가    입" onclick="signUpCheck()">
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    
  </section>

  <!-- -->

</body>
</html>