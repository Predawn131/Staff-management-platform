package aynu.wuhan.vo;

public class UserVO {
    private int userId;
    private String userName;
    private String userPw;
    private String userEmail;
    private String userSex;
    private int userAge;
    private String userInfo;
    private String userCity;
    private int userDisplay;
    private int power;
    private String userRelname;

    public int getPower() {
        return power;
    }

    public void setPower(int power) {
        this.power = power;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPw() {
        return userPw;
    }

    public void setUserPw(String userPw) {
        this.userPw = userPw;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserSex() {
        return userSex;
    }

    public void setUserSex(String userSex) {
        this.userSex = userSex;
    }

    public int getUserAge() {
        return userAge;
    }

    public void setUserAge(int userAge) {
        this.userAge = userAge;
    }

    public String getUserInfo() {
        return userInfo;
    }

    public void setUserInfo(String userInfo) {
        this.userInfo = userInfo;
    }

    public String getUserCity() {
        return userCity;
    }

    public void setUserCity(String userCity) {
        this.userCity = userCity;
    }

    public int getUserDisplay() {
        return userDisplay;
    }

    public void setUserDisplay(int userDisplay) {
        this.userDisplay = userDisplay;
    }

    public String getUserRelname() {
        return userRelname;
    }

    public void setUserRelname(String userRelname) {
        this.userRelname = userRelname;
    }

    @Override
    public String toString() {
        return "UserVO{" +
                "userId=" + userId +
                ", userName='" + userName + '\'' +
                ", userPw='" + userPw + '\'' +
                ", userEmail='" + userEmail + '\'' +
                ", userSex='" + userSex + '\'' +
                ", userAge=" + userAge +
                ", userInfo='" + userInfo + '\'' +
                ", userCity='" + userCity + '\'' +
                ", userDisplay=" + userDisplay +
                ", userRelname=" + userRelname +
                ", power='" + power + '\''+
                '}';
    }
}
