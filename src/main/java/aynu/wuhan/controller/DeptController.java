package aynu.wuhan.controller;

import aynu.wuhan.service.DeptService;
import aynu.wuhan.utils.PageModel;
import aynu.wuhan.vo.DeptVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/dept")
public class DeptController {
    @Autowired
    DeptService deptService;

    /**
     * 员工
     * @param model
     * @return
     */
    @RequestMapping("/list")
    public String list(Model model){
        List<DeptVO> list = deptService.queryAllDept();
        model.addAttribute("list",list);
        return "deptList";
    }
    //返回添加页面
    @RequestMapping("/toadd")
    public String toadd(){
        return "deptAdd";
    }

    /**
     * 员工添加
     * @param deptvo
     * @return
     */
    @RequestMapping("/add")
    public String add(DeptVO deptvo){
        deptService.addDept(deptvo);
        return "redirect:/dept/findDept";
    }

    /**
     * 返回查看视图
     * @param deptId
     * @param model
     * @return
     */
    @RequestMapping("/view")
    public String view(int deptId,Model model){
        DeptVO vo = deptService.queryById(deptId);

        model.addAttribute("dept",vo);
        return "deptView";
    }
    /**
     *
     * @param deptId
     * @return
     */
    @RequestMapping("/del")
    public String del(int deptId){
        deptService.deleteDeptById(deptId);
        return "redirect:/dept/findDept";
    }

    /**
     * 返回修改视图页面
     * @param deptId
     * @param model
     * @return
     */
    @RequestMapping("/toupdate")
    public String toupdate(int deptId,Model model){
        DeptVO vo = deptService.queryById(deptId);
        model.addAttribute("dept",vo);
        return "deptUpdate";
    }

    /**
     * 修改
     * @param deptvo
     * @return
     */
    @RequestMapping("/update")
    public String update(DeptVO deptvo){
        deptService.updateDept(deptvo);
        return "redirect:/dept/findDept";
    }

    @RequestMapping("/findDept")
    public String findDept(@RequestParam(defaultValue = "1") int pageIndex, @RequestParam(defaultValue = "")String deptName, Model model){
        DeptVO deptvo = new DeptVO();
        deptvo.setDeptName(deptName);

        PageModel pageModel=new PageModel();
        pageModel.setPageIndex(pageIndex);
        int recordCount=deptService.findDeptCount(deptvo);
        pageModel.setRecordCount(recordCount);
        List<DeptVO> depts=deptService.findDept(deptvo,pageModel);
        model.addAttribute("pageModel",pageModel);
        model.addAttribute("depts",depts);
        //model.addAttribute("dept",deptvo);
//        for(DeptVO u:depts){
//        System.out.println(u);
//          }
        return "deptList";
    }
}
