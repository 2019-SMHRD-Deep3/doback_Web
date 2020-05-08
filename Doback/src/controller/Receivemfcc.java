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
import javax.websocket.Session;

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
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// flask �̿�� �ּ�Ǯ��
		/*
		 * String result = request.getParameter("result"); String resultUK =
		 * request.getParameter("resultUK"); String resultUS =
		 * request.getParameter("resultUS"); String record =
		 * request.getParameter("record"); String word1 = request.getParameter("word");
		 * String id_num1 = request.getParameter("user");
		 */
		/*
		 * System.out.println(id_num1); // double id_num2 = Double.parseDouble(id_num1);
		 * int id_num = Integer.parseInt(id_num1);
		 */
		int cnt = 0;
		// ���ù�


		
		 String result =
		  "27,28,79,37,92";
		  String resultUK =
		  "14,48,28,14,37";
		  String resultUS =
		  "86,52,72,86,63";
		  String record =
		  "./recorddata/511.wav,./recorddata/5112.wav,./recorddata/5113.wav,./recorddata/Bridget.wav,./recorddata/japan.wav,";
		  String word1 =
		  "sick,thick,chic,she wears thick and chic shoes eventhough she is sick,i can see many trees thick with leaves around the park"
		  ;
		 
		String[] result_arr = result.split(",");
		String[] resultUK_arr = resultUK.split(",");
		String[] resultUS_arr = resultUS.split(",");
		String[] record_arr = record.split(",");
		String[] word_arr = word1.split(",");
		String[] arr = new String[5];
		
		System.out.println(result_arr[0]);
		System.out.println(result_arr[1]);
		System.out.println(result_arr[2]);
		System.out.println(result_arr[3]);
		System.out.println(result_arr[4]);

		// EducationDTO dto = new EducationDTO(result, resultUK, resultUS, record,
		// word1);

		// VODVOCA���̺��� VOCANUM ��������

//      System.out.println(Arrays.toString(word_arr));
		VocaDAO vocadao = new VocaDAO();
		int vocanum0 = vocadao.findVocaNum(word_arr[0]);
		int vocanum1 = vocadao.findVocaNum(word_arr[1]);
		int vocanum2 = vocadao.findVocaNum(word_arr[2]);
		int vocanum3 = vocadao.findVocaNum(word_arr[3]);
		int vocanum4 = vocadao.findVocaNum(word_arr[4]);
		/*
		 * System.out.println(word_arr[0]); System.out.println(word_arr[1]);
		 * System.out.println(word_arr[2]); System.out.println(word_arr[3]);
		 * System.out.println(word_arr[4]);
		 * 
		 * System.out.println(word1); System.out.println("0--"+vocanum0);
		 * System.out.println("1--"+vocanum1); System.out.println("2--"+vocanum2);
		 * System.out.println("3--"+vocanum3); System.out.println("4--"+vocanum4);
		 */

		// ������ ���絵
		double word_change1 = Double.parseDouble(result_arr[0]);
		double word_change2 = Double.parseDouble(result_arr[1]);
		double word_change3 = Double.parseDouble(result_arr[2]);
		double word_change4 = Double.parseDouble(result_arr[3]);
		double word_change5 = Double.parseDouble(result_arr[4]);

//     System.out.println(word_change1);
//     System.out.println(word_change2);
//     System.out.println(word_change3);
//     System.out.println(word_change4);
//     System.out.println(word_change5);

		// ���̵� �ѹ� ��������
		 HttpSession session = request.getSession();
		 MemberDTO id_dto = (MemberDTO) session.getAttribute("info");
		//int id_num = id_dto.getIdnum();

		int id_num = 1; // �ϴ� ���Ƿ� ����

		// YNDRECORD �߰�
		RecordDAO recorddao = new RecordDAO();
        System.out.println("���ڵ� ���� : "+record_arr[0]+"/"+vocanum0+"/"+id_num);
        
		cnt = recorddao.insert(record_arr[0], vocanum0, id_num);
		to_string("���ڵ�0", cnt);
		cnt = recorddao.insert(record_arr[1], vocanum1, id_num);
		to_string("���ڵ�1", cnt);
		cnt = recorddao.insert(record_arr[2], vocanum2, id_num);
		to_string("���ڵ�2", cnt);
		cnt = recorddao.insert(record_arr[3], vocanum3, id_num);
		to_string("���ڵ�3", cnt);
		cnt = recorddao.insert(record_arr[4], vocanum4, id_num);
		to_string("���ڵ�4", cnt);

		// YNDRECORD RECORDNUM select
		int recordnum0 = recorddao.select(record_arr[0]);
		int recordnum1 = recorddao.select(record_arr[1]);
		int recordnum2 = recorddao.select(record_arr[2]);
		int recordnum3 = recorddao.select(record_arr[3]);
		int recordnum4 = recorddao.select(record_arr[4]);
	

		// YNDEDUCATION insert
		EducationDAO educationdao = new EducationDAO();

		double result_sum = word_change1 + word_change2 + word_change3 + word_change4 + word_change5;
		int result_mean = (int)(result_sum / 5);
		int resultUK_mean = (int)((Double.parseDouble(resultUK_arr[0]) + Double.parseDouble(resultUK_arr[1])
				+ Double.parseDouble(resultUK_arr[2]) + Double.parseDouble(resultUK_arr[3])
				+ Double.parseDouble(resultUK_arr[4])) / 5);
		int resultUS_mean = (int)((Double.parseDouble(resultUS_arr[0]) + Double.parseDouble(resultUS_arr[1])
				+ Double.parseDouble(resultUS_arr[2]) + Double.parseDouble(resultUS_arr[3])
				+ Double.parseDouble(resultUS_arr[4])) / 5);
		cnt = educationdao.insertdata((int)word_change1, (int)word_change2,
				(int)word_change3, (int)word_change4, (int)word_change5,
				result_mean, resultUK_mean, resultUS_mean, recordnum0, id_num);
		to_string("���� ���絵 ����",cnt);
		
		/*
		 * HttpSession session = request.getSession(); session.setAttribute("sick",
		 * recordnum0 ); session.setAttribute("thick", recordnum1 );
		 * session.setAttribute("chic", recordnum2 ); session.setAttribute("Sen1",
		 * recordnum3 ); session.setAttribute("Sen2", recordnum4 );
		 * session.setAttribute("mean", result_mean ); session.setAttribute("UK",
		 * resultUK_mean ); session.setAttribute("US", resultUS_mean );
		 */
	}

	public void to_string(String word, int cnt) {
		if (cnt > 0) {
			System.out.println(word + "����!");
		} else {
			System.out.println(word + "���Сڡڡڡڡڡ�");
		}
	}

}