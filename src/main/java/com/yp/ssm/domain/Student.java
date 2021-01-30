package com.yp.ssm.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.ibatis.type.Alias;

@Data  //lombok jar包下的一个注解用来自动生成Setter, Getter
@NoArgsConstructor
@AllArgsConstructor
@Alias("Student")   //别名Student
public class Student {
    private String name;
    private String sno;
    private String sex;
    private String dept;
    private Integer age;
}
