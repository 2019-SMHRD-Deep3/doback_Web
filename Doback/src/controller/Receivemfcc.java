package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.EducationDAO;
import model.EducationDTO;
import model.MemberDTO;
import model.RecordDAO;
import model.RecordDTO;
import model.VocaDAO;

import model.EducationDTO;
import model.RecordDTO;

@WebServlet("/Receivemfcc")
public class Receivemfcc extends HttpServlet {
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      String result = request.getParameter("result");
      String resultUK = request.getParameter("resultUK");
      String resultUS = request.getParameter("resultUS");
      String record = request.getParameter("record");
      String word1 = request.getParameter("word");
      result = "15.761704742908478,8.093658834695816,58.001744747161865,99.81673955917358,73.49960207939148,";
      resultUK = "2.601749822497368,99.9747097492218,99.99576807022095,1.5991542488336563,1.5164146199822426,";
      resultUS = "97.39824533462524,0.025291391648352146,0.004226776218274608,98.40084314346313,98.48358035087585,";
      record = "./recorddata/511.wav,./recorddata/5112.wav,./recorddata/5113.wav,./recorddata/Bridget.wav,./recorddata/japan.wav,";
      word1 = "sick,thick,chic,she wear thick and chic shoes eventhough she is sick,i can see many trees thick with leaves around the park";

      String[] result_arr = result.split(",");
      String[] resultUK_arr = resultUK.split(",");
      String[] resultUS_arr = resultUS.split(",");
      String[] record_arr = record.split(",");
      String[] word_arr = word1.split(",");
      
      System.out.println(result);
      System.out.println(resultUK);
      System.out.println(resultUS);
      System.out.println(record);
      System.out.println(word1);
      
      //EducationDTO dto = new EducationDTO(result, resultUK, resultUS, record, word1);

      //VODVOCA테이블에서 VOCANUM 가져오기
      
//      System.out.println(Arrays.toString(word_arr));
      VocaDAO vocadao = new VocaDAO();
      int vocanum0 = vocadao.findVocaNum(word_arr[0]);
      int vocanum1 = vocadao.findVocaNum(word_arr[1]);
      int vocanum2 = vocadao.findVocaNum(word_arr[2]);
      int vocanum3 = vocadao.findVocaNum(word_arr[3]);
      int vocanum4 = vocadao.findVocaNum(word_arr[4]);
      
      //아이디 넘버 가져오기
      //HttpSession session = request.getSession();
      //MemberDTO id_dto = (MemberDTO) session.getAttribute("info");
      //int id_num = id_dto.getIdnum();
      
      int id_num = 1; //일단 임의로 설정
      
      //YNDRECORD 추가
      RecordDAO recorddao = new RecordDAO();
      recorddao.insert(record_arr[0], vocanum0, id_num);
      recorddao.insert(record_arr[1], vocanum1, id_num);
      recorddao.insert(record_arr[2], vocanum2, id_num);
      recorddao.insert(record_arr[3], vocanum3, id_num);
      recorddao.insert(record_arr[4], vocanum4, id_num);
      
      //YNDRECORD RECORDNUM select
      int recordnum0 = recorddao.select(record_arr[0]);
      int recordnum1 = recorddao.select(record_arr[1]);
      int recordnum2 = recorddao.select(record_arr[2]);
      int recordnum3 = recorddao.select(record_arr[3]);
      int recordnum4 = recorddao.select(record_arr[4]);
      
      //YNDEDUCATION insert
      EducationDAO educationdao = new EducationDAO();
      int result_sum = Integer.parseInt(result_arr[0])+Integer.parseInt(result_arr[1])+Integer.parseInt(result_arr[2])+Integer.parseInt(result_arr[3])+Integer.parseInt(result_arr[4]);
      int resultUK_mean = (Integer.parseInt(resultUK_arr[0])+Integer.parseInt(resultUK_arr[1])+Integer.parseInt(resultUK_arr[2])+Integer.parseInt(resultUK_arr[3])+Integer.parseInt(resultUK_arr[4]))/5;
      int resultUS_mean = (Integer.parseInt(resultUS_arr[0])+Integer.parseInt(resultUS_arr[1])+Integer.parseInt(resultUS_arr[2])+Integer.parseInt(resultUS_arr[3])+Integer.parseInt(resultUS_arr[4]))/5;
      educationdao.insertdata(Integer.parseInt(result_arr[0]), 
				    		  Integer.parseInt(result_arr[1]), 
				    		  Integer.parseInt(result_arr[2]), 
				    		  Integer.parseInt(result_arr[3]), 
				    		  Integer.parseInt(result_arr[4]), 
				    		  result_sum, 
				    		  resultUK_mean, 
				    		  resultUS_mean, 
				    		  recordnum0);
      
      
      
      
      
      
      
      
   }

}