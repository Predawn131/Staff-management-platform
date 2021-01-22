package aynu.wuhan.vo;

public class EmpVO {
    private int empId;
    private String empName;
    private String empDept;
    private String empSex;
    private String empBirthday;
    private String empEdu;
    private String empAddress;
    private String empPhone;

    public int getEmpId() {
        return empId;
    }

    public void setEmpId(int empId) {
        this.empId = empId;
    }

    public String getEmpName() {
        return empName;
    }

    public void setEmpName(String empName) {
        this.empName = empName;
    }

    public String getEmpDept() {
        return empDept;
    }

    public void setEmpDept(String empDept) {
        this.empDept = empDept;
    }

    public String getEmpSex() {
        return empSex;
    }

    public void setEmpSex(String empSex) {
        this.empSex = empSex;
    }

    public String getEmpBirthday() {
        return empBirthday;
    }

    public void setEmpBirthday(String empBirthday) {
        this.empBirthday = empBirthday;
    }

    public String getEmpEdu() {
        return empEdu;
    }

    public void setEmpEdu(String empEdu) {
        this.empEdu = empEdu;
    }

    public String getEmpAddress() {
        return empAddress;
    }

    public void setEmpAddress(String empAddress) {
        this.empAddress = empAddress;
    }

    public String getEmpPhone() {
        return empPhone;
    }

    public void setEmpPhone(String empPhone) {
        this.empPhone = empPhone;
    }

    @Override
    public String toString() {
        return "EmpVO{" +
                "empId=" + empId +
                ", empName='" + empName + '\'' +
                ", empDept='" + empDept + '\'' +
                ", empSex='" + empSex + '\'' +
                ", empBirthday='" + empBirthday + '\'' +
                ", empEdu='" + empEdu + '\'' +
                ", empAddress='" + empAddress + '\'' +
                ", empPhone='" + empPhone + '\'' +
                '}';
    }
}
