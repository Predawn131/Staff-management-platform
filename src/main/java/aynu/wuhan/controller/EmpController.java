package aynu.wuhan.controller;

import aynu.wuhan.service.EmpService;
import aynu.wuhan.utils.PageModel;
import aynu.wuhan.vo.EmpVO;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/emp")
public class EmpController {
    @Autowired
    EmpService empService;

    /**
     * 员工
     * @param model
     * @return
     */
    @RequestMapping("/list")
    public String list(Model model){
        List<EmpVO> list = empService.queryAllEmp();
        model.addAttribute("list",list);
        return "empList";
    }
    //返回添加页面
    @RequestMapping("/toadd")
    public String toadd(){
        return "empAdd";
    }

    /**
     * 员工添加
     * @param empvo
     * @return
     */
    @RequestMapping("/add")
    public String add(EmpVO empvo){
        empService.addEmp(empvo);
        return "redirect:/emp/findEmp";
    }

    /**
     * 返回查看视图
     * @param empId
     * @param model
     * @return
     */
    @RequestMapping("/view")
    public String view(int empId,Model model){
        EmpVO vo = empService.queryById(empId);

        model.addAttribute("emp",vo);
        return "empView";
    }
    /**
     *
     * @param empId
     * @return
     */
    @RequestMapping("/del")
    public String del(int empId){
        empService.deleteEmpById(empId);
        return "redirect:/emp/findEmp";
    }

    /**
     * 返回修改视图页面
     * @param empId
     * @param model
     * @return
     */
    @RequestMapping("/toupdate")
    public String toupdate(int empId,Model model){
        EmpVO vo = empService.queryById(empId);
        model.addAttribute("emp",vo);
        return "empUpdate";
    }

    /**
     * 修改
     * @param empvo
     * @return
     */
    @RequestMapping("/update")
    public String update(EmpVO empvo){
        empService.updateEmp(empvo);
        return "redirect:/emp/findEmp";
    }
    @RequestMapping("/findEmp")
    public String findEmp(@RequestParam(defaultValue = "1") int pageIndex,@RequestParam(defaultValue = "")String empName,@RequestParam(defaultValue = "")String empDept, Model model){
        EmpVO empvo = new EmpVO();
        empvo.setEmpName(empName);
        empvo.setEmpDept(empDept);

        PageModel pageModel=new PageModel();
        pageModel.setPageIndex(pageIndex);
        int recordCount=empService.findEmpCount(empvo);
        pageModel.setRecordCount(recordCount);
        List<EmpVO> emps=empService.findEmp(empvo,pageModel);
        model.addAttribute("pageModel",pageModel);
        model.addAttribute("emps",emps);
        //model.addAttribute("emp",empvo);
//        for(EmpVO u:emps){
//        System.out.println(u);
//          }
        return "empList";
    }
}
