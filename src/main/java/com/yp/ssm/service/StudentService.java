package com.yp.ssm.service;

import com.yp.ssm.domain.Student;

import java.util.List;

public interface StudentService {
    int addStudent(Student student);
    List<Student> findStudent(String dept);
    Student findOneStudent(Student student);
}
