package aynu.wuhan.controller;

import aynu.wuhan.service.LogService;
import aynu.wuhan.utils.PageModel;

import aynu.wuhan.vo.LogVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/log")
public class LogController {

    @Autowired
    LogService logService;

    /**
     * 日志添加
     * @param model
     * @return
     */
    @RequestMapping("/list")
    public String list(Model model){
        List<LogVO> list = logService.queryAllLog();
        model.addAttribute("list",list);
        return "logList";
    }
    //返回添加页面
    @RequestMapping("/toadd")
    public String toadd(){
       return "logAdd";
    }

    /**
     * 日志添加
     * @param logvo
     * @return
     */
    @RequestMapping("/add")
    public String add(LogVO logvo){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String formatStr = sdf.format(new Date());
        logvo.setLogTime(formatStr);
        logService.addLog(logvo);
        return "redirect:/log/findLog";
    }

    /**
     * 返回查看视图
     * @param logId
     * @param model
     * @return
     */
    @RequestMapping("/view")
    public String view(int logId,Model model){
        LogVO vo = logService.queryById(logId);

        model.addAttribute("log",vo);
        return "logView";
    }
    /**
     *
     * @param logId
     * @return
     */
    @RequestMapping("/del")
    public String del(int logId){
        logService.deleteLogById(logId);
        return "redirect:/log/findLog";
    }

    /**
     * 返回修改视图页面
     * @param logId
     * @param model
     * @return
     */
    @RequestMapping("/toupdate")
    public String toupdate(int logId,Model model){
        LogVO vo = logService.queryById(logId);

        model.addAttribute("log",vo);
        return "logUpdate";
    }

    /**
     * 修改
     * @param logvo
     * @return
     */
    @RequestMapping("/update")
    public String update(LogVO logvo){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String formatStr = sdf.format(new Date());
        logvo.setLogTime(formatStr);
        logService.updateLog(logvo);
        return "redirect:/log/findLog";
    }

    @RequestMapping("/findLog")
    public String findLog(@RequestParam(defaultValue = "1") int pageIndex, @RequestParam(defaultValue = "")String logPerson, @RequestParam(defaultValue = "")String logTitle, @RequestParam(defaultValue = "")String logType, Model model){
        LogVO logvo = new LogVO();
        logvo.setLogPerson(logPerson);
        logvo.setLogTitle(logTitle);
        logvo.setLogType(logType);

        PageModel pageModel=new PageModel();
        pageModel.setPageIndex(pageIndex);
        int recordCount=logService.findLogCount(logvo);
        pageModel.setRecordCount(recordCount);
        List<LogVO> logs=logService.findLog(logvo,pageModel);
        model.addAttribute("pageModel",pageModel);
        model.addAttribute("logs",logs);
        model.addAttribute("log",logvo);
//        for(UserVO u:users){
//        System.out.println(u);
//          }
        return "logList";
    }

}