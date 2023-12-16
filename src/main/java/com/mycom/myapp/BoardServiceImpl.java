package com.mycom.myapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardServiceImpl {
    @Autowired
    boardDAO boardDAO;

    public int insertBoard(boardVO vo){return boardDAO.insertBoard(vo);
    }
    public int deleteBoard(int seq) {
        return boardDAO.deleteBoard(seq);
    }

    public boardVO getBoard(int seq) {
        return boardDAO.getBoard(seq);
    }

    public List<boardVO> getBoardList() {
        return boardDAO.getBoardList();
    }
}
