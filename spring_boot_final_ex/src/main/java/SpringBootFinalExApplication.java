

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import spring_boot_final.controller.BoardController;
import spring_boot_final.controller.CartController;
import spring_boot_final.controller.MainController;
import spring_boot_final.controller.MemberController;
import spring_boot_final.controller.ProductController;
import spring_boot_final.controller.ReviewController;
import spring_boot_final.dao.IBoardDAO;
import spring_boot_final.dao.ICartDAO;
import spring_boot_final.dao.IMemberDAO;
import spring_boot_final.dao.IProductDAO;
import spring_boot_final.dao.IReviewDAO;

@SpringBootApplication
@ComponentScan(basePackageClasses=MainController.class)
@ComponentScan(basePackageClasses=MemberController.class)
@ComponentScan(basePackageClasses=BoardController.class)
@ComponentScan(basePackageClasses=CartController.class)
@ComponentScan(basePackageClasses=ProductController.class)
@ComponentScan(basePackageClasses=ReviewController.class)

@MapperScan(basePackageClasses=IMemberDAO.class)
@MapperScan(basePackageClasses=IBoardDAO.class)
@MapperScan(basePackageClasses=ICartDAO.class)
@MapperScan(basePackageClasses = IProductDAO.class)
@MapperScan(basePackageClasses = IReviewDAO.class)

public class SpringBootFinalExApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootFinalExApplication.class, args);
	}
}
