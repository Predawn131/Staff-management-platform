package aynu.wuhan.vo;

public class LogVO {
    private int logId;
    private String logPerson;
    private String logTitle;
    private String logInfo;
    private String logType;
    private String logTime;
    private String logDisplay;

    public int getLogId() {
        return logId;
    }

    public void setLogId(int logId) {
        this.logId = logId;
    }

    public String getLogPerson() {
        return logPerson;
    }

    public void setLogPerson(String logPerson) {
        this.logPerson = logPerson;
    }

    public String getLogTitle() {
        return logTitle;
    }

    public void setLogTitle(String logTitle) {
        this.logTitle = logTitle;
    }

    public String getLogInfo() {
        return logInfo;
    }

    public void setLogInfo(String logInfo) {
        this.logInfo = logInfo;
    }

    public String getLogType() {
        return logType;
    }

    public void setLogType(String logType) {
        this.logType = logType;
    }

    public String getLogTime() {
        return logTime;
    }

    public void setLogTime(String logTime) {
        this.logTime = logTime;
    }

    public String getLogDisplay() {
        return logDisplay;
    }

    public void setLogDisplay(String logDisplay) {
        this.logDisplay = logDisplay;
    }

    @Override
    public String toString() {
        return "LogVO{" +
                "logId=" + logId +
                ", logPerson='" + logPerson + '\'' +
                ", logTitle='" + logTitle + '\'' +
                ", logInfo='" + logInfo + '\'' +
                ", logType='" + logType + '\'' +
                ", logTime='" + logTime + '\'' +
                ", logDisplay='" + logDisplay + '\'' +
                '}';
    }
}
