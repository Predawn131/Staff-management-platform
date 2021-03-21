package aynu.wuhan.interceptor;



import aynu.wuhan.vo.UserVO;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//1.8新特性，当接口使用defalute修饰的时候，不重写也不报错
public class MyInterceptor implements HandlerInterceptor {
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        System.out.println(" get ");
        HttpSession session = request.getSession();
        UserVO flag = (UserVO) session.getAttribute("userinfo");
        if(flag!=null){
            return true;
        }else{
            response.sendRedirect("/user/login");
            return false;
        }

    }

}
