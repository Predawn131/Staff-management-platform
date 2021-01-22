package aynu.wuhan.dao;

import aynu.wuhan.vo.UserVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface UserDao {
    int addUser(UserVO uservo);

    int deleteUserById(int id);

    int updateUser(UserVO uservo);
    int updateUserByPw(@Param("id") String id,@Param("pw")  String pw);
    UserVO queryById(int id);

    List<UserVO> queryAllUser();

    UserVO queryByName(@Param("userName") String userName,@Param("userPw")  String userPw);

    List<UserVO> selectUser(Map map);

    int selectUserCount(UserVO uservo);
}
