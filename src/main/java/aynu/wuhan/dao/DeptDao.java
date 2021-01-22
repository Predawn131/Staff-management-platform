package aynu.wuhan.dao;

import aynu.wuhan.vo.DeptVO;

import java.util.List;
import java.util.Map;

public interface DeptDao {
    //增
    int addDept(DeptVO vo);
    //删
    int deleteDeptById(int id);
    //改
    int updateDept(DeptVO vo);
    //查
    DeptVO queryById(int id);
    List<DeptVO> queryAllDept();

    List<DeptVO> selectDept(Map map);

    int selectDeptCount(DeptVO deptvo);
}
