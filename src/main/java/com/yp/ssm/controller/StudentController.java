package com.yp.ssm.controller;

import com.yp.ssm.domain.Student;
import com.yp.ssm.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/student") //@RequestMapping在类的上面，其value表示的是url的公共模块
public class StudentController {

    @Autowired
    private StudentService service;

    //注册学生
    @RequestMapping("/addStudent.do")
    public ModelAndView addStudent(Student student){
        String tips = "注册失败";
        ModelAndView mv = new ModelAndView();
        //调用service处理student
        int nums = service.addStudent(student);
        if(nums>0){
            //注册成功
            tips = student.getName()+"注册成功";
        }
        //添加结果数据
        mv.addObject("tips", tips);
        //指定结果界面
        mv.setViewName("result");
        return mv;
    }

    //登录学生
    @ResponseBody //将结果提交到服务器上
    @RequestMapping("/login.do")
    public Student selectOneStudent(Student student){
        //调用service方法
        System.out.println(student);
        Student oneStudent = service.findOneStudent(student);
        return  oneStudent;
    }
}
