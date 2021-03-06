package vn.t3h.t3h_2202;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@EnableTransactionManagement
public class T3h2202Application {

    public static void main(String[] args) {
        SpringApplication.run(T3h2202Application.class, args);
    }

}
