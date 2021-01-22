package aynu.wuhan.controller;

import aynu.wuhan.service.TvlService;
import aynu.wuhan.utils.PageModel;
import aynu.wuhan.vo.TvlVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/travel")
public class TvlController {
    @Autowired
    TvlService tvlService;

    /**
     * 返回list视图
     * @param model
     * @return
     */
    @RequestMapping("/list")
    public String list(Model model){
        List<TvlVO> list = tvlService.queryAllTvl();
        model.addAttribute("list",list);
        return "tvlList";
    }

    /**
     * 添加视图
     * @return
     */
    @RequestMapping("/toadd")
    public String toadd(){
        return "tvlAdd";
    }

    /**
     * 添加
     * @param vo
     * @return
     */
    @RequestMapping("/add")
    public String add(TvlVO vo){
        tvlService.addTvl(vo);
        return "redirect:/travel/findTvl";
    }

    /**
     * 返回查看视图
     * @param tvlId
     * @param model
     * @return
     */
    @RequestMapping("/view")
    public String view(int tvlId,Model model){
        TvlVO vo = tvlService.queryById(tvlId);
        model.addAttribute("tvl",vo);
        return "tvlView";
    }
    @RequestMapping("/del")
    public String del(int tvlId){
        tvlService.deleteTvlById(tvlId);
        return "redirect:/travel/findTvl";
    }

    /**
     * 返回修改视图
     * @param tvlId
     * @param model
     * @return
     */
    @RequestMapping("/toupdate")
    public String toupdate(int tvlId,Model model){
        TvlVO vo = tvlService.queryById(tvlId);
        model.addAttribute("tvl",vo);
        return "tvlUpdate";
    }

    /**
     * 修改
     * @param vo
     * @return
     */
    @RequestMapping("/update")
    public String update(TvlVO vo){
        tvlService.updateTvl(vo);
        return "redirect:/travel/findTvl";
    }
    @RequestMapping("/findTvl")
    public String findTvl(@RequestParam(defaultValue = "1") int pageIndex, @RequestParam(defaultValue = "")String tvlName, @RequestParam(defaultValue = "")String tvlType, Model model){
        TvlVO tvlvo = new TvlVO();
        tvlvo.setTvlName(tvlName);
        tvlvo.setTvlType(tvlType);

        PageModel pageModel=new PageModel();
        pageModel.setPageIndex(pageIndex);
        int recordCount=tvlService.findTvlCount(tvlvo);
        pageModel.setRecordCount(recordCount);
        List<TvlVO> tvls=tvlService.findTvl(tvlvo,pageModel);
        model.addAttribute("pageModel",pageModel);
        model.addAttribute("tvls",tvls);
//        model.addAttribute("tvl",tvlvo);
//        for(TvlVO u:tvls){
//        System.out.println(u);
//          }
        return "tvlList";
    }
}
