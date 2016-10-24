package com.study.ssm.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.study.ssm.model.Student;
import com.study.ssm.service.StudentService;
@Controller  
@RequestMapping("/student") 
public class StudentController {
    @Autowired
    private StudentService studentService;
    @RequestMapping("/showInfo")
    public String showInfo(ModelMap modelMap){
        Student stu = studentService.selectByPrimaryKey(1);
        modelMap.put("student", stu);
        return "/student/showInfo";
    }
}
