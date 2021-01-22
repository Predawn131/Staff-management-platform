package aynu.wuhan.vo;

public class UserVO {
    private int userId;
    private String userName;
    private String userPw;
    private String userHobby;
    private String userSex;
    private int userAge;
    private String userInfo;
    private String userCity;
    private String userProvince;
    private int userDisplay;

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

    public String getUserHobby() {
        return userHobby;
    }

    public void setUserHobby(String userHobby) {
        this.userHobby = userHobby;
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

    public String getUserProvince() {
        return userProvince;
    }

    public void setUserProvince(String userProvince) {
        this.userProvince = userProvince;
    }

    public int getUserDisplay() {
        return userDisplay;
    }

    public void setUserDisplay(int userDisplay) {
        this.userDisplay = userDisplay;
    }

    @Override
    public String toString() {
        return "UserVO{" +
                "userId=" + userId +
                ", userName='" + userName + '\'' +
                ", userPw='" + userPw + '\'' +
                ", userHobby='" + userHobby + '\'' +
                ", userSex='" + userSex + '\'' +
                ", userAge=" + userAge +
                ", userInfo='" + userInfo + '\'' +
                ", userCity='" + userCity + '\'' +
                ", userProvince='" + userProvince + '\'' +
                ", userDisplay=" + userDisplay +
                '}';
    }
}
