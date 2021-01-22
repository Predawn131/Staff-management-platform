package aynu.wuhan.vo;

public class DeptVO {
    private int deptId;
    private String deptName;
    private String deptPhone;
    private String deptManager;

    public int getDeptId() {
        return deptId;
    }

    public void setDeptId(int deptId) {
        this.deptId = deptId;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public String getDeptPhone() {
        return deptPhone;
    }

    public void setDeptPhone(String deptPhone) {
        this.deptPhone = deptPhone;
    }

    public String getDeptManager() {
        return deptManager;
    }

    public void setDeptManager(String deptManager) {
        this.deptManager = deptManager;
    }

    @Override
    public String toString() {
        return "DeptVO{" +
                "deptId=" + deptId +
                ", deptName='" + deptName + '\'' +
                ", deptPhone='" + deptPhone + '\'' +
                ", deptManager='" + deptManager + '\'' +
                '}';
    }
}
