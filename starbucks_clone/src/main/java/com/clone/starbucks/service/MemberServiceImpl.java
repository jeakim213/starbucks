package com.clone.starbucks.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.clone.starbucks.DAO.IMemberDAO;
import com.clone.starbucks.DTO.MemberDTO;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@Service
public class MemberServiceImpl implements IMemberService{
			@Autowired(required=false) private IMemberDAO memberDao;
			@Autowired private HttpSession session;
			
			@Override
			public String loginProc(MemberDTO member) {
				if(member.getId() == null || member.getId().isEmpty())
					return "아이디를 입력하세요.";
				
				if(member.getPw() == null || member.getPw().isEmpty())
					return "비밀번호를 입력하세요.";
					
				MemberDTO check = memberDao.loginProc(member);
				
				BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
				
				if(check != null && encoder.matches(member.getPw(), check.getPw())) {
					session.setAttribute("id", check.getId());
					return "로그인 성공";
				}else {
					return "아이디 또는 비밀번호를 확인하세요.";
				}
			}
				//https://developers.kakao.com/docs/latest/ko/kakaologin/rest-api#refresh-token
				public String getAccessToken (String code) {
					String accessToken = "";
					String reqURL = "https://kauth.kakao.com/oauth/token";
					try {
						String sendMessage = "grant_type=authorization_code" 
								+ "&client_id=ab059dba3e0aaba211e0b759d7ed4e3b"
								+"&redirect_uri=http://localhost:8085/starbucks/login/login/kakaoLogin" 
								+ "&code=" + code;
					
						URL url = new URL(reqURL); // POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송
						HttpURLConnection conn = (HttpURLConnection)url.openConnection();
						conn.setRequestMethod("POST"); //POST 요청을 위해 기본값 false에서 setDoOutput을 true로 변경
						conn.setDoOutput(true); // POST 메소드를 이용해서 데이터를 전달하기 위한 설정
						
						// 기본 outputStream을 통해 문자열로 처리할 수 있는 OutPutStreamWriter 변환 후 처리속도를 빠르게 하기위한
						// BufferedWriter로 변환해서 사용한다.
						BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
						bw.write(sendMessage); 
						bw.flush();
						
						int responseCode = conn.getResponseCode(); // 결과 코드가 200이라면 성공
						System.out.println("responseCode : " + responseCode);
						
						// 요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
						BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
						String line = "", result = "";
						while ((line = br.readLine()) != null) {
							result += line;
						}

						System.out.println("response body : " + result);
						System.out.println("result.split : " + result.split(","));
						
						//Gson 라이브러리에 포함된 클래스로 JSON파싱 객체 생성
						JsonElement element = JsonParser.parseString(result);
						accessToken = element.getAsJsonObject().get("access_token").getAsString();
						System.out.println("access_token : " + accessToken);
						
						br.close();
						bw.close();
					} catch (IOException e) {
						e.printStackTrace();
					} 
					return accessToken;
				}
				//https://developers.kakao.com/docs/latest/ko/kakaologin/rest-api#req-user-info
						public HashMap<String, Object> getUserInfo (String accessToken) {
						    HashMap<String, Object> userInfo = new HashMap<String, Object>();
						    String reqURL = "https://kapi.kakao.com/v2/user/me";
						    
						    try {
						        URL url = new URL(reqURL);
						        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
						        conn.setRequestMethod("POST");
						        
						        // 요청에 필요한 Header에 포함될 내용
						        conn.setRequestProperty("Authorization", "Bearer " + accessToken);
						        
						        
						        int responseCode = conn.getResponseCode();
						        System.out.println("responseCode : " + responseCode);
						        BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
						        String line = "";
						        String result = "";
						        while ((line = br.readLine()) != null) {
						            result += line;
						        }
						        System.out.println("response body : " + result);
						        
						        JsonElement element = JsonParser.parseString(result);
						        JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();
						        JsonObject profile = kakao_account.getAsJsonObject().get("profile").getAsJsonObject();
						        String nickname = profile.getAsJsonObject().get("nickname").getAsString();
						        
						        userInfo.put("nickname", nickname);
						        
						    } catch (IOException e) {
						        e.printStackTrace();
						    }
						    return userInfo;
						}
						
						// https://developers.kakao.com/docs/latest/ko/kakaologin/rest-api#logout
						public void logout(String accessToken) {
						    String reqURL = "https://kapi.kakao.com/v1/user/logout";
						    
						    try {
						        URL url = new URL(reqURL); // URL 객체 생성
						        HttpURLConnection conn = (HttpURLConnection) url.openConnection(); 
						        conn.setRequestMethod("POST"); // 메소드 설정
						        
						        // 요청 정보 헤더에 담기.
						        conn.setRequestProperty("Authorization", "Bearer " + accessToken);
						        // 응답 코드 확인
						        int responseCode = conn.getResponseCode();
						        System.out.println("responseCode : " + responseCode);
						    }catch (Exception e) {
								e.printStackTrace();
							}
						}
						@Override
						public String isExistId(String id) {
							if(id == null || id.isEmpty())
								return "아이디를 입력하세요.";
							
							MemberDTO check = memberDao.selectId(id);
							if(check == null)
								return "사용 가능한 아이디입니다.";
							return "중복 아이디 입니다.";
							
						}
	
	}
