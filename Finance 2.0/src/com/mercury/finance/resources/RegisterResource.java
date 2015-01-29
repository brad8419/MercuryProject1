package com.mercury.finance.resources;

import java.net.URI;
import java.util.List;

import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.UriBuilder;
import javax.ws.rs.core.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.mercury.finance.model.Stock;
import com.mercury.finance.model.Trader;
import com.mercury.finance.service.AdminService;
import com.mercury.finance.service.RegisterService;

@Component
@Path("/register")
public class RegisterResource {
	@Autowired
	private RegisterService rs;
	@Autowired
	private AdminService as;
	
//	@GET
//	@Produces({MediaType.TEXT_HTML})
//	public String getTraders(){
//		ArrayList<Trader> traders = (ArrayList<Trader>)rs.findAllTrader();
//		StringBuilder infor = new StringBuilder();
//		infor.append(traders.get(0).getTid() + " " + traders.get(0).getFname());
//		return infor.toString();
//	}
	@GET
	@Path("/userCheck")
	@Produces({MediaType.TEXT_HTML})
	public String userExist(){
		Stock stock = new Stock();
		stock.setSname("BOA");
		as.addStock(stock);
		return "OM";
		//return Boolean.toString(rs.emailExist("hello"));
	}
	
	@POST
	@Path("/mainPage")
	@Produces({MediaType.TEXT_HTML})
	public String mainPage(
		@FormParam("username") String user,
		@FormParam("password") String pw) {
		return Boolean.toString(rs.verifyUser(user, pw));
	}
	
	@POST
	@Path("/register")
	public Response register(
			@FormParam("firstname") String fname,
			@FormParam("lastname") String lname,
			@FormParam("email") String email,
			@FormParam("password") String pw){
		rs.createAccount(fname, lname, email, "peter", pw);
		URI uri = UriBuilder.fromUri("http://localhost:8080/Finance/").queryParam("emailsend", "yes").build();
		return Response.seeOther(uri).build();
	}
	
	@GET
	@Path("/verify")
	public Response verify(@QueryParam("pw") String pw, @QueryParam("username") String username){
		boolean success = rs.verifyUser(username, pw);
		URI uri = UriBuilder.fromUri("http://localhost:8080/Finance/").queryParam("isSuccess", Boolean.toString(success)).build();
		return Response.seeOther(uri).build();
	}
//	@GET
//	@Path("/getJson")
//	@Produces({MediaType.APPLICATION_JSON})
//	public List<Trader> getTrader(){
//		return rs.getTrader();
//	}

}
