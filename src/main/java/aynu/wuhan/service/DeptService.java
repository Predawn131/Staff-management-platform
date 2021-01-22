package aynu.wuhan.service;

import aynu.wuhan.utils.PageModel;
import aynu.wuhan.vo.DeptVO;

import java.util.List;

public interface DeptService {
    //增
    int addDept(DeptVO vo);
    //删
    int deleteDeptById(int id);
    //改
    int updateDept(DeptVO vo);
    //查
    DeptVO queryById(int id);


    List<DeptVO> queryAllDept();

    int findDeptCount(DeptVO deptvo);

    List<DeptVO> findDept(DeptVO deptvo, PageModel pageModel);
}
