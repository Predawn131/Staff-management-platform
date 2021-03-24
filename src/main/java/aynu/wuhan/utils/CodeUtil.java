package aynu.wuhan.utils;

import javax.servlet.http.HttpServletRequest;

public class CodeUtil {
    public static boolean checkVerifyCode(HttpServletRequest request){
        String verifyCodeExpected = (String)request.getSession().getAttribute(
            com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);
            //这里相当于 request.getParameter("verifyCodeActual");
            String verify = HttpServletRequestUtil.getString(request, "verify");
            if(verify == null || !verify.equals(verifyCodeExpected)){
                return false;
            }
            return true;
        }

}
