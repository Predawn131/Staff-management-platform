package aynu.wuhan.dao;

import aynu.wuhan.vo.LogVO;
import aynu.wuhan.vo.UserVO;

import java.util.List;
import java.util.Map;

public interface LogDao {
    //增
    int addLog(LogVO vo);
    //删
    int deleteLogById(int id);
    //改
    int updateLog(LogVO vo);
    //查
    LogVO queryById(int id);
    List<LogVO> queryAllLog();

    List<LogVO> selectLog(Map map);

    int selectLogCount(LogVO logvo);

}
