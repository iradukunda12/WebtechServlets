package org.kevin.assignment3;

public class UserData {
    String name;
    String email;
    String department;
    String Faculty;
    String oode;

    public UserData() {
    }

    public UserData(String name, String email, String department, String faculty, String oode) {
        this.name = name;
        this.email = email;
        this.department = department;
        Faculty = faculty;
        this.oode = oode;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getFaculty() {
        return Faculty;
    }

    public void setFaculty(String faculty) {
        Faculty = faculty;
    }

    public String getOode() {
        return oode;
    }

    public void setOode(String oode) {
        this.oode = oode;
    }
}
