package aynu.wuhan.service;

import aynu.wuhan.utils.PageModel;
import aynu.wuhan.vo.LogVO;
//只有lang包下的类不需要导入
import java.util.List;

public interface LogService {
    //增
    int addLog(LogVO vo);
    //删
    int deleteLogById(int id);
    //改
    int updateLog(LogVO vo);
    //查
    LogVO queryById(int id);


    List<LogVO> queryAllLog();


    int findLogCount(LogVO logvo);

    List<LogVO> findLog(LogVO logvo, PageModel pageModel);
}
