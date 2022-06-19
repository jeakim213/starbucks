package com.clone.starbucks.service;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
@ResponseBody
@Controller
@RequestMapping(value="msr/sceGift/kakaoPay")
public class KakaoPay {
	public String kakaoPay() {
		try {
			URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
			HttpURLConnection serverConect = (HttpURLConnection) url.openConnection();
			serverConect.setRequestMethod("POST");
			serverConect.setRequestProperty("Authorization", "KakaoAK 3979c78b0f234feced0d69d19282e5e2");
			serverConect.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			serverConect.setDoOutput(true);
			String param = "cid=TC0ONETIME&partner_order_id=partner_order_id&partner_user_id=partner_user_id&item_name=초코파이&quantity=1&total_amount=2200&vat_amount=200&tax_free_amount=0&approval_url=http://localhost:8085/starbucks/&fail_url=http://localhost:8085/starbucks/msr/sceGift/gift_step1&cancel_url=http://localhost:8085/starbucks/msr/sceGift/gift_step1";
			OutputStream ops = serverConect.getOutputStream(); //보내는애
			DataOutputStream dops = new DataOutputStream(ops);
			dops.writeBytes(param);
//			dops.flush(); //자기가 가지고있는것을 비운다. 전깃줄에 태워보내므로써 비움.
			dops.close();
			
			int result = serverConect.getResponseCode();
			
			InputStream ips; //받는 애
			if(result==200) {
				ips = serverConect.getInputStream();
			}else {
				ips = serverConect.getErrorStream();
			}
			InputStreamReader isr = new InputStreamReader(ips);
			BufferedReader bfrr = new BufferedReader(isr);
			
			return bfrr.readLine();
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "{\"result\":\"NO\"}";
	}
}
