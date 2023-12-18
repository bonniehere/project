package com.constant01.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.constant01.model.MemberDTO;
import com.constant01.service.MemberService;
import com.constant01.service.ProfService;


@Controller
public class ReserveController {
	@Autowired
	MemberService ms;
	@Autowired
	ProfService ps;
	@RequestMapping(value = "home/reserveNew/resvOnline.do", method = RequestMethod.GET)
	// 온라인 예약 사이트로 이동                       기본생성자 호출
	public String resvOnline () {
		
		return "home/reserveNew/resvOnline";
	
	}
	@RequestMapping(value = "home/reserveNew/resvOnline.do", method = RequestMethod.POST)
	// 온라인 예약 사이트로 이동                       기본생성자 호출
	public String resvOnline2 () {
		
		return "home/reserveNew/resvOnline";
	
	}
	
	@RequestMapping(value = "home/reserveNew/stepResvInfo.do", method = RequestMethod.POST)
	// 본인/대리인 예약 사이트로 이동                기본생성자 호출
	public String stepResvin () {
		return "home/reserveNew/stepResvInfo";
	
	}
	@RequestMapping(value = "home/reserveNew/step1Pop.do", method = RequestMethod.GET)
	// 진료과 선택 사이트로 이동                기본생성자 호출
	public String step1() {
		return "home/reserveNew/step1Pop";
	
	}
	@RequestMapping(value = "home/reserveNew/step1Pop.do", method = RequestMethod.POST)
	// 진료과 선택 사이트로 이동                기본생성자 호출
	public String step11() {
		return "home/reserveNew/step1Pop";
	
	}
	@RequestMapping(value = "home/reserveNew/step2Pop.do", method = RequestMethod.GET)
	// 진료과 선택 사이트로 이동                기본생성자 호출
	public String step2() {
		return "home/reserveNew/step2Pop";
	
	}
	@RequestMapping(value = "home/reserveNew/step2Pop.do", method = RequestMethod.POST)
	// 진료과 선택 사이트로 이동                기본생성자 호출
	public String step22() {
		return "home/reserveNew/step2Pop";
	
	}
	@RequestMapping(value = "home/reserveNew/step3Pop.do", method = RequestMethod.GET)
	// 진료과 선택 사이트로 이동                기본생성자 호출
	public String step3() {
		return "home/reserveNew/step3Pop";
	
	}
	@RequestMapping(value = "home/reserveNew/step3Pop.do", method = RequestMethod.POST)
	// 진료과 선택 사이트로 이동                기본생성자 호출
	public String step33() {
		return "home/reserveNew/step3Pop";
	
	}

	
}
