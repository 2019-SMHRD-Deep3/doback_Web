package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.EducationDTO;
import model.RecordDTO;

@WebServlet("/Receivemfcc")
public class Receivemfcc extends HttpServlet {
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      String result = request.getParameter("result");
    //  String[] result = request.getParameterValues("result");
      String resultUK = request.getParameter("resultUK");
      String resultUS = request.getParameter("resultUS");
      String record = request.getParameter("record");
      String word1 = request.getParameter("word");
    //  String[] resultUK = request.getParameterValues("resultUK");
   //   String[] resultUS = request.getParameterValues("resultUS");
     // String[] record = request.getParameterValues("record");
      
      System.out.println(result);
      System.out.println(resultUK);
      System.out.println(resultUS);
      System.out.println(record);
      System.out.println(word1);
      
     // RecordDTO rdto = new RecordDTO(record, 1);
      
      
      //EducationDTO dto = new EducationDTO(result, resultUK, resultUS, record, word1);
      
      
      
      
      
      
   }

}