package aynu.wuhan.dao;

import aynu.wuhan.vo.EmpVO;

import java.util.List;
import java.util.Map;

public interface EmpDao {
    //增
    int addEmp(EmpVO vo);
    //删
    int deleteEmpById(int id);
    //改
    int updateEmp(EmpVO vo);
    //查
    EmpVO queryById(int id);
    List<EmpVO> queryAllEmp();
    List<EmpVO> selectEmp(Map map);

    int selectEmpCount(EmpVO empvo);
}
