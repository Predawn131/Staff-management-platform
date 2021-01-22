package aynu.wuhan.service.impl;

import aynu.wuhan.dao.DeptDao;
import aynu.wuhan.service.DeptService;
import aynu.wuhan.utils.PageModel;
import aynu.wuhan.vo.DeptVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class DeptServiceImpl implements DeptService {
    @Autowired
    DeptDao dao;

    @Override
    public int addDept(DeptVO vo) {
        return dao.addDept(vo);
    }

    @Override
    public int deleteDeptById(int id) {
        return dao.deleteDeptById(id);
    }

    @Override
    public int updateDept(DeptVO vo) {
        return dao.updateDept(vo);
    }

    @Override
    public DeptVO queryById(int id) {
        return dao.queryById(id);
    }

    @Override
    public List<DeptVO> queryAllDept() {
        return dao.queryAllDept();
    }

    @Override
    public int findDeptCount(DeptVO deptvo) {
        return dao.selectDeptCount(deptvo);
    }

    @Override
    public List<DeptVO> findDept(DeptVO deptvo, PageModel pageModel) {
        Map map=new HashMap();
        map.put("dept",deptvo);
        map.put("pageModel",pageModel);
        return dao.selectDept(map);
    }
}
