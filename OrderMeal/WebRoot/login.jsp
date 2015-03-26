<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<body id="login" class="pg-unitive-login theme--waimai">

        <header id="site-mast" class="site-mast site-mast--mini">
            <div class="site-mast__branding cf">
                <a class="site-logo" href="http://waimai.meituan.com" gaevent="header/logo">美团外卖</a>
            </div>
        </header><div class="site-body cf">
    <div class="promotion-banner">
        
            <img src="https://s1.meituan.com/campaign/tuanpic/__62999082__8626674.jpg" width="480" height="370" />    </div>
    <div data-component="login-section" class="component-login-section component-login-section--page" mt-scope='[]'  data-component-params='{"service":"waimai","isDialog":false}' data-component-config='{"lazyRender":false}'><div class="origin-part">
    <div class="validate-info" style="visibility:hidden"></div>
        <h2>
        <a href="/account/unitivelogin?service=waimai&continue=http%3A%2F%2Fwaimai.meituan.com%3A80%2Faccount%2Fsettoken%3Fcontinue%3Dhttp%253A%252F%252Fwaimai.meituan.com%252Frestaurant%252F44400%253Fpos%253D0&_nsmobilelogin=1" class="login-type J-show-mobile-login" id="J-mobile-login-link" gaevent="loginemotion/nav/mobile" style="display:none">手机动态码登录<i></i></a>
        <a href="https://passport.meituan.com/account/unitivelogin?service=waimai&continue=http%3A%2F%2Fwaimai.meituan.com%3A80%2Faccount%2Fsettoken%3Fcontinue%3Dhttp%253A%252F%252Fwaimai.meituan.com%252Frestaurant%252F44400%253Fpos%253D0" class="login-type login-type--normal" id="J-login-link" gaevent="loginemotion/nav/normal">普通方式登录<i></i></a>
    账号登录
    </h2>
        <form id="J-login-form" action="https://passport.meituan.com/account/unitivelogin?service=waimai&continue=http%3A%2F%2Fwaimai.meituan.com%3A80%2Faccount%2Fsettoken%3Fcontinue%3Dhttp%253A%252F%252Fwaimai.meituan.com%252Frestaurant%252F44400%253Fpos%253D0" method="post" class="form form--stack J-wwwtracker-form" style="display:none"><span style="display:none"><input type="hidden" name="csrf" value="owzCJ8aKtTRIhQIX0WPI-6Fi2c1AXcclGyqBhH5M7JIvybxaDVZwRFSKl85DwxMb" /></span>
        <div id="J-normal-login-tip" class="common-tip common-tip--login" style="display:none"></div>
        <div class="form-field form-field--icon">
            <i class="icon icon-user"></i>
            <input type="text" id="login-email" class="f-text" name="email" placeholder="手机号/用户名/邮箱" value="" />
        </div>
        <div class="form-field form-field--icon">
            <i class="icon icon-password"></i>
            <input type="password" id="login-password" class="f-text" name="password" placeholder="密码" />
        </div>
                <div class="form-field form-field--auto-login">
            <a tabindex="-1" href="http://www.meituan.com/account/retrievepassword" target="_top" class="forget-password">忘记密码？</a>
                        <input type="checkbox" value="1" checked name="auto_login" id="autologin" class="f-check " />
            <label class="normal" for="autologin">7天内自动登录</label>
                    </div>
        <div class="form-field form-field--ops">
            <input type="hidden" name="fingerprint" class="J-fingerprint" value="" />
            <input type="hidden" name="origin" value="account-login" />
                        <input type="submit" class="btn" name="commit" value="登录" />
        </div>
    </form>

    <form id="J-mobile-login-form" action="https://passport.meituan.com/account/unitivemobilelogin?service=waimai&continue=http%3A%2F%2Fwaimai.meituan.com%3A80%2Faccount%2Fsettoken%3Fcontinue%3Dhttp%253A%252F%252Fwaimai.meituan.com%252Frestaurant%252F44400%253Fpos%253D0" method="post" class="form form--stack J-wwwtracker-form" ><span style="display:none"><input type="hidden" name="csrf" value="w7I9Dtu2JjkqeSDCkIg-jzwIYt5V4z1HNUJyHfISQ3zz7wMMw94aoTQmjOoRS3aT" /></span>
                <div id="J-mobile-login-tip" class="common-tip common-tip--login" style="display:none"></div>
        <div class="J-info form-field form-field--icon">
            <i class="icon icon-phone"></i>
            <input type="text" id="login-mobile" class="f-text" name="mobile" value="" placeholder="请输入手机号，未注册将自动注册" />
        </div>
        <div class="form-field form-field--captcha-mobile" style="display:none;">
            <i class="icon icon-captcha"></i>
            <input type="text" id="login-captcha" class="f-text" name="login-captcha" placeholder="验证码" autocomplete="off" />
            <img height="34" width="61" class="login-captcha-img" id="login-captcha-img" src="/account/captcha" />
            <a tabindex="-1" class="captcha-refresh inline-link" href="javascript:void(0)">看不清楚？换一张</a>
        </div>
        <div class="form-field form-field--verify-mobile">
            <input type="button" class="btn-normal btn-mini" id="J-verify-btn" value="免费获取手机动态码" />
            <span class="verify-tip" id="J-verify-tip"></span>
        </div>
        <div class="form-field form-field--icon">
            <i class="icon icon-password"></i>
            <input type="text" name="code" id="login-verify-code" class="f-text" autocomplete="off" value="" placeholder="动态码" />
        </div>
        <div class="form-field form-field--auto-login">
            <a tabindex="-1" href="http://www.meituan.com/account/retrievepassword" target="_top" class="forget-password">忘记密码？</a>
                        <input type="checkbox" value="1" checked name="auto_login" id="mobile-autologin" class="f-check " />
            <label class="normal" for="mobile-autologin">7天内自动登录</label>
                    </div>
        <div class="form-field form-field--ops">
            <input type="hidden" name="origin" value="account-login" />
            <input type="hidden" name="fingerprint" class="J-fingerprint" value="" />
                        <input type="submit" class="btn" name="commit" value="登录"  />
        </div>
            </form>
    
  </body>
</html>
