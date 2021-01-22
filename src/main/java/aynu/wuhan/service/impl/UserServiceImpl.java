package aynu.wuhan.service.impl;

import aynu.wuhan.dao.UserDao;
import aynu.wuhan.service.UserService;
import aynu.wuhan.utils.PageModel;
import aynu.wuhan.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserDao userdao;

    @Override
    public int addUser(UserVO uservo) {

        return userdao.addUser(uservo);
    }



    @Override
    public int deleteUserById(int id) {
        return userdao.deleteUserById(id);
    }

    @Override
    public int updateUser(UserVO uservo) {
        return userdao.updateUser(uservo);
    }

    @Override
    public int updateUserByPw(String id, String pw) {
        return userdao.updateUserByPw(id,pw);
    }


    @Override
    public UserVO queryById(int id) {
        return userdao.queryById(id);
    }

    @Override
    public UserVO queryByName(String userName, String userPw) {
        return userdao.queryByName(userName,userPw);
    }

    @Override
    public List<UserVO> queryAllUser() {
        return userdao.queryAllUser();
    }

    @Override
    public List<UserVO> findUser(UserVO user, PageModel pageModel) {
        Map map=new HashMap();
        map.put("user",user);
        map.put("pageModel",pageModel);
        return userdao.selectUser(map);
    }

    @Override
    public int findUserCount(UserVO uservo) {
            return userdao.selectUserCount(uservo);
    }
}
