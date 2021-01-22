package aynu.wuhan.service;

import aynu.wuhan.utils.PageModel;
import aynu.wuhan.vo.TvlVO;

import java.util.List;

public interface TvlService {
    //增
    int addTvl(TvlVO vo);
    //删
    int deleteTvlById(int id);
    //改
    int updateTvl(TvlVO vo);
    //查
    TvlVO queryById(int id);


    List<TvlVO> queryAllTvl();

    int findTvlCount(TvlVO tvlvo);

    List<TvlVO> findTvl(TvlVO tvlvo, PageModel pageModel);

}
