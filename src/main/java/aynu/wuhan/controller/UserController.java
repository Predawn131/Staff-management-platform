package aynu.wuhan.controller;

import aynu.wuhan.service.UserService;
import aynu.wuhan.utils.PageModel;
import aynu.wuhan.vo.UserVO;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    UserService userService;

    @RequestMapping("/login")
    public String login(){
        return "login";
    }

    @RequestMapping("/checkUser")
    public String checkUser(String userName, String userPw, Model model, HttpSession session){
        System.out.println("userName = " + userName+"userPw"+userPw);
        UserVO flag = userService.queryByName(userName,userPw);
        System.out.println("flag = " + flag);
        if(flag !=null){
            //session添加当前用户信息
            session.setAttribute("userinfo",flag);
            //用户登录成功，跳转用户列表显示页面
            List<UserVO> list = userService.queryAllUser();
            model.addAttribute("list",list);
            System.out.println(list.size());
            return "index";
        }else{
            model.addAttribute("msg","错误的用户名密码");
            return "login";
        }

    }
    @RequestMapping("/exit")
    public String exit(HttpSession session){
        session.removeAttribute("userinfo");
        return "login";
    }
    @RequestMapping("/list")
        public String list(Model model){
            //index页面跳转到后台的list方法
            //list方法加入数据，转发跳转到目的页面（list页面）
            List<UserVO> list = userService.queryAllUser();
            model.addAttribute("list",list);
        return "userList";
    }

    /**
     * 返回添加视图页面
     * @return
     */
    @RequestMapping("/toadd")
    public String toadd(){
        return "userAdd";
    }

    /**
     * 用户添加
     * @param uservo
     * @return
     */
    @RequestMapping("/add")
    public String add(UserVO uservo){
        System.out.println("uservo = " + uservo);
            userService.addUser(uservo);
        return "redirect:/user/findUser";
    }

    /**
     * 用户显示
     * @param userId
     * @return
     */
    @RequestMapping("/view")
    public String toView(int userId, Model model){
        System.out.println("userId = " + userId);
        UserVO uservo = userService.queryById(userId);
        System.out.println(  uservo);
        model.addAttribute("user",uservo);
        return "userView";
    }

    /**
     * 用户删除
     * @param userId
     * @return
     */
    @RequestMapping("/del")
    public String del(int userId){
        userService.deleteUserById(userId);
        return "redirect:/user/findUser";
    }
    @RequestMapping("/toupdate")
    public String toUpdate(int userId, Model model){
        System.out.println("userId = " + userId);
        UserVO uservo = userService.queryById(userId);
        System.out.println(  uservo);
        model.addAttribute("user",uservo);
        return "userUpdate";
    }
    @RequestMapping("/update")
    public String update(UserVO uservo){
        System.out.println("uservo = " + uservo);
        userService.updateUser(uservo);
        return "redirect:/user/findUser";
    }
    @RequestMapping("/toupdatePw")
    public String toupdatePw(){
        return "userPwUpdate";
    }
    @RequestMapping("/updatePw")
    public String updatePw(String id,String pw){
        userService.updateUserByPw(id,pw);
        return "redirect:/user/findUser";
    }

    @RequestMapping("/findUser")
    public String findUser(@RequestParam(defaultValue = "1") int pageIndex, @RequestParam(defaultValue = "")String userName, Model model){
        UserVO uservo = new UserVO();
        uservo.setUserName(userName);

        PageModel pageModel=new PageModel();
        pageModel.setPageIndex(pageIndex);
        int recordCount=userService.findUserCount(uservo);
        pageModel.setRecordCount(recordCount);
        List<UserVO> users=userService.findUser(uservo,pageModel);
        model.addAttribute("pageModel",pageModel);
        model.addAttribute("users",users);
        model.addAttribute("user",uservo);
//        for(UserVO u:users){
//        System.out.println(u);
//          }
        return "userList";
    }

}
