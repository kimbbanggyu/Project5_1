package com.mycom.myapp;


import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class BoardRowMapper implements RowMapper<boardVO> {
    public boardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
        boardVO vo = new boardVO();
        vo.setId(rs.getInt("id"));
        vo.setPlayGroup(rs.getString("playGroup"));
        vo.setComent(rs.getString("coment"));
        vo.setName(rs.getString("name"));
        vo.setTeamName(rs.getString("teamName"));
        vo.setFileName(rs.getString("playerImg"));
        vo.setPosition(rs.getString("position"));
        vo.setSnsId(rs.getString("snsId"));
        vo.setHeight(rs.getInt("height"));
        vo.setWeight(rs.getInt("weight"));
        vo.setSong(rs.getString("song"));
        vo.setBirthday(rs.getString("birthday"));
        vo.setAwards(rs.getString("awards"));
        System.out.println(vo.getName());
        System.out.println(vo.getPlayerImg());
        return vo;
    }

}
