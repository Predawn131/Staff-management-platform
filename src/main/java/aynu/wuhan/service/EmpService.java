package aynu.wuhan.service;

import aynu.wuhan.utils.PageModel;
import aynu.wuhan.vo.EmpVO;


import java.util.List;

public interface EmpService {
    //增
    int addEmp(EmpVO vo);
    //删
    int deleteEmpById(int id);
    //改
    int updateEmp(EmpVO vo);
    //查
    EmpVO queryById(int id);


    List<EmpVO> queryAllEmp();

    List<EmpVO> findEmp(EmpVO empvo, PageModel pageModel);

    int findEmpCount(EmpVO empvo);


}
