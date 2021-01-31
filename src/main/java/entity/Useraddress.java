package entity;

/**
 * @Description TODO
 * @Author 王树阳
 * @Date 2021/1/30 22:00
 */
public class Useraddress {
    private String username;
    private String detail;
    private String phone;
    private String gdPhone;
    private String email;
    private int pid;

    public Useraddress() {
    }

    public Useraddress(String username, String detail, String phone, String gdPhone, String email, int pid) {
        this.username = username;
        this.detail = detail;
        this.phone = phone;
        this.gdPhone = gdPhone;
        this.email = email;
        this.pid = pid;
    }

    /**
     * 获取
     * @return username
     */
    public String getUsername() {
        return username;
    }

    /**
     * 设置
     * @param username
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * 获取
     * @return detail
     */
    public String getDetail() {
        return detail;
    }

    /**
     * 设置
     * @param detail
     */
    public void setDetail(String detail) {
        this.detail = detail;
    }

    /**
     * 获取
     * @return phone
     */
    public String getPhone() {
        return phone;
    }

    /**
     * 设置
     * @param phone
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }

    /**
     * 获取
     * @return gdPhone
     */
    public String getGdPhone() {
        return gdPhone;
    }

    /**
     * 设置
     * @param gdPhone
     */
    public void setGdPhone(String gdPhone) {
        this.gdPhone = gdPhone;
    }

    /**
     * 获取
     * @return email
     */
    public String getEmail() {
        return email;
    }

    /**
     * 设置
     * @param email
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * 获取
     * @return pid
     */
    public int getPid() {
        return pid;
    }

    /**
     * 设置
     * @param pid
     */
    public void setPid(int pid) {
        this.pid = pid;
    }

    public String toString() {
        return "useraddress{username = " + username + ", detail = " + detail + ", phone = " + phone + ", gdPhone = " + gdPhone + ", email = " + email + ", pid = " + pid + "}";
    }
}
