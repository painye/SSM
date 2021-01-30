package com.yp.ssm.dao;

import com.yp.ssm.domain.Student;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface StudentDao {
    int insertStudent(Student student);
    List<Student> selectStudent(String dept);
    Student selectOneStudent(@Param("name") String name, @Param("sno") String sno);
}
