package rest;


import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;


@Path("/admin")
public class adminlogin {
	
	@GET
	@Path("/hello")
	@Produces(MediaType.TEXT_HTML)
	public String sayHello() {
		return "<h1>Hello Admin!</h1>";
	}
}