package aynu.wuhan.service.impl;

import aynu.wuhan.dao.EmpDao;
import aynu.wuhan.service.EmpService;
import aynu.wuhan.utils.PageModel;
import aynu.wuhan.vo.EmpVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class EmpServiceImpl implements EmpService {
    @Autowired
    EmpDao dao;

    @Override
    public int addEmp(EmpVO vo) {
        return dao.addEmp(vo);
    }

    @Override
    public int deleteEmpById(int id) {
        return dao.deleteEmpById(id);
    }

    @Override
    public int updateEmp(EmpVO vo) {
        return dao.updateEmp(vo);
    }

    @Override
    public EmpVO queryById(int id) {
        return dao.queryById(id);
    }

    @Override
    public List<EmpVO> queryAllEmp() {
        return dao.queryAllEmp();
    }

    @Override
    public List<EmpVO> findEmp(EmpVO emp, PageModel pageModel) {
        Map map=new HashMap();

        map.put("emp",emp);
        map.put("pageModel",pageModel);
        return dao.selectEmp(map);
    }

    @Override
    public int findEmpCount(EmpVO empvo) {
        return dao.selectEmpCount(empvo);
    }
}
