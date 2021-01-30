package com.yp.ssm.service.impl;

import com.yp.ssm.dao.StudentDao;
import com.yp.ssm.domain.Student;
import com.yp.ssm.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {

    //@Aytowired和@Resorce都可以为引用类型进行自动注入
    @Autowired
    private StudentDao studentDao;

    @Override
    public int addStudent(Student student) {
        int nums = studentDao.insertStudent(student);
        return nums;
    }

    @Override
    public List<Student> findStudent(String dept) {
        List<Student> students = studentDao.selectStudent(dept);
        return students;
    }

    @Override
    public Student findOneStudent(Student student) {
        Student student1 = studentDao.selectOneStudent(student.getName(), student.getSno());
        System.out.println(student1);
        return student1;
    }
}
