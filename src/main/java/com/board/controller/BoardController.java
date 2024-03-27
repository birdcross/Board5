package com.board.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.board.domain.BoardVo;
import com.board.mapper.BoardMapper;
import com.board.menus.domain.MenuVo;
import com.board.menus.mapper.MenuMapper;
import com.board.user.domain.UserVo;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Controller
@RequestMapping("/Board")
public class BoardController {
	
	@Autowired
	private BoardMapper boardMapper;
	@Autowired
	private MenuMapper menuMapper;
	// /Board/List?menu_id = MENU01
	@RequestMapping("/List")
	public ModelAndView list(MenuVo menuVo) {
		log.info("menuVo:{}",menuVo);
		//메뉴목록
		List<MenuVo> menuList = menuMapper.getMenuList();
		
		//게시글 목록
		List<BoardVo> boardList = boardMapper.getBoardList(menuVo);
		System.out.println(boardList);
		
		String menu_id = menuVo.getMenu_id();
		ModelAndView mv = new ModelAndView();
		mv.addObject("menu_id", menu_id);
		mv.addObject("menuList", menuList);
		mv.addObject("boardList", boardList);
		mv.setViewName("board/list");
		return mv;
	}
	// /Board/WriteForm?menu_id=MENU01
	@RequestMapping("/WriteForm")
	public ModelAndView writeForm(MenuVo menuVo){
		
		String menu_id = menuVo.getMenu_id();
		ModelAndView mv = new ModelAndView();
		mv.addObject("menu_id", menu_id);
		mv.setViewName("board/write");	
		return mv;
	}
	// /Board/Write
	// menu_id =MENU01, title = 입력값, writer = 입력값, content = 입력값
	@RequestMapping("/Write")
	public ModelAndView write(BoardVo boardVo){
		// 넘어온 값 Board저장
		boardMapper.insertBoard( boardVo );
		
		String menu_id = boardVo.getMenu_id();
		ModelAndView   mv   =  new  ModelAndView();
		mv.setViewName("redirect:/Board/List?menu_id=" + menu_id);
		return   mv;
	}
	@RequestMapping("/View")
	public ModelAndView view(BoardVo boardVo) {
		// user_id = ? db조회
		HashMap<String, Object> map = boardMapper.getBoard(boardVo);
		//System.out.println(vo);
		log.info("vo : {}", map);
		ModelAndView mv = new ModelAndView();
		mv.addObject("vo", map);
		mv.setViewName("board/view");
		return mv; 
	}
}
















