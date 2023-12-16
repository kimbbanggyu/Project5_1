package com.mycom.myapp;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.UUID;

@Controller
public class BoardController {
    @Autowired
    BoardServiceImpl boardService;

    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String home(){
        return "index1";
    }

    @RequestMapping(value = "/index", method= RequestMethod.GET)
    public String boardlist(Model model){
        model.addAttribute("list",boardService.getBoardList());
        return "index";
    }

    @RequestMapping(value = "/add",method = RequestMethod.GET)
    public String addPost() {return "add";}

    @RequestMapping(value = "/addok",method = RequestMethod.POST)
    public String addPostOK(boardVO vo){

        String fileName=null;
        MultipartFile uploadFile = vo.getUploadFile();
        if (!uploadFile.isEmpty()) {
            String originalFileName = uploadFile.getOriginalFilename();
            String ext = FilenameUtils.getExtension(originalFileName);	//확장자 구하기
            UUID uuid = UUID.randomUUID();	//UUID 구하기
            fileName=uuid+"."+ext;
            try {
                uploadFile.transferTo(new File("C:\\Users\\김영규\\IdeaProjects\\finalPro\\src\\main\\webapp\\resources\\img\\" + fileName));
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        vo.setFileName(fileName);
        boardService.insertBoard(vo);

        return "./index";
    }


    @RequestMapping(value = "/board/deleteok/{id}", method= RequestMethod.GET)
    public String deletePostOK(@PathVariable("id") int id){
        if(boardService.deleteBoard(id) == 0) System.out.println("데이터 삭제 실패");
        else System.out.println("데이터 수정 성공!!!");
        return "redirect:../list";
    }




}
