package aynu.wuhan.dao;

import aynu.wuhan.vo.TvlVO;

import java.util.List;
import java.util.Map;

public interface TvlDao {
    //增
    int addTvl(TvlVO vo);
    //删
    int deleteTvlById(int id);
    //改
    int updateTvl(TvlVO vo);
    //查
    TvlVO queryById(int id);


    List<TvlVO> queryAllTvl();

    List<TvlVO> selectTvl(Map map);

    int selectTvlCount(TvlVO tvlvo);
}
