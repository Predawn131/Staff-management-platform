package aynu.wuhan.service.impl;

import aynu.wuhan.dao.TvlDao;
import aynu.wuhan.service.TvlService;
import aynu.wuhan.utils.PageModel;
import aynu.wuhan.vo.TvlVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class TvlServiceImpl implements TvlService {

    @Autowired
    TvlDao dao;

    @Override
    public int addTvl(TvlVO vo) {
        return dao.addTvl(vo);
    }

    @Override
    public int deleteTvlById(int id) {
        return dao.deleteTvlById(id);
    }

    @Override
    public int updateTvl(TvlVO vo) {
        return dao.updateTvl(vo);
    }

    @Override
    public TvlVO queryById(int id) {
        return dao.queryById(id);
    }

    @Override
    public List<TvlVO> queryAllTvl() {
        return dao.queryAllTvl();
    }

    @Override
    public int findTvlCount(TvlVO tvlvo) {
        return dao.selectTvlCount(tvlvo);
    }

    @Override
    public List<TvlVO> findTvl(TvlVO tvlvo, PageModel pageModel) {
        Map map=new HashMap();
        map.put("tvl",tvlvo);
        map.put("pageModel",pageModel);
        return dao.selectTvl(map);
    }
}
