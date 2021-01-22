package aynu.wuhan.vo;

public class TvlVO {
    private int tvlId;
    private String tvlName;
    private String tvlNo;
    private String tvlCity;
    private String tvlType;
    private String tvlPhone;
    private String tvlInfo;
    private String tvlStartTime;
    private String tvlEndTime;



    public String getTvlName() {
        return tvlName;
    }

    public void setTvlName(String tvlName) {
        this.tvlName = tvlName;
    }

    public String getTvlNo() {
        return tvlNo;
    }

    public void setTvlNo(String tvlNo) {
        this.tvlNo = tvlNo;
    }

    public String getTvlCity() {
        return tvlCity;
    }

    public void setTvlCity(String tvlCity) {
        this.tvlCity = tvlCity;
    }

    public String getTvlType() {
        return tvlType;
    }

    public void setTvlType(String tvlType) {
        this.tvlType = tvlType;
    }

    public String getTvlPhone() {
        return tvlPhone;
    }

    public void setTvlPhone(String tvlPhone) {
        this.tvlPhone = tvlPhone;
    }

    public String getTvlInfo() {
        return tvlInfo;
    }

    public void setTvlInfo(String tvlInfo) {
        this.tvlInfo = tvlInfo;
    }

    public String getTvlStartTime() {
        return tvlStartTime;
    }

    public void setTvlStartTime(String tvlStartTime) {
        this.tvlStartTime = tvlStartTime;
    }

    public int getTvlId() {
        return tvlId;
    }

    public void setTvlId(int tvlId) {
        this.tvlId = tvlId;
    }

    public String getTvlEndTime() {
        return tvlEndTime;
    }

    public void setTvlEndTime(String tvlEndTime) {
        this.tvlEndTime = tvlEndTime;
    }

    @Override
    public String toString() {
        return "TvlVO{" +
                "tvlId=" + tvlId +
                ", tvlName='" + tvlName + '\'' +
                ", tvlNo='" + tvlNo + '\'' +
                ", tvlCity='" + tvlCity + '\'' +
                ", tvlType='" + tvlType + '\'' +
                ", tvlPhone='" + tvlPhone + '\'' +
                ", tvlInfo='" + tvlInfo + '\'' +
                ", tvlStartTime='" + tvlStartTime + '\'' +
                ", tvlEndTime='" + tvlEndTime + '\'' +
                '}';
    }
}
