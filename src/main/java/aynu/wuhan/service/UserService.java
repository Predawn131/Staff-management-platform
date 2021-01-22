package aynu.wuhan.service;

import aynu.wuhan.utils.PageModel;
import aynu.wuhan.vo.UserVO;

import java.util.List;

public interface  UserService {
    int addUser(UserVO uservo);


    int deleteUserById(int id);

    int updateUser(UserVO uservo);
    int updateUserByPw(String id,String pw);
    UserVO queryById(int id);

    UserVO queryByName(String userName,String userPw);

    List<UserVO> queryAllUser();

    List<UserVO> findUser(UserVO uservo, PageModel pageModel);

    int findUserCount(UserVO uservo);
}
