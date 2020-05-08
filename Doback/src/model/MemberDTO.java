package model;

public class MemberDTO {
   private int idnum;
   private String id;
   private String pw;
   private String email;
   private String tel;
   private String gender;
   public MemberDTO(String id, String pw, String email, String tel,String gender) {//회원가입
      super();
      this.id = id;
      this.pw = pw;
      this.email = email;
      this.tel = tel;
      this.gender = gender;
   }

   public MemberDTO(String id, String pw) {//로그인
      super();
      this.id = id;
      this.pw = pw;
   }

   public MemberDTO(int idnum, String id, String pw, String email, String tel, String gender) {
      super();
      this.idnum = idnum;
      this.id = id;
      this.pw = pw;
      this.email = email;
      this.tel = tel;
      this.gender = gender;
   }

   public MemberDTO(int idnum, String pw, String email, String tel) {//회원정보수정
      super();
      this.idnum = idnum;
      this.pw = pw;
      this.email = email;
      this.tel = tel;
   }

   public MemberDTO(int idnum) {//회원정보수정
      super();
      this.idnum = idnum;
      
   }
   public int getIdnum() {
      return idnum;
   }

   public void setIdnum(int idnum) {
      this.idnum = idnum;
   }

   public String getId() {
      return id;
   }

   public void setId(String id) {
      this.id = id;
   }

   public String getPw() {
      return pw;
   }

   public void setPw(String pw) {
      this.pw = pw;
   }

   public String getEmail() {
      return email;
   }

   public void setEmail(String email) {
      this.email = email;
   }

   public String getTel() {
      return tel;
   }

   public void setTel(String tel) {
      this.tel = tel;
   }

   public String getGender() {
      return gender;
   }

   public void setGender(String gender) {
      this.gender = gender;
   }
   
   
   
   
}