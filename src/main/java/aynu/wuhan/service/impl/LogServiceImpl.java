package aynu.wuhan.service.impl;

import aynu.wuhan.dao.LogDao;
import aynu.wuhan.service.LogService;
import aynu.wuhan.utils.PageModel;
import aynu.wuhan.vo.LogVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class LogServiceImpl implements LogService {

    @Autowired
    LogDao dao;

    @Override
    public int addLog(LogVO vo) {
        return dao.addLog(vo);
    }

    @Override
    public int deleteLogById(int id) {
        return dao.deleteLogById(id);
    }

    @Override
    public int updateLog(LogVO vo) {
        return dao.updateLog(vo);
    }

    @Override
    public LogVO queryById(int id) {
        return dao.queryById(id);
    }

    @Override
    public List<LogVO> queryAllLog() {
        return dao.queryAllLog();
    }

    @Override
    public int findLogCount(LogVO logvo) {
        return dao.selectLogCount(logvo);
    }

    @Override
    public List<LogVO> findLog(LogVO log, PageModel pageModel) {
        Map map=new HashMap();
        map.put("log",log);
        map.put("pageModel",pageModel);
        return dao.selectLog(map);
    }


}
